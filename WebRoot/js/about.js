    TextChange()
    if (!(/msie [6|7|8|9]/i.test(navigator.userAgent))) {
      (function () {
        window.scrollReveal = new scrollReveal({ reset: true });
      })();
    };

    var lis = document.getElementsByClassName("tab-item");
    var mains = document.getElementsByClassName("main");
    for (var i = 0; i < lis.length; i++) {
      lis[i].index = i;
      lis[i].onmouseover = mouseOverHandle;
    }
    function mouseOverHandle() {
      for (var j = 0; j < lis.length; j++) {
        lis[j].className = "tab-item";
      }
      this.className = "tab-item active";

      for (var k = 0; k < mains.length; k++) {
        mains[k].className = "main";
      }
      mains[this.index].className = "main selected";
    }
    $('.us').mouseover(function () {
      $('.us_name1').fadeIn(1000);
      $('.us_name2').fadeIn(2000)
    })
    $('.us').mouseleave(function () {
      $('.us_name1,.us_name2').hide();
   
    })
      $('.item').mouseover(function () {
         TextChange()
        })