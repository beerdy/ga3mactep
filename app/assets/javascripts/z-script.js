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

  // shadow
  
  window.goGBO = function(e) {
      e.preventDefault();
      var cnt = 53;
      $("#shadow_style").css("box-shadow","0px 0px "+cnt+"px 0px #0080ff");
      var two = setInterval(function() {
          if (cnt <= 1) {
              clearInterval(two);
          }
          $("#shadow_style").css("box-shadow","0px 0px "+cnt+"px 0px #0080ff");
          cnt--;
      }, 1);
  }
  goGBO(e);

});

