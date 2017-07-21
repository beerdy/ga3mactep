$( document ).ready(function() {
  function func() {

    var heights = $(".price-heading").map(function() {
        return $(this).height();
    }).get(),
    maxHeight = Math.max.apply(null, heights);
    $(".price-heading").height(maxHeight);


    var heights = $(".price-group").map(function() {
        return $(this).height();
    }).get(),
    maxHeight = Math.max.apply(null, heights);
    $(".price-group").height(maxHeight);


    var heights = $(".price-feature").map(function() {
        return $(this).height();
    }).get(),
    maxHeight = Math.max.apply(null, heights);
    $(".price-feature").height(maxHeight);


    var heights = $(".price-footer").map(function() {
        return $(this).height();
    }).get(),
    maxHeight = Math.max.apply(null, heights);
    $(".price-footer").height(maxHeight);
  }

  setTimeout(func, 1000);
  window.addEventListener("resize", func);
});

