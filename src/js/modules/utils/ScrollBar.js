import { gsap, Observer } from "gsap/all";
import { resizeManager } from "./index";
gsap.registerPlugin(Observer);

export class ScrollBar {

  static create(options) {
    return new ScrollBar(options);
  }

  constructor(options) {

    this.initialized = false;
    this.isActive = false;

    const {
      scroller = this._getScroller(options?.scroller),
      draggable = true,
      isMobile = 1024,
      direction = 'y',
      scrollbarClass = null,
      preventParentScroll = false,
    } = options || {};


    this.bodyScroll = !options?.scroller;
    this.preventParentScroll = preventParentScroll;
    this.scroller = scroller;
    this.scrollbarClass = scrollbarClass;
    this.wrapper = this._getWrapper();
    this.isDraggable = draggable !== false;
    this.isMobile = isMobile;
    this.direction = direction;
    this.posY = this.scroller.scrollTop;
    this._update = this._update.bind(this);
    this.start = this.start.bind(this);
    this.stop = this.stop.bind(this);

    resizeManager.add(this.wrapper, this._onResize);
    resizeManager.add(this.scroller, this._onResize);
    this._onResize();
  }

  _onResize = () => {
    if (window.innerWidth > this.isMobile) {
      this._init();
    } else {
      this._destroy();
    }
  }

  _init() {

    this.scrollerHeight = this.scroller.scrollHeight;
    this.wrapperHeight = (this.bodyScroll) ? window.innerHeight : this.wrapper.clientHeight;

    if (this.scrollerHeight <= this.wrapperHeight) {
      this._destroy();
      return;
    }

    if (!this.bar) {
      this._createElement();
    }

    this.trackHeight = this.wrapperHeight / (this.scrollerHeight / this.wrapperHeight);
    this.realScrollLength = this.scrollerHeight - this.wrapperHeight;
    this.realTrackPath = this.bar.clientHeight - this.trackHeight;
    this.track.style.height = `${this.trackHeight}px`;
    this.topOffset = this.bar.offsetTop;
    this.setTrackY = gsap.quickSetter(this.track, "y", "px");
    this.preventParentScroll && this.scroller.setAttribute('data-lenis-prevent', 'true');

    this.initialized = true;
    this._dragHandle();
    this.start();
  }

  _createElement() {
    this.bar = document.createElement('div');
    this.track = document.createElement('div');
    this.bar.classList.add(`scroll-bar`);
    this.scrollbarClass && this.bar.classList.add(this.scrollbarClass);

    this.bar.style.position = this.bodyScroll ? 'fixed' : 'absolute';
    this.track.classList.add('scroll-track');
    this.bar.appendChild(this.track);
    this.wrapper.appendChild(this.bar);
  }

  _update() {

    if (!this.initialized || !this.isActive) return;

    if (!this.isDragging) {
      this.trackY = this.realTrackPath * (this.scroller.scrollTop / this.realScrollLength);
    }

    this.setTrackY(this.trackY);
  }

  _dragHandle() {

    if (!this.isDraggable) {
      return;
    }

    if (!this.dragObserver) {
      this.dragObserver = Observer.create({
        target: this.track,
        axis: this.direction,
        onPress: (self) => {
          this.bar.classList.add('is-dragging');
          this.wrapper.style.cursor = "grabbing";
          this.scroller.style.pointerEvents = "none";
          this.scroller.style.userSelect = "none";
          this.pointerOnTrack = self.event.offsetY + this.topOffset;
        },
        onRelease: () => {
          this.bar.classList.remove('is-dragging');
          this.wrapper.style.cursor = "auto";
          this.scroller.style.pointerEvents = "auto";
          this.scroller.style.userSelect = "auto";
        },
        onDragStart: () => {
          this.isDragging = true;
        },
        onDragEnd: () => {
          this.isDragging = false;
        },
        onDrag: (self) => {
          this.trackY = Math.max(0, Math.min(self.event.clientY - this.pointerOnTrack, this.realTrackPath));
          this.posY = Math.max(0, Math.min(this.trackY * this.realScrollLength / this.realTrackPath, this.realScrollLength));
          this.scroller.scrollTop = this.posY;
        }
      });
    }
  }

  start() {
    if (this.isActive) return;

    this.bar && this.bar.classList.add('visible');
    this.isVisible = true;
    this.isActive = true;
    this.dragObserver && this.dragObserver.enable();
    gsap.ticker.add(this._update);
  }

  stop() {
    if (!this.isActive) return;

    this.bar && this.bar.classList.remove('visible');
    this.isVisible = false;
    this.isActive = false;
    this.dragObserver && this.dragObserver.disable();
    gsap.ticker.remove(this._update);
  }

  _destroy() {

    if (!this.initialized) return;

    this.stop();

    if (this.dragObserver) {
      this.dragObserver.kill();
      this.dragObserver = null;
    }

    if (this.bar) {
      this.bar.remove();
      this.bar = null;
    }

    this.initialized = false;
  }

  _getScroller(scroller) {

    switch (typeof scroller) {
      case 'object':
        return scroller;
      case 'string':
        return document.querySelector(scroller);
      default:
        return document.scrollingElement
          || document.documentElement
          || document.body.parentNode
          || document.body;
    }
  }

  _getWrapper() {

    if (this.bodyScroll) {
      return (this.scroller === document.body && document.documentElement)
        ? document.documentElement
        : this.scroller;
    } else {
      return this.scroller.parentNode;
    }
  }
}
