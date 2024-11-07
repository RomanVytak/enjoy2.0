
export default class SuperMenu {
  static create(header, toggleButton) {
    return new SuperMenu(header, toggleButton);
  }

  constructor(header, toggleButton) {
    this.header = header;
    this.menuToggle = toggleButton;
    this.scrollLock = () => { };
    this.addEventListeners();
  }

  addEventListeners() {
    this.menuToggle.addEventListener('click', () => {
      if (this.header.classList.contains('supermenu-opened')) {
        this.closeMenu();
      } else {
        this.openMenu();
      }
    });
  }

  openMenu() {
    this.header.classList.add('supermenu-opened');
    // this.scrollLock.on();
  }

  closeMenu() {
    this.header.classList.remove('supermenu-opened');
    // this.scrollLock.off();
  }
}
