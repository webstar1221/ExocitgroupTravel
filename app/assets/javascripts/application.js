$(document).ready(function () {
  $(".overview").click(function () {
    $(".overview").addClass("activeBtn")
    $(".itinerary").removeClass("activeBtn")
    $(".inquiryBtnOne").removeClass("activeBtn")

    $(".tripSectionOne").removeClass("hide")
    $(".tripSectionTwo").addClass("hide")
    $(".tripSectionThree").addClass("hide")

  })

  $(".itinerary").click(function () {
    $(".itinerary").addClass("activeBtn")
    $(".overview").removeClass("activeBtn")
    $(".inquiryBtnOne").removeClass("activeBtn")
    $(".tripSectionOne").addClass("hide")
    $(".tripSectionTwo").removeClass("hide")
    $(".tripSectionThree").addClass("hide")
  })

  $(".inquiryBtnOne").click(function () {
    $(".inquiryBtnOne").addClass("activeBtn")
    $(".overview").removeClass("activeBtn")
    $(".itinerary").removeClass("activeBtn")
    $(".tripSectionOne").addClass("hide")
    $(".tripSectionTwo").addClass("hide")
    $(".tripSectionThree").removeClass("hide")

  })



  $(".sideBarBtn").click(function(){
    // $(this).parent().siblings().children(".sidebarBtn").addClass("collapsed");
    $(this).parent().siblings().children(".collapseingDiv").removeClass("show")
  })


  $('.js-example-basic-single').select2();

  $('.dropdown-toggle').click(function () {
    window.location = $(this).attr('href');
});


 

  (function($) {
    var $window = $(window),
        $html = $('html');

    function resize() {
        if ($window.width() < 991) {          
            // $(".buttonOne").attr("data-bs-toggle","collapse");
            // $(".openCountries").addClass("collapse")   
            return[$('#filters').addClass('collapse'),$(".buttonOne").attr("data-bs-toggle","collapse"),$(".openCountries").addClass("collapse"),$(".countryTravelInfo").addClass("collapse"),$(".countryOpenBtn").attr("data-bs-toggle","collapse") ] 

        } 
        return[$('#filters').removeClass('collapse'),$(".buttonOne").attr("data-bs-toggle"," "),$(".openCountries").removeClass("collapse"),$(".countryTravelInfo").removeClass("collapse"),$(".countryOpenBtn").attr("data-bs-toggle","") ] 

         
    }

    $window
        .resize(resize)
        .trigger('resize');
})(jQuery);




  window.onload = function () {
    document.getElementById("video1").addEventListener("ended", function () {
      document.getElementById("video2").play();
      document.getElementById("video2").classList.remove("hide");
      document.getElementById("video3").classList.add("hide");
      (this).classList.add("hide")

    });
    document.getElementById("video2").addEventListener("ended", function () {
      document.getElementById("video3").play();
      document.getElementById("video3").classList.remove("hide");
      document.getElementById("video2").classList.remove("hide");
       (this).classList.add("hide")
    });

    document.getElementById("video3").addEventListener("ended", function () {
      document.getElementById("video1").play();
      document.getElementById("video1").classList.remove("hide");
      document.getElementById("video2").classList.add("hide");
       (this).classList.add("hide")
    });

  }







  const $dropdown = $(".dropdown");
  const $dropdownToggle = $(".dropdown-toggle");
  const $dropdownMenu = $(".dropdown-menu");
  const showClass = "show";

  $(window).on("load resize", function () {
    if (this.matchMedia("(min-width: 768px)").matches) {
      $dropdown.hover(
        function () {
          const $this = $(this);
          $this.addClass(showClass);
          $this.find($dropdownToggle).attr("aria-expanded", "true");
          $this.find($dropdownMenu).addClass(showClass);
        },
        function () {
          const $this = $(this);
          $this.removeClass(showClass);
          $this.find($dropdownToggle).attr("aria-expanded", "false");
          $this.find($dropdownMenu).removeClass(showClass);
        }
      );
    } else {
      $dropdown.off("mouseenter mouseleave");
    }
  });



  window.addEventListener("resize", function (event) {
    if ($(window).width() < 1200) {
      $(".navContainer").addClass("container-fluid");
      $(".navContainer").removeClass("container");
    } else {
      $(".navContainer").addClass("container");
      $(".navContainer").removeClass("container-fluid");
    }
  })

})

// var $window = $(window);

// if ($window.width() < 991) {
//   return $('#filters').addClass('collapse');
// }else{
//   return $('#filters').removeClass('collapse');
// }