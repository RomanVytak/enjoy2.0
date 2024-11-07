export default class PopupManager {
  constructor(popup, openTriggers = [], closeTriggers = [], onOpen = () => { }, onClose = () => { }) {
    this.popup = popup;
    this.openTriggers = this._NODesToArray(openTriggers);
    this.closeTriggers = this._NODesToArray(closeTriggers);
    // this.scrollLock = ()=> {};
    this.onOpen = onOpen;
    this.onClose = onClose;

    this.attachTriggerEvents();
  }

  static create(popup, openTriggers, closeTriggers, onOpen, onClose) {
    return new PopupManager(popup, openTriggers, closeTriggers, onOpen, onClose);
  }

  open(...args) {
    this.popup.classList.add('active');
    this.attachPopupEvents();
    // this.scrollLock.on();
    this.onOpen(...args);
  }

  close(...args) {
    this.popup.classList.remove('active');
    this.detachPopupEvents();
    // this.scrollLock.off();
    this.onClose(...args);
  }

  attachTriggerEvents() {
    this.openTriggers.forEach(trigger => trigger.addEventListener('click', () => this.open()));
    this.closeTriggers.forEach(trigger => trigger.addEventListener('click', () => this.close()));
  }

  attachPopupEvents() {
    document.addEventListener('keydown', this.handleEscape.bind(this));
  }

  detachPopupEvents() {
    document.removeEventListener('keydown', this.handleEscape.bind(this));
  }

  handleEscape(e) {
    if (e.key === "Escape") this.close();
  }

  _NODesToArray(elements) {
    if (NodeList.prototype.isPrototypeOf(elements) || HTMLCollection.prototype.isPrototypeOf(elements)) {
      return Array.from(elements);
    }
    return Array.isArray(elements) ? elements : [elements];
  }
}
