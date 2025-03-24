export default function createProductData(section) {
  const form = document.querySelector("[data-product-form-data]");
  if (!form) return;
  const variations = JSON.parse(form.dataset.product_variations);

  console.log(variations);
}
