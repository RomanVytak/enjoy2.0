const _SIZE = "data-size";
const _MATERIAL = "data-material";
const _COLOR = "data-color";
const _SERT = "data-vars";
let activePopup = null;

const _SIZES = {
  height: "Висота %% см",
  width: "Ширина %% см",
  length: "Глибина %% см",
  volume: "Об'єм %% л",
};

function onEscPress(e) {
  if (e.key === "Escape") {
    handlePopUp.close();
  }
}
function onDocClick(e) {
  const target = e.target;
  const isCloseElement = target.dataset.popupClose;

  (isCloseElement || isCloseElement !== undefined) && handlePopUp.close();
}

const handlePopUp = {
  open: (object) => {
    const open = () => {
      let popup = object;
      const scroller = popup.querySelector("[data-scroller]");
      activePopup = popup;
      popup.classList.add("active");
      scroller && scroller.scrollTo(0, 0);

      document.addEventListener("keydown", onEscPress);
      document.addEventListener("click", onDocClick);
    };
    handlePopUp.close();
    open();
  },
  close: () => {
    if (!activePopup) return;
    activePopup.classList.remove("active");
    document.removeEventListener("keydown", onEscPress);
    document.removeEventListener("click", onDocClick);
    activePopup && activePopup?.onClose?.();
    activePopup = null;
  },
};

export default function createProductData() {

  const form = document.querySelector("[data-product-form-data]");
  if (!form) return;
  const variations = JSON.parse(form.dataset.product_variations);
  const header = document.querySelector("header");

  const imgPopUp = document.querySelector("[data-img-popup]");
  const videoPopUp = document.querySelector("[data-video-popup]");
  const imgWrapper = imgPopUp.querySelector("[data-img]");
  const videoWrapper = videoPopUp.querySelector("[data-video]");

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

  const wrapper_variants = wrapper.querySelector("[data-variants]");

  const onAdded = onAddedToCart();

  let defaultVariation = [...variations].find((v) => v?.is_default);

  const selectedData = {
    color: null,
    size: null,
    material: null,
    variant: null,
  };
  const htmlElements = {};
  const dataArrays = {
    color: [],
    size: [],
    material: [],
    variant: [],
  };

  let selectedVariation = null;
  let activeMaterialID = {};
  let activeVideo = null;

  form.removeAttribute("data-product_variations");

  const handleMaterialParams = (wrapper = material_params) => {
    const icons = wrapper.querySelectorAll(".param img");
    const texts = wrapper.querySelectorAll(".title");

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

  const createMaterialParams = (material) => {
    const assets = BAMBOO.assets;
    if (!material || !material?.options) {
      material_params.classList.add("hidden");
      return;
    }

    material_params.classList.remove("hidden");
    const html = material.options.map((option) => {
      const img = option.ico;
      const description = option.description;
      return `<div class="param">
        ${
          description
            ? `<span class="title"><span class='d'>${description}</span></span>`
            : ""
        }
            ${
              img
                ? `<img src="${assets}img/properties/${img}.svg" alt="${option.description}">`
                : ""
            }
      </div>`;
    });
    material_params.innerHTML = html.join("");
    setTimeout(handleMaterialParams, 100);
  };
  const createMaterialInfo = (element) => {
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

  const createMaterials = () => {
    const materials = dataArrays.material;
    wrapper_materials.innerHTML = "";

    if (!materials?.length) {
      wrapper_materials.parentElement.remove();
      return;
    }

    const html = materials.map((material) => {
      const image_html = material.image_html;

      const name = material.name;
      const id = material.id;
      const description = material?.description;
      return `<div class="material${
        selectedData.material == id ? " active" : ""
      }" ${_MATERIAL}="${id}" title="${name}"data-description="${description}"  >
        ${image_html}
      </div>`;
    });
    wrapper_materials.innerHTML = html.join("");
  };
  const createColors = () => {
    const colors = dataArrays.color;
    wrapper_colors.innerHTML = "";

    if (!colors?.length) {
      wrapper_colors.parentElement.remove();
      return;
    }

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

  const createSizes = () => {

    const sizes = dataArrays.size;
    wrapper_sizes.innerHTML = "";

    if (!sizes?.length) {
      wrapper_sizes.parentElement.remove();
      return;
    }

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
  const createVarians = () => {
    const variants = dataArrays.variant;
    wrapper_variants.innerHTML = "";

    if (!variants?.length) {
      wrapper_variants.parentElement.remove();
      return;
    }

    const html = variants.map((s) => {
      const sert = s;
      const id = sert.id;
      const name = sert.name;
      // const image = s.image;
      // const src = image?.sizes?.thumbnail || image?.url || image?.icon || "";

      return `<div class="size ${
        selectedData.variant == id ? " active" : ""
      }" ${_SERT}="${id}">
        <div class='icon'>
          ${s.image_html}
        </div>
       <p>${name}</p>
      </div>`;
    });
    wrapper_variants.innerHTML = html.join("");
  };

  const showVariatorPrice = (boo, variation) => {
    if (boo) {
      if (!variation) return;

      const var_id = variation.variation_id;

      const discount_percent = variation?.discount_percent || 0;
      const display_price = variation?.display_price || 0;
      const display_regular_price = variation?.display_regular_price || 0;

      const price_html = `<span class='price'>${display_price} <span class='currency'>грн</span></span>`;
      const percent_html = discount_percent
        ? `<span class="percent">-${discount_percent}%</span>`
        : "";
      const regular_price_html = discount_percent
        ? `<span class='regular'>${display_regular_price} грн</span>`
        : "";
      const saving_price_html = discount_percent
        ? `<span class='saving'>Економія ${
            display_regular_price - display_price
          } ₴</span>`
        : "";

      input_variation_id.value = var_id;
      input_product_id.value = var_id;
      ajaxButton.disabled = false;
      wrapper_price.innerHTML = `${price_html} ${
        percent_html
          ? `<div class='info'>${percent_html} ${regular_price_html} ${saving_price_html} </div>`
          : ""
      }`;
      selectedVariation = variation;
      slideGallerySliderToVarID(var_id);
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
      if (attr == _SERT) {
        element = [...elements].find(
          (el) =>
            Number(el.getAttribute(attr)) ==
            defaultVariation?.variants_details?.id
        );
      }
      element && element.click();
    }
  };

  const NEW_createHTMLData = () => {
    let filteredVariations = [...variations];

    filteredVariations.forEach((variation) => {
      const material = variation?.material_details;
      const colors = Object.values(variation?.material_colors || {});
      const size = variation?.attributes?.attribute_pa_rozmiry;
      const variants = variation?.variants_details;

      if (material) {
        getMaterials(dataArrays.material, material);
      }
      if (size) {
        getSizes(dataArrays.size, size, variation);
      }
      if (colors.length) {
        getColors(dataArrays.color, colors);
      }
      if (variants) {
        getVars(dataArrays.variant, variants);
      }
    });

    wrapper_materials && createMaterials();
    wrapper_colors && createColors();
    wrapper_sizes && createSizes();
    wrapper_variants && createVarians();

    [_MATERIAL, _COLOR, _SIZE, _SERT].forEach(NEW_getElementsByAttr);
  };

  const NEW_updateFilteredVar = (filtered) => {
    let data_colors = [];
    let data_sizes = [];
    let data_materials = [];
    let data_vars = [];

    const selectedLength = Object.values(selectedData).filter(
      (v) => v !== null
    ).length;

    filtered.forEach((variation) => {
      const material = variation?.material_details;
      const colors = Object.values(variation?.material_colors || {});
      const size = variation?.attributes?.attribute_pa_rozmiry;
      const variants = variation?.variants_details;

      if (variants) {
        getVars(data_vars, variants);
      }

      if (material) {
        getMaterials(data_materials, material, variation);
      }
      if (size) {
        getSizes(data_sizes, size, variation);
      }
      if (colors.length) {
        getColors(data_colors, colors);
      }
    });

    const dataMap = {
      [_SIZE]: { selected: selectedData.size, list: data_sizes },
      [_MATERIAL]: { selected: selectedData.material, list: data_materials },
      [_COLOR]: { selected: selectedData.color, list: data_colors },
      [_SERT]: { selected: selectedData.variant, list: data_vars },
    };

    [_SIZE, _MATERIAL, _COLOR, _SERT].forEach((attr) => {
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
  };

  const updateProductData = () => {
    let filteredVariations = [...variations];

    filteredVariations = filterData(filteredVariations, selectedData);

    // check if all selected data is valid
    const options = Object.entries(dataArrays);

    const isValid = options.every(
      (opt) => !opt[1].length || selectedData[opt[0]]
    );

    showVariatorPrice(
      isValid && filteredVariations.length == 1,
      filteredVariations[0]
    );

    NEW_updateFilteredVar(filteredVariations);
  };

  const handleSelectData = (e) => {
    const element = e.target;
    const arr = [_SIZE, _MATERIAL, _COLOR, _SERT];

    const hasAnyAttribute = arr.some(attr => element.hasAttribute(attr));
    if (!hasAnyAttribute) return

    arr.forEach((attr) => {
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
            !isActive ? dataArrays.size.find((m) => m.id == value) : null
          );
          break;
        case _MATERIAL:
          const material = dataArrays.material.find((m) => m.id == value);
          if (isActive) {
            showMaterialPopUp(material);
            return;
          }

          selectedData.material = value;
          createMaterialInfo(element);
          input_material.value = value;
          createMaterialParams(material);
          break;
        case _COLOR:
          selectedData.color = isActive ? null : value;
          color_name.innerHTML = isActive ? "" : element.title;
          input_color.value = isActive ? "" : value;
          break;
        case _SERT:
          selectedData.variant = isActive ? null : value;

          break;
      }
    });
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
    const parent = ajaxButton.parentElement;

    parent.classList.add("loading");
    // Відправляємо AJAX-запит
    fetch(ajaxUrl, {
      method: "POST",
      body: formData,
    })
      .then((response) => response.json())
      .then((data) => {
        let description = "";
        if (selected?.material_details?.name) {
          description = selected.material_details?.name;
        } else if (selected?.variants_details?.name) {
          description = selected?.variants_details?.name;
        }
        onAdded &&
          onAdded(`${product_name}${description ? ` - ${description}` : ""}`);
        parent.classList.remove("loading");

        if (data && data.fragments) {
          $.each(data.fragments, function (key, value) {
            $(key).replaceWith(value);
          });
        }
      })
      .catch((error) => {
        parent.classList.remove("loading");
        console.error("Request failed:", error);
      });
  };

  const checkIsSelectedvariant = () => {
    const urlParams = new URLSearchParams(window.location.search);
    const value = urlParams.get("attribute_pa_variants");

    if (value) {
      const variation = [...variations].find(
        (f) => f?.variants_details?.slug == value
      );
      variation && (defaultVariation = variation);
    }
  };

  function handleTooltipHover(tooltip, icon) {
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

  function showMaterialPopUp(material) {
    const video = material?.video;

    if (activeMaterialID?.id !== material.id) {
      const params = material_params.cloneNode(true);

      activeMaterialID = material;
      imgWrapper.innerHTML = `
      <img src="${material.full_size}" alt="${material.name}">
      <button class="item-play flex-c" data-play-video="${video}" data-id="${material.id}"><div class="icon icon_play"></div></button>
      `;
      imgWrapper.append(params);
      handleMaterialParams(imgWrapper);
    }
    imgWrapper.classList.toggle("with-video", video);
    handlePopUp.open(imgPopUp);
  }
  function showVideoPopUp(e) {
    const videoUrl = e.target.dataset.playVideo;
    if (!videoUrl) return;
    const id = e.target.dataset.id;

    if (activeVideo && activeMaterialID?.id == id) {
      activeVideo.play();
    } else {
      videoWrapper.innerHTML = `<video controls autoplay playsinline><source src="${videoUrl}" type="video/mp4"></video>`;
      setTimeout(() => (activeVideo = videoWrapper.querySelector("video")), 10);
    }
    handlePopUp.open(videoPopUp);
  }

  wrapper.addEventListener("click", handleSelectData);
  imgWrapper.addEventListener("click", showVideoPopUp);
  ajaxButton && ajaxButton.addEventListener("click", handleAddToCart);
  videoPopUp.onClose = () => activeVideo?.pause();
  checkIsSelectedvariant();
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

function slideGallerySliderToVarID(var_id) {
  const slider = window.thumbsSlider;
  if (!slider || !var_id) return;
  const slides = [...slider.slides];
  const slideIndex = slides.findIndex((s) => s.dataset?.id == var_id);
  slideIndex > -1 && slider.slideTo(slideIndex);
}

function filterData(data, selectedData) {
  const strategies = {
    color: (variation, key) => {
      const colors = Object.values(variation.material_colors || {});
      return colors.some((color) => color.id == key);
    },
    size: (variation, key) => variation.attributes?.attribute_pa_rozmiry == key,
    material: (variation, key) => variation.material_details?.id == key,
    variant: (variation, key) => variation.variants_details?.id == key,
  };

  return Object.entries(selectedData).reduce((filtered, [type, key]) => {
    const fn = strategies[type];
    return fn && key ? filtered.filter((v) => fn(v, key)) : filtered;
  }, data);
}

function getMaterials(array, data) {
  if (!array.some((m) => m?.id === data.id)) {
    array.push(data);
  }
}
function getSizes(array, data, variation) {
  if (!array.some((m) => m?.id === data)) {
    const obj = {
      id: data,
      dimensions: variation?.dimensions ?? null,
      description: variation?.dimensions_description ?? null,
    };
    array.push(obj);
  }
}
function getColors(array, colors) {
  colors.forEach((color) => {
    if (!array.some((c) => c?.id === color.id)) {
      array.push(color);
    }
  });
}
function getVars(array, data) {
  if (!array.some((m) => m?.id === data?.id)) {
    array.push(data);
  }
}
