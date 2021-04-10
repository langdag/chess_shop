jQuery(function(){
    $('.sort').nestedSortable({
        items: 'li',
        update: function(e, ui) {
        Rails.ajax({
          url: $(this).data("url"),
          type: "PUT",
          data: $(this).nestedSortable('serialize'),
        });
        }
    });
});