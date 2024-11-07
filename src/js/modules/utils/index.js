import ResizeManager from "./ResizeManager";
import { gsap, ScrollToPlugin } from "gsap/all";
gsap.registerPlugin(ScrollToPlugin);

const resizeManager = new ResizeManager();

const detectBrowser = () => {
  const userAgent = window.navigator.userAgent;
  const htmlDocument = document.documentElement;
  const htmlDocumentClass = htmlDocument.classList;

  if (userAgent.indexOf('Edge') > -1) {
    htmlDocumentClass.add('edge');
  } else if (userAgent.includes('Safari') && !userAgent.includes('Chrome')) {
    htmlDocumentClass.add('safari');
  } else if (userAgent.includes('Firefox')) {
    htmlDocumentClass.add('firefox');
  } else if (userAgent.includes('MSIE ') || userAgent.includes('Trident/')) {
    htmlDocumentClass.add('ie');
  }
}

const detectMac = () => /Mac|iPod|iPhone|iPad/.test(navigator.userAgent);

const detectIOSmobile = () => {
  const userAgent = navigator.userAgent;

  if (/Android/i.test(userAgent)) {
    return false;
  } else if (/iPhone|iPad|iPod/i.test(userAgent)) {
    return true;
  } else {
    return null;
  }
}

const debounce = (func, wait, immediate) => {
  let timeout;

  return function executedFunction() {
    const context = this;
    const args = arguments;

    const later = function () {
      timeout = null;
      if (!immediate) func.apply(context, args);
    };

    const callNow = immediate && !timeout;

    clearTimeout(timeout);

    timeout = setTimeout(later, wait);

    if (callNow) func.apply(context, args);
  };
}

const throttle = (func, wait) => {
  let timeout = null;
  let previous = 0;

  return function () {
    const now = Date.now();
    const remaining = wait - (now - previous);

    if (remaining <= 0 || remaining > wait) {
      if (timeout) {
        clearTimeout(timeout);
        timeout = null;
      }
      previous = now;
      func.apply(this, arguments);
    } else if (!timeout) {
      timeout = setTimeout(() => {
        previous = Date.now();
        timeout = null;
        func.apply(this, arguments);
      }, remaining);
    }
  };
}

const createIntObserver = (elements, callback, settings) => {

  const observerSettings = settings ? settings : {
    root: null,
    rootMargin: `${window.innerHeight}px`,
  }

  const observer = new IntersectionObserver((entries, observer) => {
    entries.forEach(entry => {
      if (entry.isIntersecting) {
        callback(entry.target, observer);
      }
    });
  }, observerSettings);

  if (elements instanceof HTMLCollection || elements instanceof NodeList) {
    for (const element of elements) {
      observer.observe(element);
    }
  } else {
    observer.observe(elements);
  }
}

const lazyLoadBg = () => {
  const lazyBg = [...document.querySelectorAll('[data-lazy-bg]')];

  lazyBg.length && lazyBg.forEach(el => {
    ScrollTrigger.create({
      trigger: el,
      once: true,
      onEnter: () => {
        el.classList.add('loaded');
      }
    })
  })
}


// Function to calculate the target position
const getTargetTop = (element) => {
  if (element.hash) {
    // Handle ID-based target or 'body' for '#main'
    const target = (element.hash === '#main') ? document.body : document.querySelector(element.hash);
    return target ? target.offsetTop : 0;
  } else if (element.dataset.scrollto) {
    // Handle special strings or query selector
    const scrollto = element.dataset.scrollto;
    switch (scrollto) {
      case 'bottom':
        return document.documentElement.scrollHeight - window.innerHeight;
      case 'top':
        return 0;
      default:
        const target = document.querySelector(scrollto);
        return target ? target.offsetTop : 0;
    }
  }
  return 0;
};

// Function to perform the scroll using GSAP's scrollTo plugin
const performScroll = (targetTop) => {
  gsap.to(window, { duration: 1, scrollTo: { y: targetTop, autoKill: false } });
};

// Event listener for all clicks on the document
document.addEventListener('click', function (e) {

  // Check for scrollable link or element
  const scrollElement = e.target.closest('a[href^="#"], [data-scrollto]');
  if (scrollElement) {
    e.preventDefault();
    const targetTop = getTargetTop(scrollElement);
    performScroll(targetTop);
  }

  // Check for 'go back' element
  if (e.target.closest('[data-goback]')) {
    e.preventDefault();
    window.history.back();
    return; // Return early since we've handled this event
  }
});


const copyLink = () => {
  const buttons = [...document.querySelectorAll('[data-copy-link]')];

  buttons.forEach(button => {
    const url = button.dataset.copyLink || window.location.href;
    const popup = button.parentNode.querySelector('.link-copy');

    popup && popup.addEventListener('click', () => {
      popup.classList.remove('active');
    });

    button.addEventListener('click', (e) => {
      e.preventDefault();

      if (navigator.clipboard) {
        // Modern approach
        navigator.clipboard.writeText(url)
          .then(() => {
            popup.classList.add('active');
            setTimeout(() => popup.classList.remove('active'), 3000);
          })
          .catch(err => {
            console.error('Error in copying text: ', err);
          });
      } else {
        // Fallback for older browsers
        const textArea = document.createElement('textarea');
        textArea.style.position = 'absolute';
        textArea.style.left = '-9999px';
        textArea.value = url;
        document.body.appendChild(textArea);
        textArea.select();
        try {
          document.execCommand('copy');
          popup.classList.add('active');
          setTimeout(() => popup.classList.remove('active'), 3000);
        } catch (err) {
          console.error('Fallback: Oops, unable to copy', err);
        }
        document.body.removeChild(textArea);
      }
    });
  });
}

export { detectBrowser, detectMac, detectIOSmobile, debounce, throttle, lazyLoadBg, createIntObserver, performScroll, resizeManager, copyLink }