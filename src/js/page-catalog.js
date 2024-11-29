import Swiper from "swiper/bundle";

function initProductImagesSlider() {
  const products = document.querySelectorAll(".product-item");

  const initSlider = (product) => {
    const slider = product.querySelector("[data-product-images]");
    const prev = product.querySelector("button.prev");
    const next = product.querySelector("button.next");

    const swiper = new Swiper(slider, {
      slidesPerView: 1,
      loop: true,
      mousewheel: {
        forceToAxis: true,
      },
      navigation: {
        nextEl: next,
        prevEl: prev,
      },
    });
  };

  products.forEach(initSlider);
}
initProductImagesSlider();
