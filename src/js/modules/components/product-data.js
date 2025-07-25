const _SIZE = "data-size";
const _MATERIAL = "data-material";
const _COLOR = "data-color";
const _SERT = "data-vars";
const _TYPE = "data-type";
let activePopup = null;
let gallery = document.querySelector(".woocommerce-gallery");
let activeGalleryID = null;
const loadingWrapper = document.querySelector(".loading-wrapper");

const _SIZES = {
  height: "Висота %% см",
  width: "Ширина %% см",
  length: "Глибина %% см",
  volume: "Об'єм %% л",
};
const variationsGallery = {};

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
  open: (object, boo = true) => {
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

export default async function createProductData() {
  const form = document.querySelector("[data-product-form-data]");
  if (!form) return;
  // const variations = JSON.parse(form.dataset.product_variations);
  const variations = await loadProductVariations();
  const header = document.querySelector("header");

  const imgPopUp = document.querySelector("[data-img-popup]");
  const videoPopUp = document.querySelector("[data-video-popup]");
  const imgWrapper = imgPopUp.querySelector("[data-img]");
  const videoWrapper = videoPopUp.querySelector("[data-video]");
  gallery = document.querySelector(".woocommerce-gallery");

  console.log(variations);

  const product_name = form.dataset.productName;

  const input_size = form.querySelector("input[name='attribute_pa_rozmiry']");
  const input_material = form.querySelector(
    "input[name='attribute_pa_material']"
  );
  const input_color = form.querySelector("input[name='custom_data[color]']");
  const input_type = form.querySelector("input[name='custom_data[type]']");
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

  const variants_wrapper = wrapper.querySelector("[data-variants-wrapper]");
  const variantChild = variants_wrapper.children[0];
  const variantChildClone = variantChild.cloneNode(true);
  variantChild.remove();
  const wrapper_attributes = wrapper.querySelector("[data-attrs]");

  const mobileTooltip = document.querySelector(".mobile-text-tooltip");

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
  const customAttributes = {};
  const productTypes = [];
  let selectedProductType = null;

  form.removeAttribute("data-product_variations");

  const handleTooltip = (wrapper) => {
    const icons = wrapper.querySelectorAll(".icon, .param img");

    icons.forEach((icon) => {
      const tooltip = icon.parentElement.querySelector(".tooltip-text");

      icon.addEventListener("click", (e) => {
        if (window.innerWidth > 768) return;
        const innerText = tooltip.innerHTML;
        mobileTooltip.innerHTML = innerText;
        mobileTooltip.classList.add("active");
      });

      icon.addEventListener("mouseenter", () => {
        handleTooltipHover(tooltip, icon);
      });
      // for tablet and mobile
      icon.addEventListener("touchstart", (e) => {
        if (window.innerWidth < 769) return;
        handleTooltipHover(tooltip, icon);
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
        ${createHTMLTooltip(description)}
        ${
          img
            ? `<img src="${assets}img/properties/${img}.svg" alt="${option.description}">`
            : ""
        }
      </div>`;
    });
    material_params.innerHTML = html.join("");
    setTimeout(() => handleTooltip(material_params), 100);
  };
  const createMaterialInfo = (element) => {
    const title = element.title;
    const description = element.dataset.description;

    material_name.innerHTML = `
    ${title}
    ${createHTMLTooltip(description, true)}
    `;

    if (!description) return;
    handleTooltip(material_name, false);
  };
  const createSizesParams = (size) => {
    const dimensions = size ? size?.dimensions : null;
    const d = size?.description;

    if (!size || !dimensions) {
      size_params.innerHTML = "";
      size_description.innerHTML = "";
      return;
    }
    size_description.innerHTML = d ? `<span class="d">${d}</span>` : "";
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
      const image_html = color.image_html;
      const name = color.name;
      return `<div class="color${
        selectedData.color == color.id ? " active" : ""
      }" ${_COLOR}="${color.id}"  title="${name}">
        ${
          image_html
            ? image_html
            : img
            ? `<img src="${img}" alt="${name}">`
            : ""
        }
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
  const createVarians = (variants, attr) => {
    if (!variants?.length) {
      return;
    }
    const newVariant = variantChildClone.cloneNode(true);
    const wrapper_variants = newVariant.querySelector("[data-variants]");

    wrapper_variants.innerHTML = "";

    variants_wrapper.classList.remove("none");

    const html = variants.map((s) => {
      const sert = s;
      const name = sert.name;
      const id = sert.id || name;
      // const image = s.image;
      // const src = image?.sizes?.thumbnail || image?.url || image?.icon || "";

      return `<div class="size ${
        selectedData.variant == id ? " active" : ""
      }" ${attr}="${id}">
        <div class='icon'>
          ${s.image_html}
        </div>
       <p>${name}</p>
      </div>`;
    });
    wrapper_variants.innerHTML = html.join("");
    variants_wrapper.append(newVariant);
  };
  const createAttributes = () => {
    const html_element = wrapper_attributes.children[0];

    const array = Object.entries(customAttributes);

    array.forEach(([key, value]) => {
      const clone = html_element.cloneNode(true);
      const title = clone.querySelector("[data-title]");
      const valueText = clone.querySelector("[data-value]");
      const input = clone.querySelector("[data-name]");

      title.innerHTML = `${value.title}${createHTMLTooltip(
        value.description,
        true
      )}`;
      input.name = `attribute_${key}`;
      input.setAttribute("data-name", value.slug);
      valueText.innerHTML = value.name;
      setTimeout(() => handleTooltip(clone), 100);
      clone.addEventListener("change", handleAttributeChange);
      wrapper_attributes.append(clone);
    });

    html_element.remove();
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
          (el) =>
            el.getAttribute(attr) == defaultVariation?.material_details?.id
        );
      }
      if (attr == _COLOR) {
        element = [...elements].find(
          (el) =>
            el.getAttribute(attr) ==
            Object.values(defaultVariation?.material_colors || {})[0]?.id
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
      const custom_attributes = variation?.custom_attributes || null;
      const product_types = variation?.product_types || null;

      if (material) {
        material.colors = colors;
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
      if (custom_attributes) {
        Object.entries(custom_attributes).forEach(([key, value]) => {
          if (customAttributes[key]) {
            return;
          }
          selectedData.attributs = {
            ...selectedData.attributs,
            [`attribute_${key}`]: {
              checked: false,
              name: value.slug,
            },
          };
          customAttributes[key] = value;
        });
      }
      if (product_types) {
        Object.values(product_types).forEach((value) => {
          getVars(productTypes, value, "name");
        });
      }
    });

    wrapper_materials && createMaterials();
    wrapper_colors && createColors();
    wrapper_sizes && createSizes();
    createVarians(dataArrays.variant, _SERT);

    // TODO - create product types
    createVarians(productTypes, _TYPE);
    createAttributes();

    [_MATERIAL, _COLOR, _SIZE, _SERT, _TYPE].forEach(NEW_getElementsByAttr);
  };

  const NEW_updateFilteredVar = (filtered) => {
    const filteredDataArays = {
      [_SIZE]: [],
      [_MATERIAL]: [],
      [_COLOR]: [],
      [_SERT]: [],
    };

    const selectedLength = Object.values(selectedData).filter(
      (v) => v !== null
    ).length;

    filtered.forEach((variation) => {
      const material = variation?.material_details;
      const colors = Object.values(variation?.material_colors || {});
      const size = variation?.attributes?.attribute_pa_rozmiry;
      const variants = variation?.variants_details;

      if (variants) {
        getVars(filteredDataArays[_SERT], variants);
      }

      if (material) {
        getMaterials(filteredDataArays[_MATERIAL], material, variation);
      }
      if (size) {
        getSizes(filteredDataArays[_SIZE], size, variation);
      }
      if (colors.length) {
        getColors(filteredDataArays[_COLOR], colors);
      }
    });

    const dataMap = {
      [_SIZE]: selectedData.size,
      [_MATERIAL]: selectedData.material,
      [_COLOR]: selectedData.color,
      [_SERT]: selectedData.variant,
    };

    [_SIZE, _MATERIAL, _COLOR, _SERT].forEach((attr) => {
      const elements = htmlElements[attr];
      if (!elements) return;

      const selected = dataMap[attr];
      const list = filteredDataArays[attr];

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
    let filtered = [...variations];
    filtered = filterData(filtered, selectedData);

    // check if all selected data is valid
    const options = Object.entries(dataArrays);

    const isValid = options.every(
      (opt) => !opt[1].length || selectedData[opt[0]]
    );
    const variation = filtered.length == 1 ? filtered[0] : null;
    variation && loadVariationGallery(variation?.variation_id);
    showVariatorPrice(isValid || variation, variation);

    NEW_updateFilteredVar(filtered);
  };

  const handleSelectData = (e) => {
    const element = e.target;
    const arr = [_SIZE, _MATERIAL, _COLOR, _SERT, _TYPE];
    let needUpdateData = true;

    const hasAnyAttribute = arr.some((attr) => element.hasAttribute(attr));
    if (!hasAnyAttribute) return;

    arr.forEach((attr) => {
      const value = element.hasAttribute(attr)
        ? element.getAttribute(attr)
        : null;

      if (!value) return;

      const isActive = element.classList.contains("active");

      isActive && (needUpdateData = false);

      switch (attr) {
        case _SIZE:
          if (isActive) return;

          selectedData.size = value;
          input_size.value = value;
          createSizesParams(dataArrays.size.find((m) => m.id == value));
          break;
        case _MATERIAL:
          const material = dataArrays.material.find((m) => m.id == value);
          if (isActive) {
            showMaterialPopUp(material);
            return;
          }
          if (selectedData.color && material?.colors?.length) {
            if (!material.colors.some((c) => c?.id == selectedData?.color)) {
              // clear selected color
              selectedData.color = null;
              color_name.innerHTML = "";
              input_color.value = "";
            }
          }

          selectedData.material = value;
          input_material.value = value;
          createMaterialInfo(element);
          createMaterialParams(material);
          break;
        case _COLOR:
          if (isActive) return;
          selectedData.color = value;
          color_name.innerHTML = element.title;
          input_color.value = value;
          break;
        case _SERT:
          if (isActive) return;
          selectedData.variant = value;
          break;
        case _TYPE:
          if (isActive) return;
          const children = htmlElements[_TYPE];
          children.forEach((child) => {
            child.classList.toggle(
              "active",
              child.getAttribute(_TYPE) == value
            );
          });
          selectedProductType = value;
          input_type.value = value;
          needUpdateData = false;
          break;
      }
    });
    needUpdateData && updateProductData();
  };
  const handleAttributeChange = (e) => {
    const element = e.target;
    selectedData.attributs = {
      ...selectedData.attributs,
      [element.name]: {
        checked: element.checked,
        name: element.dataset.name,
      },
    };

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
    if (window.innerWidth < 769) return;

    tooltip.classList.remove("t", "b");

    const tooltipRect = tooltip.getBoundingClientRect();
    const triggerRect = icon.getBoundingClientRect();

    const spaceAbove = triggerRect.top - header.clientHeight - 10;

    if (spaceAbove > tooltipRect.height) {
      tooltip.classList.add("t");
    } else {
      tooltip.classList.add("b");
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
      material.options && imgWrapper.append(params);
      handleTooltip(imgWrapper);
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
  mobileTooltip &&
    mobileTooltip.addEventListener("click", (e) => {
      mobileTooltip.classList.remove("active");
    });
  videoPopUp.onClose = () => {
    activeVideo?.pause();
    setTimeout(() => {
      handlePopUp.open(imgPopUp);
    }, 10);
  };
  checkIsSelectedvariant();
  NEW_createHTMLData();
  updateProductData();
  setTimeout(() => loadingWrapper.classList.remove("loading"), 200);
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
  const slider = window.lgSwiper;
  if (!slider || !var_id) return;
  const slides = [...slider.slides];
  const slideIndex = slides.findIndex((s) => s.dataset?.id == var_id);
  slideIndex > -1 && slider.slideTo(slideIndex);
}

function filterData(data, selectedData) {
  const attributs = selectedData?.attributs || null;
  const strategies = {
    color: (variation, key) => {
      const colors = Object.values(variation.material_colors || {});
      const some = colors.some((color) => color.id == key);
      return some;
    },
    size: (variation, key) => variation.attributes?.attribute_pa_rozmiry == key,
    material: (variation, key) => variation.material_details?.id == key,
    variant: (variation, key) => variation.variants_details?.id == key,
  };

  let object = Object.entries(selectedData).reduce((filtered, [type, key]) => {
    const fn = strategies[type];
    return fn && key ? filtered.filter((v) => fn(v, key)) : filtered;
  }, data);

  if (attributs) {
    Object.entries(attributs).forEach(([key, value]) => {
      object = object.filter((v) => {
        const attribute = v.attributes[key];
        return value.checked
          ? attribute == value.name
          : attribute != value.name;
      });
    });
  }

  return object;
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
function getVars(array, data, id = "id") {
  if (!array.some((m) => m?.[id] === data?.[id])) {
    array.push(data);
  }
}

function createHTMLTooltip(text, icon = false) {
  const wrapperStart = icon
    ? '<span class="info"> <span class="icon"></span>'
    : "";
  const wrapperEnd = icon ? "</span>" : "";

  return text
    ? `${wrapperStart}<span class="tooltip-text"><span class='d'>${text}</span></span>${wrapperEnd}`
    : "";
}

async function loadProductVariations() {
  try {
    const response = await fetch(BAMBOO.ajaxUrl, {
      method: "POST",
      headers: {
        "Content-Type": "application/x-www-form-urlencoded; charset=UTF-8",
      },
      body: new URLSearchParams({
        action: "get_product_variations_json",
        product_id: BAMBOO.product_id,
      }),
    });

    if (!response.ok) {
      throw new Error(`HTTP error! Status: ${response.status}`);
    }

    const data = await response.json();
    return data;
  } catch (error) {
    console.error("AJAX error loading variations.", error);
    return null;
  }
}

function loadVariationGallery(variationId) {
  if (activeGalleryID == variationId) return;
  const savedData = variationsGallery[variationId];
  gallery.classList.add("loading");
  loadingWrapper.classList.add("ajax-loading");
  activeGalleryID = variationId;

  if (savedData) {
    updateGallerySlider(savedData);
    return;
  }

  const formData = new FormData();
  formData.append("action", "get_variation_images_html");
  formData.append("variation_id", variationId);

  fetch(BAMBOO.ajaxUrl, {
    method: "POST",
    body: formData,
  })
    .then((res) => res.json())
    .then((response) => {
      if (response.success) {
        variationsGallery[variationId] = response.data.html;
        updateGallerySlider(response.data.html);
      } else {
        console.error("Помилка:", response.data);
      }
    })
    .catch((err) => {
      console.error("AJAX fail", err);
      gallery.classList.remove("loading");
      loadingWrapper.classList.remove("ajax-loading");
    });
}

function updateGallerySlider(data) {
  updateSlider(window.lgSwiper, data);
  updateSlider(window.smSwiper, data);

  setTimeout(() => {
    gallery.classList.remove("loading");
    loadingWrapper.classList.remove("ajax-loading");
    window?.lgSwiper?.update?.();
    window?.smSwiper?.update?.();
  }, 300);
}
function updateSlider(slider, data) {
  if (!slider) return;
  const swiperWrapper = slider.wrapperEl;
  if (!swiperWrapper) return;

  swiperWrapper.innerHTML = data;
}
