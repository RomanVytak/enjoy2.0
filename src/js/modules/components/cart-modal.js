import { startScroll, stopScroll } from "../utils/scroll-config";

export default function toggleCartPopup() {
  const cart = document.querySelector(".cart_modal");

  if (!cart) return;

  const buttons = document.querySelectorAll("[data-toggle-cart]");

  const closeCart = (e) => {
    if (!cart.contains(e.target) && !e.target.closest("[data-toggle-cart]")) {
      toggleCart();
    }
  };

  const toggleCart = () => {
    const isOpened = cart.classList.toggle("active");

    if (isOpened) {
      stopScroll(768);
      document.addEventListener("click", closeCart);
    } else {
      startScroll(768);
      document.removeEventListener("click", closeCart);
    }
  };

  buttons.forEach((button) => button.addEventListener("click", toggleCart));
}
