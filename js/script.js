
jQuery(document).ready(function() {


    $('.region select').change(function(){
        $region = $('select#region_choose').val();
        document.getElementById('reg').value = $region;
        })

    $('.c1 select').change(function(){
        $cnt = $('select#c1').val();
        $oldcnt = document.getElementById('chx1').value;
        $oldval = document.getElementById('cost').value;
        $oldval -= $oldcnt*1000;
        $newval = $oldval + $cnt*1000;
        document.getElementById('cost').value = $newval;
        document.getElementById('chx1').value = $cnt;
        })
    $('.c2 select').change(function(){
        $cnt = $('select#c2').val();
        $oldcnt = document.getElementById('chx2').value;
        $oldval = document.getElementById('cost').value;
        $oldval -= $oldcnt*1700;
        $newval = $oldval + $cnt*1700;
        document.getElementById('cost').value = $newval;
        document.getElementById('chx2').value = $cnt;  
        })
    $('.c3 select').change(function(){
        $cnt = $('select#c3').val();
        $oldcnt = document.getElementById('chx3').value;
        $oldval = document.getElementById('cost').value;
        $oldval -= $oldcnt*1300;
        $newval = $oldval + $cnt*1300;
        document.getElementById('cost').value = $newval;
        document.getElementById('chx3').value = $cnt;  
        })
    $('.c4 select').change(function(){
        $cnt = $('select#c4').val();
        $oldcnt = document.getElementById('chx4').value;
        $oldval = document.getElementById('cost').value;
        $oldval -= $oldcnt*1500;
        $newval = $oldval + $cnt*1500;
        document.getElementById('cost').value = $newval;
        document.getElementById('chx4').value = $cnt;  
        })
    $('.c5 select').change(function(){
        $cnt = $('select#c5').val();
        $oldcnt = document.getElementById('chx5').value;
        $oldval = document.getElementById('cost').value;
        $oldval -= $oldcnt*1200;
        $newval = $oldval + $cnt*1200;
        document.getElementById('cost').value = $newval;
        document.getElementById('chx5').value = $cnt;  
        })
    $('.c6 select').change(function(){
        $cnt = $('select#c6').val();
        $oldcnt = document.getElementById('chx6').value;
        $oldval = document.getElementById('cost').value;
        $oldval -= $oldcnt*3500;
        $newval = $oldval + $cnt*3500;
        document.getElementById('cost').value = $newval;
        document.getElementById('chx6').value = $cnt;   
        })
    $('.c7 select').change(function(){
        $cnt = $('select#c7').val();
        $oldcnt = document.getElementById('chx7').value;
        $oldval = document.getElementById('cost').value;
        $oldval -= $oldcnt*2500;
        $newval = $oldval + $cnt*2500;
        document.getElementById('cost').value = $newval;
        document.getElementById('chx7').value = $cnt;  
        })
    $('.c8 select').change(function(){
        $cnt = $('select#c8').val();
        $oldcnt = document.getElementById('chx8').value;
        $oldval = document.getElementById('cost').value;
        $oldval -= $oldcnt*1900;
        $newval = $oldval + $cnt*1900;
        document.getElementById('cost').value = $newval;
        document.getElementById('chx8').value = $cnt;   
        })
    $('.c9 select').change(function(){
        $cnt = $('select#c9').val();
        $oldcnt = document.getElementById('chx9').value;
        $oldval = document.getElementById('cost').value;
        $oldval -= $oldcnt*2000;
        $newval = $oldval + $cnt*2000;
        document.getElementById('cost').value = $newval;
        document.getElementById('chx9').value = $cnt;  
        })
    $('.c10 select').change(function(){
        $cnt = $('select#c10').val();
        $oldcnt = document.getElementById('chx10').value;
        $oldval = document.getElementById('cost').value;
        $oldval -= $oldcnt*2100;
        $newval = $oldval + $cnt*2100;
        document.getElementById('cost').value = $newval;
        document.getElementById('chx10').value = $cnt;   
        })
    $('.c11 select').change(function(){
        $cnt = $('select#c11').val();
        $oldcnt = document.getElementById('chx11').value;
        $oldval = document.getElementById('cost').value;
        $oldval -= $oldcnt*2000;
        $newval = $oldval + $cnt*2000;
        document.getElementById('cost').value = $newval;
        document.getElementById('chx11').value = $cnt;  
        })
    $('.c12 select').change(function(){
        $cnt = $('select#c12').val();
        $oldcnt = document.getElementById('chx12').value;
        $oldval = document.getElementById('cost').value;
        $oldval -= $oldcnt*1900;
        $newval = $oldval + $cnt*1900;
        document.getElementById('cost').value = $newval;
        document.getElementById('chx12').value = $cnt;  
        })


	$(window).load(function () {
		$(".loaded").fadeOut();
		$(".preloader").delay(1000).fadeOut("slow");
	});
	jQuery(window).scroll(function () {
	  var top = jQuery(document).scrollTop();
		var height = 300;
	  
	  if (top > height) {
		jQuery('.navbar-fixed-top').addClass('menu-scroll');
	  } else {
	   jQuery('.navbar-fixed-top').removeClass('menu-scroll');
	  }
	});	
	  
	  
	

//<!-- =============================================== -->
//<!-- ========== scrollTop.js ========== -->
//<!-- =============================================== -->
    
$('.scrollup').click(function(){
$("html, body").animate({ scrollTop: 0 }, 2000);
return false;
});




//<!-- =============================================== -->
//<!-- ========== scrollTop.js ========== -->
//<!-- =============================================== -->
    
    $(window).scroll(function(){
        if ($(this).scrollTop() > 600) {
            $('.scrollup').fadeIn('slow');
        } else {
            $('.scrollup').fadeOut('slow');
        }
    });
    $('.scrollup').click(function(){
        $("html, body").animate({ scrollTop: 0 }, 800);
        return false;
    });
			
//<!-- =============================================== -->
//<!-- ========== bootstrap scrollspy ========== -->
//<!-- =============================================== -->
    
    
    $('body').scrollspy({
    	target: '.navbar',
    	offset: 160
    });

//<!-- =============================================== -->
//<!-- ========== navbardown.js ========== -->
//<!-- =============================================== -->

$('.nav a').bind('click', function () {
    $('html , body').stop().animate({
        scrollTop: $($(this).attr('href')).offset().top - 80
    }, 1500, 'easeInOutExpo');
    event.preventDefault();
});			
			
			

 new WOW().init();
		
});






		
  
 


	