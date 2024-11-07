class ResizeManager {

  static create() {
    return new ResizeManager();
  }

  constructor() {
    this.windowResizeCallbacks = {};
    this.resizeObserver = new ResizeObserver(this.handleElementResize.bind(this));
    this.elementObservations = {};
    this.debouncedWindowResize = this.debounce(this.handleWindowResize.bind(this), 200);
  }

  debounce(func, wait, immediate) {
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

  handleWindowResize() {
    Object.values(this.windowResizeCallbacks).forEach(callback => callback());
  }

  handleElementResize(entries) {
    for (let entry of entries) {
      const callback = this.elementObservations[entry.target]?.callback;
      if (callback) callback(entry);
    }
  }

  add(target, callback) {
    if (target === window) {
      const callbackName = callback.name || 'Anonymous function';
      this.windowResizeCallbacks[callbackName] = callback;
      window.addEventListener('resize', this.debouncedWindowResize);
    } else if (target instanceof Element) {
      this.elementObservations[target] = { element: target, callback };
      this.resizeObserver.observe(target);
    } else {
      console.error('Invalid target for resize observation');
    }
  }

  remove(target, callback) {
    if (target === window) {
      const callbackName = callback.name || 'Anonymous function';
      if (this.windowResizeCallbacks[callbackName]) {
        delete this.windowResizeCallbacks[callbackName];
        if (Object.keys(this.windowResizeCallbacks).length === 0) {
          window.removeEventListener('resize', this.debouncedWindowResize);
        }
      }
    } else if (target instanceof Element && this.elementObservations[target]) {
      if (this.elementObservations[target].callback === callback) {
        this.resizeObserver.unobserve(target);
        delete this.elementObservations[target];
      }
    } else {
      console.warn('Element not found in observed list or callback mismatch');
    }
  }

  destroy() {
    window.removeEventListener('resize', this.debouncedWindowResize);
    this.windowResizeCallbacks = {};
    this.resizeObserver.disconnect();
    this.elementObservations = {};
  }
}

export default ResizeManager;
