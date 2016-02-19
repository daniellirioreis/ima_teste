




$(function(){
  $("body").on("click", "a.status", function(event){
    var el = $(this);
    var result = $.ajax({
      url: el.attr("href"),
      dataType: "json",
      type: el.data("method")
    });
    result.done(function(product){
      if(product.status){
        $('#active_product_'+ product.id).removeClass("hidden")
        $('#deactivate_product_'+ product.id).addClass("hidden")
      } else {
        $('#active_product_'+ product.id).addClass("hidden")
        $('#deactivate_product_'+ product.id).removeClass("hidden")
      }
    });
    return false;
  });
});

