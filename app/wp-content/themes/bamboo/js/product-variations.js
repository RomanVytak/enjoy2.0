jQuery(function($) {
    $.ajax({
        url: product_ajax_data.ajax_url,
        type: 'POST',
        data: {
            action: 'get_product_variations_json',
            product_id: product_ajax_data.product_id
        },
        success: function(response) {
            console.log('Variations:', response);
            
        },
        error: function() {
            console.error('AJAX error loading variations.');
        }
    });
});