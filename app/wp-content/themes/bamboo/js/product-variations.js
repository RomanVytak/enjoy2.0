
function loadVariationGallery(variationId) {
  jQuery.ajax({
    type: 'POST',
    url: product_ajax_data.ajax_url,
    data: {
      action: 'get_variation_images_html',
      variation_id: variationId
    },
    success: function (response) {
      if (response.success) {
        console.log(response);
        // Оновлюємо великі та малі Swiper-каруселі
        jQuery('.woocommerce-gallery .swiper.lg .swiper-wrapper').html(response.data.html);
        jQuery('.woocommerce-gallery .swiper.sm .swiper-wrapper').html(response.data.html);

        // Якщо треба — оновити Swiper
        if (window.lgSwiper) lgSwiper.update();
        if (window.smSwiper) smSwiper.update();
      } else {
        console.error('Помилка:', response.data);
      }
    },
    error: function (err) {
      console.error('AJAX fail', err);
    }
  });
}

loadVariationGallery('442');
