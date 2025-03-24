import createProductData from "./modules/components/product-data";

const section = document.querySelector("section.single_product");

const quantity = section?.querySelector("[data-quantity-wrapper]");
const sliderWrapper = section?.querySelector(".woocommerce-gallery");

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

  const swiper = new Swiper(sm, {
    modules: [Thumbs],
    spaceBetween: 10,
    slidesPerView: "auto",
    freeMode: true,
    watchSlidesProgress: true,
  });
  new Swiper(lg, {
    spaceBetween: 10,
    modules: [Thumbs],
    thumbs: { swiper },
  });
};

quantity && handleQuantityAmount();
sliderWrapper && thumbsGallarySlider();
section && createProductData(section);
