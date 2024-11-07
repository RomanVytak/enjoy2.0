import { gsap } from 'gsap';
import ScrollToPlugin from 'gsap/ScrollToPlugin';
gsap.registerPlugin(ScrollToPlugin);

export default class ArticleNavigation {
  constructor(contentContainer, navContainer, fontTag = null, minFontSize = 24) {
    this.content = contentContainer;
    this.navWrapper = navContainer;
    this.nav = navContainer.querySelector('[data-nav-list]');
    this.templateButton = this.nav.querySelector('[data-button-template]') || null;
    this.headingButtonMap = new Map();
    this.activeHeading = null;
    this.fontTag = fontTag;
    this.minFontSize = minFontSize;
    this.headerHeight = document.querySelector('header')?.offsetHeight || 0;
  }

  getHeadings() {
    // If fontTag is specified, prioritize using it
    if (this.fontTag) {
      return [...this.content.querySelectorAll(this.fontTag)];
    }

    // If fontTag is not specified, find elements based on minFontSize
    const textElements = [...this.content.querySelectorAll('p, h1, h2, h3, h4, h5, h6')];
    return textElements.filter(el => {
      const computedStyle = window.getComputedStyle(el);
      const fontSize = parseFloat(computedStyle.fontSize);
      const parent = el.parentElement;
      if (parent && parseFloat(window.getComputedStyle(parent).fontSize) > this.minFontSize) {
        return false;
      }
      return fontSize > this.minFontSize;
    });
  }


  updateActiveHeading() {
    let closest = null;
    let closestDistance = Infinity;
    const headings = [...this.headingButtonMap.keys()];

    headings.forEach((candidate) => {
      const boundingRect = candidate.getBoundingClientRect();
      const distance = Math.abs(boundingRect.top);
      if (distance < closestDistance) {
        closest = candidate;
        closestDistance = distance;
      }
    });

    if (this.activeHeading !== closest) {

      this.headingButtonMap.forEach((button, heading) => {
        button.classList.remove('active');
        button.classList.remove('visited');

        if (heading === closest) {
          button.classList.add('active');
        } else if (headings.indexOf(heading) < headings.indexOf(closest)) {
          button.classList.add('visited');
        }
      });

      this.activeHeading = closest;

      if (closest) {
        const activeButton = this.headingButtonMap.get(closest);
        activeButton.classList.add('active');

        // Scroll the navigation block to the active button
        activeButton.scrollIntoView({
          behavior: 'smooth',
          block: 'nearest'
        });
      }
    }
  }


  createNavigation() {
    const headingsElements = [...this.content.querySelectorAll(this.fontTag)];
    const largeFontElements = this.getHeadings();

    // Combine and deduplicate headings
    const combinedHeadings = [...new Set([...headingsElements, ...largeFontElements])];

    // Sort headings based on their position in the document
    const sortedHeadings = combinedHeadings.sort((a, b) => {
      if (a === b) return 0;
      const position = a.compareDocumentPosition(b);
      if (position & Node.DOCUMENT_POSITION_PRECEDING) {
        return 1;
      } else if (position & Node.DOCUMENT_POSITION_FOLLOWING) {
        return -1;
      }
      return 0;
    });

    if (!sortedHeadings.length) return;

    // Clear existing buttons except the template
    this.nav.innerHTML = '';
    this.nav.appendChild(this.templateButton);

    const fragment = document.createDocumentFragment();

    sortedHeadings.forEach((heading) => {
      const buttonClone = this.templateButton.cloneNode(true);
      const span = buttonClone.querySelector('[data-button-text]');
      span.textContent = heading.textContent;

      this.headingButtonMap.set(heading, buttonClone);

      buttonClone.addEventListener('click', () => {
        this.performScroll(heading);
      });

      fragment.appendChild(buttonClone);
    });

    this.nav.appendChild(fragment);

    // Remove the initial template button from the DOM
    this.templateButton.remove();

    this.navWrapper.classList.add('visible');
    window.addEventListener('scroll', this.updateActiveHeading.bind(this));
  }

  performScroll(targetElement) {
    gsap.to(window, {
      scrollTo: {
        y: targetElement.offsetTop - this.headerHeight * 1.5,
        autoKill: true
      },
      duration: 0.6
    });
  }


  removeNavigation() {
    this.nav.innerHTML = '';
    window.removeEventListener('scroll', this.updateActiveHeading.bind(this));
  }

  initialize() {

    if (!this.templateButton) {
      console.error("Missing template button with data-button-template attribute");
      return;
    }

    if (!this.templateButton.querySelector('[data-button-text]')) {
      console.error("Missing data-button-text element in button template");
      return;
    }

    this.createNavigation();
  }
}


