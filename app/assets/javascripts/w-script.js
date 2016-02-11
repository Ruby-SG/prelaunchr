$(document).ready(function(){

	$('.news_letter_signup').submit(function(){
		var email = $('#email').val();
		var pattern = new RegExp(/^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?$/i);
		$('.error').remove();
		$('#email').parent().removeClass('border-red');
		if(email.trim()=='')
		{
			$('#email').parent().addClass('border-red');
			$('.watch-demo').before('<span class="error text-danger">Please enter the email address</span>');
			return false;
		}
		else if(!pattern.test(email))
		{
			$('#email').parent().addClass('border-red');
			$('.watch-demo').before('<span class="error text-danger">Please enter the valid email address</span>');
			return false;
		}
		var data = {
			'email':email
		};
		$.post('includes/ajax.php',data,function(result){
			if(result==true)
			{
				$('.watch-demo').before('<span class="error text-success">Thanks for subscribing.</span>');
				$('#email').val('');
			}
			else if(result == 'exists')
			{
				$('.watch-demo').before('<span class="error text-success">You are already subscribed.</span>');
				$('#email').val('');
			}
			else
			{
				$('.watch-demo').before('<span class="error text-danger">Something went wrong.</span>');
			}

		});
		return false;
	});

	$('.popup-form').submit(function(){
		var email = $(this).find('input[name=email]').val();
		var pattern = new RegExp(/^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?$/i);
		$('.error').remove();
		$(this).find('input[name=email]').parent().removeClass('border-red');
		if(email.trim()=='')
		{
			$(this).find('input[name=email]').parent().addClass('border-red');
			$(this).find('.signup-signin').before('<span class="error text-danger">Please enter the email address</span>');
			return false;
		}
		else if(!pattern.test(email))
		{
			$(this).find('input[name=email]').parent().addClass('border-red');
			$(this).find('.signup-signin').before('<span class="error text-danger">Please enter the valid email address</span>');
			return false;
		}
		var data = {
			'email':email
		};
		$.post('includes/ajax.php',data,function(result){
			if(result==true)
			{
				$('.signup-signin').before('<span class="error text-success">Thanks for subscribing.</span>');
				$('input[name=email]').val('');
				window.location = "referral.php";
			}
			else if(result == 'exists')
			{
				$('.signup-signin').before('<span class="error text-success">You are already subscribed.</span>');
				$('input[name=email]').val('');
			}
			else
			{
				$('.signup-signin').before('<span class="error text-danger">Something went wrong.</span>');
			}

		});
		return false;
	});

	/*$(".watch-demo").click(function() {
		var video = $("#phone-video").get(0);
		video.play();
		return false;
	});*/

	$(".video-popup").fancybox({
		maxWidth	: 800,
		maxHeight	: 600,
		fitToView	: false,
		width		: '70%',
		height		: '70%',
		autoSize	: false,
		closeClick	: false,
		openEffect	: 'none',
		closeEffect	: 'none',
		afterShow	: function() {
			var video = $("#phone-video").get(0);
			video.pause();
		},
		afterClose	: function() {
			var video = $("#phone-video").get(0);
			var isMobile = window.matchMedia("only screen and (max-width: 768px)");
			if (!isMobile.matches) video.play();
		}
	});

	$(".form-popup").fancybox({
		wrapCSS		: 'form-popup',
		padding		: 0
	});

});