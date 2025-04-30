const _SIZE = "data-size";
const _MATERIAL = "data-material";
const _COLOR = "data-color";
const _SERT = "data-sert";

const _SIZES = {
  height: "Висота %% см",
  width: "Ширина %% см",
  length: "Глибина %% см",
  volume: "Об'єм %% л",
};

export default function createProductData(section) {
  const form = document.querySelector("[data-product-form-data]");
  if (!form) return;
  const variations = JSON.parse(form.dataset.product_variations);
  const isProduct = form.dataset.productType === "product";
  const header = document.querySelector("header");

  console.log(variations);

  const product_name = form.dataset.productName;

  const input_size = form.querySelector("input[name='attribute_pa_rozmiry']");
  const input_material = form.querySelector(
    "input[name='attribute_pa_material']"
  );
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
  const size_description = wrapper.querySelector("[data-size-description]");
  const size_params = wrapper.querySelector("[data-size-params]");

  const wrapper_price = form.querySelector("[data-custom-price]");

  const wrapper_sertyfikat = wrapper.querySelector("[data-sertyfikat]");

  const onAdded = onAddedToCart();

  const defaultVariation = [...variations].find((v) => v?.is_default);

  const selectedData = { color: null, size: null, material: null };
  const htmlElements = {};

  let data_colors = [];
  let data_sizes = [];
  let data_materials = [];
  let selectedVariation = null;

  form.removeAttribute("data-product_variations");

  const createMaterialParams = (material) => {
    if (!material || !material?.options) {
      // material_params.innerHTML = "";
      material_params.classList.add("hidden");
      return;
    }
    material_params.classList.remove("hidden");
    const html = material.options.map((option) => {
      const img = option.ico.url;
      const description = option.description;
      return `<div class="param">
        ${
          description
            ? `<span class="title"><span class='d'>${description}</span></span>`
            : ""
        }
            ${img ? `<img src="${img}" alt="${option.description}">` : ""}
      </div>`;
    });
    material_params.innerHTML = html.join("");

    const icons = material_params.querySelectorAll("img");
    const texts = material_params.querySelectorAll(".title");

    icons.forEach((icon) => {
      const parent = icon.closest(".param");
      const tooltip = parent.querySelector(".title");
      icon.addEventListener("click", (e) => {
        parent.classList.add("active");
      });

      icon.addEventListener("mouseenter", () => {
        handleTooltipHover(tooltip, icon);
      });
    });
    texts.forEach((text) => {
      text.addEventListener("click", (e) => {
        const parent = text.closest(".param");
        parent.classList.remove("active");
      });
    });
  };
  const createMaterialInfo = (isActive, element) => {
    if (isActive) {
      material_name.innerHTML = "";
      return;
    }
    const title = element.title;
    const description = element.dataset.description;

    material_name.innerHTML = `
    ${title}
    ${
      description
        ? `<span class="info">
          <span class="icon"></span><span class="text"><span class='d'>${description}</span></span></span>`
        : ""
    }
    `;

    if (!description) return;
    const icon = material_name.querySelector(".icon");
    const tooltip = material_name.querySelector(".text");

    icon.addEventListener("click", (e) => tooltip.classList.add("active"));
    tooltip.addEventListener("click", (e) =>
      tooltip.classList.remove("active")
    );

    icon.addEventListener("mouseenter", () => {
      handleTooltipHover(tooltip, icon);
    });
  };
  const createSizesParams = (size) => {
    const dimensions = size ? size?.dimensions : null;
    const description = size?.description;

    size_description.innerHTML = description
      ? `<span class="d">${description}</span>`
      : "";

    if (!size || !dimensions) {
      size_params.innerHTML = "";
      size_description.innerHTML = "";
      return;
    }

    const html = [];

    Object.entries(dimensions).forEach(([key, value]) => {
      if (value) {
        const type = _SIZES[key];
        html.push(
          `<div class="param ${key}">${type.replace("%%", value)}</div>`
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
      const description = material?.description ?? "";
      const id = material.id;

      return `<div class="material${
        selectedData.material == id ? " active" : ""
      }" ${_MATERIAL}="${id}" title="${name}" data-description="${description}">
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
    console.log("sizes", sizes);
    wrapper_sizes.innerHTML = "";
    const html = sizes.map((size) => {
      const id = size.id;
      const name = id.toUpperCase();

      return `<div
        class="size${selectedData.size == id ? " active" : ""}"
        ${_SIZE}="${id}"
        title="Розмір ${name}"
        >
        ${name}
      </div>`;
    });
    wrapper_sizes.innerHTML = html.join("");
  };
  const createSertyfikat = (arr) => {
    wrapper_sertyfikat.innerHTML = "";
    const html = arr.map((s) => {
      const sert = s.sertyfikat_details;
      const id = sert.id;
      const name = sert.name;

      return `<div class="size ${
        selectedData.sertyfikat == id ? " active" : ""
      }" ${_SERT}="${id}"  title="${name} грн">
        ${name}
      </div>`;
    });
    wrapper_sertyfikat.innerHTML = html.join("");
  };

  const showVariatorPrice = (boo, variation) => {
    if (boo) {
      if (!variation) return;
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
  };

  const NEW_getElementsByAttr = (attr) => {
    const elements = wrapper.querySelectorAll(`[${attr}]`);
    htmlElements[attr] = elements;

    if (defaultVariation) {
      let element = null;

      if (attr == _MATERIAL) {
        element = [...elements].find(
          (el) => el.getAttribute(attr) == defaultVariation.material_details.id
        );
      }
      if (attr == _COLOR) {
        element = [...elements].find(
          (el) =>
            el.getAttribute(attr) ==
            Object.values(defaultVariation.material_colors)[0]?.id
        );
      }
      if (attr == _SIZE) {
        element = [...elements].find(
          (el) =>
            el.getAttribute(attr) ==
            defaultVariation.attributes.attribute_pa_rozmiry
        );
      }
      element && element.click();
    }
  };

  const NEW_createHTMLData = () => {
    let filteredVariations = [...variations];

    if (isProduct) {
      filteredVariations.forEach((variation) => {
        const material = variation?.material_details;
        const colors = Object.values(variation?.material_colors || {});
        const size = variation?.attributes?.attribute_pa_rozmiry;

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
              description: variation?.dimensions_description ?? null,
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

      wrapper_materials && createMaterials(data_materials);
      wrapper_colors && createColors(data_colors);
      wrapper_sizes && createSizes(data_sizes);

      [_MATERIAL, _COLOR, _SIZE].forEach(NEW_getElementsByAttr);
    } else {
      wrapper_sertyfikat && createSertyfikat(filteredVariations);
      NEW_getElementsByAttr(_SERT);
    }
  };

  const NEW_updateFilteredVar = (filtered) => {
    if (isProduct) {
      let data_colors = [];
      let data_sizes = [];
      let data_materials = [];

      const selectedLength = Object.values(selectedData).filter(
        (v) => v !== null
      ).length;

      filtered.forEach((variation) => {
        const material = variation?.material_details;
        const colors = Object.values(variation?.material_colors || {});
        const size = variation?.attributes?.attribute_pa_rozmiry;

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

      const dataMap = {
        [_SIZE]: { selected: selectedData.size, list: data_sizes },
        [_MATERIAL]: { selected: selectedData.material, list: data_materials },
        [_COLOR]: { selected: selectedData.color, list: data_colors },
      };

      [_SIZE, _MATERIAL, _COLOR].forEach((attr) => {
        const elements = htmlElements[attr];
        if (!elements) return;

        const { selected, list } = dataMap[attr];

        elements.forEach((el) => {
          const value = el.getAttribute(attr);
          const isActive = selected == value;
          const isEnabled =
            (selectedLength === 1 && selected) ||
            list.some((item) => item.id == value);

          el.classList.toggle("active", isActive);
          el.classList.toggle("disabled", !isEnabled);
        });
      });
    } else {
      const elements = htmlElements[_SERT];
      if (!elements) return;

      const selected = selectedData.sertyfikat;

      elements.forEach((el) => {
        const value = el.getAttribute(_SERT);
        const isActive = selected == value;
        el.classList.toggle("active", isActive);
      });
    }
  };

  const updateProductData = () => {
    let filteredVariations = [...variations];

    if (isProduct) {
      // filter variations by color
      if (selectedData.color) {
        filteredVariations = filteredVariations.filter((variation) => {
          const colors = Object.values(variation.material_colors);
          return colors.some((color) => color.id == selectedData.color);
        });
      }

      // filter variations by size
      if (selectedData.size) {
        filteredVariations = filteredVariations.filter(
          (variation) =>
            variation.attributes.attribute_pa_rozmiry == selectedData.size
        );
      }

      // filter variations by material
      if (selectedData.material) {
        filteredVariations = filteredVariations.filter(
          (variation) => variation.material_details.id == selectedData.material
        );
      }

      const isSelected = Object.keys(selectedData).every(
        (key) => selectedData[key]
      );

      showVariatorPrice(isSelected, filteredVariations[0]);
    } else {
      filteredVariations = filteredVariations.find(
        (f) => f.sertyfikat_details.id == selectedData.sertyfikat
      );
      showVariatorPrice(selectedData.sertyfikat, filteredVariations);
    }
    NEW_updateFilteredVar(filteredVariations);
  };

  const handleSelectData = (e) => {
    const element = e.target;

    if (isProduct) {
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
            createMaterialInfo(isActive, element);
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
      });
    } else {
      const value = element.hasAttribute(_SERT)
        ? element.getAttribute(_SERT)
        : null;
      if (!value) return;

      const isActive = element.classList.contains("active");
      selectedData.sertyfikat = isActive ? null : value;
      input_size.value = isActive ? "" : value;
    }
    updateProductData();
  };

  const handleAddToCart = () => {
    // URL WooCommerce для AJAX-запиту
    const selected = selectedVariation;
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
        const name = isProduct
          ? selected.attributes.attribute_pa_rozmiry.toUpperCase()
          : selected.sertyfikat_details.name + " грн";
        const material = isProduct ? selected.material_details.name : "";
        onAdded && onAdded(`${product_name} - ${name}, ${material}`);
        ajaxButton.disabled = false;

        if (data && data.fragments) {
          $.each(data.fragments, function (key, value) {
            $(key).replaceWith(value);
          });
        }
      })
      .catch((error) => {
        ajaxButton.disabled = false;

        console.error("Request failed:", error);
      });
  };

  const checkIsSelectedSertyfikaty = () => {
    const urlParams = new URLSearchParams(window.location.search);
    const value = urlParams.get("attribute_pa_sertyfikaty");

    if (value) {
      const variation = [...variations].find(
        (f) => f.attributes.attribute_pa_sertyfikaty == value
      );
      variation && (selectedData.sertyfikat = variation.sertyfikat_details.id);
      // showVariatorPrice(selectedData.sertyfikat, variation);
    }
  };

  function handleTooltipHover(tooltip, icon) {
    // Очистити попередні позиції
    tooltip.classList.remove("top", "bottom");

    const tooltipRect = tooltip.getBoundingClientRect();
    const triggerRect = icon.getBoundingClientRect();

    const spaceAbove = triggerRect.top - header.clientHeight - 10;

    if (spaceAbove > tooltipRect.height) {
      tooltip.classList.add("top");
    } else {
      tooltip.classList.add("bottom");
    }
  }

  wrapper.addEventListener("click", handleSelectData);
  ajaxButton && ajaxButton.addEventListener("click", handleAddToCart);
  !isProduct && checkIsSelectedSertyfikaty();
  NEW_createHTMLData();
  updateProductData();
  setTimeout(() => {
    wrapper.classList.remove("loading");
  }, 100);
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
