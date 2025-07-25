import createProductData from "./modules/components/product-data";
import Swiper from "swiper/bundle";

const section = document.querySelector("section.single_product");

const quantity = section?.querySelector("[data-quantity-wrapper]");
const sliderWrapper = section?.querySelector(".woocommerce-gallery");
const pinWrapper = section?.querySelector("[data-pin-parrent]");

const handleQuantityAmount = () => {
  const buttons = quantity.querySelectorAll("button[data-quantity-button]");
  const input = quantity.querySelector("input[data-quantity-input]");

  const handleChange = (e) => {
    const [minus, plus] = buttons;
    const { max, min } = input;
    const newValue = Number(input.value);

    min && (minus.disabled = Number(min) == newValue);
    max && (plus.disabled = Number(max) == newValue);
  };
  const handleClick = (e) => {
    const value = Number(e.target.dataset.quantityButton);
    const current = Number(input.value);
    const newValue = current + value;

    input.value = newValue;
    handleChange();
  };

  input && buttons.forEach((b) => b.addEventListener("click", handleClick));
  input && input.addEventListener("change", handleChange);
};

const thumbsGallarySlider = () => {
  const lg = sliderWrapper.querySelector(".swiper.lg");
  const sm = sliderWrapper.querySelector(".swiper.sm");

  const prev = sliderWrapper.querySelector("button.prev");
  const next = sliderWrapper.querySelector("button.next");

  const swiper = new Swiper(sm, {
    modules: [Thumbs],
    spaceBetween: 10,
    slidesPerView: 4,
    freeMode: true,
    watchSlidesProgress: true,
    breakpoints: {
      1024: {
        slidesPerView: "auto",
      },
    },
  });
 const swiper_LG =  new Swiper(lg, {
    spaceBetween: 10,
    modules: [Thumbs],
    thumbs: { swiper },
    navigation: {
      nextEl: next,
      prevEl: prev,
    },
  });


  window.lgSwiper = swiper_LG;
  window.smSwiper = swiper;
};

const pinBuyButton = () => {
  const form = pinWrapper.querySelector("[data-product-form-data]");
  if (!form) return;
  const pin = form.querySelector(".custom-woo-data");
  let sto = null;

  const refresh = () => {
    sto && clearTimeout(sto);
    sto = setTimeout(() => {
      form.style.minHeight = `${pin.offsetHeight}px`;
      pin.style.maxWidth = `${form.offsetWidth}px`;
      setTimeout(() => pinned.refresh(), 100);
    }, 100);
  };

  const pinned = ScrollTrigger.create({
    trigger: pinWrapper,
    endTrigger: form,
    start: "top 100000px",
    end: `bottom bottom`,
    // markers: true,
    onToggle: (self) => {
      pin.classList.toggle("pinned", self.isActive);
    },
  });
  const resize = new ResizeObserver(refresh);
  resize.observe(pin);
  resize.observe(form);
};

quantity && handleQuantityAmount();
sliderWrapper && thumbsGallarySlider();
section && createProductData(section);
pinWrapper && pinBuyButton();
