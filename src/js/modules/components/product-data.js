const _SIZE = "data-size";
const _MATERIAL = "data-material";
const _COLOR = "data-color";

const _SIZES = {
  height: "Висота",
  width: "Ширина",
  length: "Глибина",
};

export default function createProductData(section) {
  const form = document.querySelector("[data-product-form-data]");
  if (!form) return;
  const variations = JSON.parse(form.dataset.product_variations);

  console.log(variations);

  const product_name = form.dataset.productName;

  const input_size = form.querySelector("input[name='attribute_pa_rozmiry']");
  const input_material = form.querySelector(
    "input[name='attribute_pa_material']"
  );
  const input_quantity = form.querySelector("input[name='quantity']");
  const input_color = form.querySelector("input[name='custom_data[color]']");
  const input_variation_id = form.querySelector("input[name='variation_id']");
  const input_product_id = form.querySelector("input[name='product_id']");

  const ajaxButton = form.querySelector("[data-sent-ajax]");

  const wrapper = document.querySelector("[data-product-ajax]");
  const wrapper_materials = wrapper.querySelector("[data-materials]");
  const material_name = wrapper.querySelector("[data-material-name]");
  const material_params = wrapper.querySelector("[data-material-params]");

  const wrapper_colors = wrapper.querySelector("[data-colors]");
  const color_name = wrapper.querySelector("[data-color-name]");

  const wrapper_sizes = wrapper.querySelector("[data-sizes]");
  const size_params = wrapper.querySelector("[data-size-params]");

  const wrapper_price = form.querySelector("[data-custom-price]");

  const onAdded = onAddedToCart();

  const selectedData = { color: null, size: null, material: null };

  let data_colors = [];
  let data_sizes = [];
  let data_materials = [];
  let selectedVariation = null;

  const createMaterialParams = (material) => {
    if (!material || !material?.options) {
      material_params.innerHTML = "";
      material_params.classList.add("hidden");
      return;
    }
    material_params.classList.remove("hidden");
    const html = material.options.map((option) => {
      const img = option.ico.url;
      return `<div class="param" title="${option.description}">
            ${img ? `<img src="${img}" alt="${option.description}">` : ""}
      </div>`;
    });
    material_params.innerHTML = html.join("");
  };
  const createSizesParams = (size) => {
    const dimensions = size ? size?.dimensions : null;

    if (!size || !dimensions) {
      size_params.innerHTML = "";
      return;
    }

    const html = [];

    Object.entries(dimensions).forEach(([key, value]) => {
      if (value) {
        const type = _SIZES[key];
        html.push(
          `<div class="param ${key}" title="${type} ${value} см">${type} ${value} см</div>`
        );
      }
    });
    size_params.innerHTML = html.join("");

  };

  const createMaterials = (materials) => {
    wrapper_materials.innerHTML = "";

    const html = materials.map((material) => {
      const img = material.image.url;
      const name = material.name;
      const id = material.id;
      return `<div class="material${
        selectedData.material == id ? " active" : ""
      }" ${_MATERIAL}="${id}" title="${name}">
        ${img ? `<img src="${img}" alt="${name}">` : ""}
      </div>`;
    });
    wrapper_materials.innerHTML = html.join("");
  };
  const createColors = (colors) => {
    wrapper_colors.innerHTML = "";
    const html = colors.map((color) => {
      const img = color.image;
      const name = color.name;
      return `<div class="color${
        selectedData.color == color.id ? " active" : ""
      }" ${_COLOR}="${color.id}"  title="${name}">
        ${img ? `<img src="${img}" alt="${name}">` : ""}
      </div>`;
    });
    wrapper_colors.innerHTML = html.join("");
  };

  const createSizes = (sizes) => {
    wrapper_sizes.innerHTML = "";
    const html = sizes.map((size) => {
      const id = size.id;
      const name = id.toUpperCase();

      return `<div class="size${
        selectedData.size == id ? " active" : ""
      }" ${_SIZE}="${id}"  title="Розмір ${name}">
        ${name}
      </div>`;
    });
    wrapper_sizes.innerHTML = html.join("");
  };

  const updateProductData = () => {
    let filteredVariations = [...variations];
    data_colors = [];
    data_sizes = [];
    data_materials = [];

    if (selectedData.color) {
      filteredVariations = filteredVariations.filter((variation) => {
        const colors = Object.values(variation.material_colors);
        return colors.some((color) => color.id == selectedData.color);
      });
    }
    if (selectedData.size && selectedData.material && selectedData.color) {
      filteredVariations = filteredVariations.filter(
        (variation) =>
          variation.attributes.attribute_pa_rozmiry == selectedData.size
      );
    }
    if (selectedData.material) {
      filteredVariations = filteredVariations.filter(
        (variation) => variation.material_details.id == selectedData.material
      );
    }

    filteredVariations.forEach((variation) => {
      const material = variation.material_details;
      const colors = Object.values(variation.material_colors);
      const size = variation.attributes.attribute_pa_rozmiry;

      if (material) {
        if (!data_materials.some((m) => m?.id === material.id)) {
          material.options = variation?.material_options ?? null;
          data_materials.push(material);
        }
      }
      if (size) {
        if (!data_sizes.some((m) => m?.id === size)) {
          const data = {
            id: size,
            dimensions: variation?.dimensions ?? null,
          };
          data_sizes.push(data);
        }
      }
      if (colors.length) {
        colors.forEach((color) => {
          if (!data_colors.some((c) => c?.id === color.id)) {
            data_colors.push(color);
          }
        });
      }
    });

    if (Object.keys(selectedData).every((key) => selectedData[key])) {
      const variation = filteredVariations[0];
      console.log("variation", variation);
      input_variation_id.value = variation.variation_id;
      input_product_id.value = variation.variation_id;
      ajaxButton.disabled = false;

      wrapper_price.innerHTML = `<span class='price'>${variation.display_price} </span><span class='currency'>грн</span>`;
      selectedVariation = variation;
    } else {
      input_variation_id.value = "";
      input_product_id.value = "";
      wrapper_price.innerHTML = "";
      ajaxButton.disabled = true;
      selectedVariation = null;
    }

    createMaterials(data_materials);
    createColors(data_colors);
    createSizes(data_sizes);
  };

  const handleSelectData = (e) => {
    const element = e.target;
    [_SIZE, _MATERIAL, _COLOR].forEach((attr) => {
      const value = element.hasAttribute(attr)
        ? element.getAttribute(attr)
        : null;

      if (!value) return;
      const isActive = element.classList.contains("active");

      switch (attr) {
        case _SIZE:
          selectedData.size = isActive ? null : value;
          input_size.value = isActive ? "" : value;
          createSizesParams(
            !isActive ? data_sizes.find((m) => m.id == value) : null
          );
          break;
        case _MATERIAL:
          selectedData.material = isActive ? null : value;
          material_name.innerHTML = isActive ? "" : element.title;
          input_material.value = isActive ? "" : value;
          createMaterialParams(
            !isActive ? data_materials.find((m) => m.id == value) : null
          );
          break;
        case _COLOR:
          selectedData.color = isActive ? null : value;
          color_name.innerHTML = isActive ? "" : element.title;
          input_color.value = isActive ? "" : value;
          break;
      }
      updateProductData();
    });
  };

  const handleAddToCart = () => {
    // URL WooCommerce для AJAX-запиту
    const ajaxUrl = wc_add_to_cart_params.wc_ajax_url.replace(
      "%%endpoint%%",
      "add_to_cart"
    );

    const formData = new FormData(form);

    ajaxButton.disabled = true;

    // Відправляємо AJAX-запит
    fetch(ajaxUrl, {
      method: "POST",
      body: formData,
    })
      .then((response) => response.json())
      .then((data) => {
        console.log("data", data);

        onAdded &&
          onAdded(
            `${product_name} - ${selectedVariation.attributes.attribute_pa_rozmiry.toUpperCase()}, ${
              selectedVariation.material_details.name
            }`
          );
        ajaxButton.disabled = false;

        if (data && data.fragments) {
          $.each(data.fragments, function (key, value) {
            console.log(key);
            $(key).replaceWith(value);
          });
        }
      })
      .catch((error) => {
        ajaxButton.disabled = false;

        console.error("Request failed:", error);
      });
  };

  wrapper.addEventListener("click", handleSelectData);
  ajaxButton && ajaxButton.addEventListener("click", handleAddToCart);
  updateProductData();
}

function onAddedToCart() {
  const cart = document.querySelector(".handle-added-msg");

  if (!cart) return null;
  const wrapper = cart.querySelector(".wrapper");

  const updatePositions = () => {
    const children = [...wrapper.children].reverse();
    const coff = window.innerWidth > 1024 ? 6 : 4;

    if (!children.length) return;
    const height = children[0].clientHeight;

    children.forEach((child, id) => {
      child.style.bottom = id
        ? `calc(${height * id}px + ${coff * id}px)`
        : "0px";
    });
  };

  const handleCloseMsg = (el) => {
    el.classList.remove("s");
    setTimeout(() => {
      el.remove();
      setTimeout(updatePositions, 10);
    }, 300);
  };

  const onAdded = (title) => {
    let sto = null;

    const div = document.createElement("div");
    div.classList.add("product");
    div.title = title;
    div.innerHTML = `<p>Товар <span>${title}</span> доданий у кошик</p><button class="icon_close close" title="Сховати"></button>`;

    const onClick = () => {
      sto && clearTimeout(sto);
      div.removeEventListener("click", onClick);
      handleCloseMsg(div);
    };

    wrapper.prepend(div);
    setTimeout(updatePositions, 10);
    sto = setTimeout(onClick, 5000);
    div.addEventListener("click", onClick);
    setTimeout(() => div.classList.add("s"), 100);
  };

  return onAdded;
}
