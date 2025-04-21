import { startScroll, stopScroll } from "../utils/scroll-config";

export default function toggleCartPopup() {
  const cart = document.querySelector(".custom_mini_cart");

  if (!cart) return;

  const buttons = document.querySelectorAll("[data-toggle-cart]");
  const wrapper = cart.querySelector(".wrapper");
  const config = { childList: true,  };
  const headerCount = document.querySelector(".header-count");

  const closeCart = (e) => {
    // if (!cart.contains(e.target) && !e.target.closest("[data-toggle-cart]")) {
    //   toggleCart();
    // }
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

  const checkTotalProductsInCart = () => {
    const widget = wrapper.querySelector("[data-mini-cart-wrapper]");
    const count = widget ? widget.children.length : 0;
    headerCount.textContent = count;
    headerCount.classList.toggle("flex-n", !count);

  };

  const observer = new MutationObserver(checkTotalProductsInCart);
  observer.observe(wrapper, config);
  initCustomChangeAmount();
}

function initCustomChangeAmount() {
  let sto = null;
  jQuery(function ($) {
    $(document).on("click", ".custom-minicart-quantity button", function (e) {
      e.preventDefault();
      sto && clearTimeout(sto);
      let $this = $(this),
        $input = $this.siblings(".qty"),
        currentQty = parseInt($input.val(), 10),
        max = 999,
        min = parseInt($input.attr("min")) || 1,
        isIncrement = $this.hasClass("plus");

      let newQty = isIncrement
        ? Math.min(currentQty + 1, max)
        : Math.max(currentQty - 1, min);

      $input.val(newQty);

      sto = setTimeout(() => {
        $input.trigger("change");
      }, 300);
    });

    // Trigger WooCommerce AJAX cart update when quantity changes
    $(document).on("change", ".custom-minicart-quantity .qty", function () {
      $(".custom_mini_cart").addClass("loading");

      let $this = $(this);
      let quantity = $this.val();
      let cart_item_key = $this.data("key");
      let url = wc_add_to_cart_params.ajax_url;
      let parent = $this.closest(".quantity.custom-quantity");

      parent.addClass("loading");

      $.ajax({
        type: "POST",
        url,
        data: {
          action: "woocommerce_update_cart",
          cart_item_key,
          quantity,
        },
        success: function (response) {
          let url = wc_add_to_cart_params.wc_ajax_url
            .toString()
            .replace("%%endpoint%%", "get_refreshed_fragments");

          $.ajax({
            url,
            type: "POST",
            success: function (data) {
              if (data && data.fragments) {
                $.each(data.fragments, function (key, value) {
                  $(key).replaceWith(value);
                });
                parent.removeClass("loading");
              }
            },
          });
        },
        error: function (response) {
          console.log(response);
        },
      });
    });
  });
}
