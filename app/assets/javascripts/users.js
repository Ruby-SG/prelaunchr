$(document).ready(function(){
	var myVideo = document.getElementById('video');
	console.log(myVideo);
	if(myVideo){
		if (typeof myVideo.loop == 'boolean') { // loop supported
		    myVideo.loop = true;
		} else { // loop property not supported
		    myVideo.on('ended', function () {
		    this.currentTime = 0;
		    this.play();
		    }, false);
		}
	}

	copyToClipBoard = function() {
	  var aux, copied;
	  aux = document.createElement("input");
	  aux.setAttribute("value", document.getElementById('link-copy-clipboard').value);
	  document.body.appendChild(aux);
	  aux.select();
	  copied = document.execCommand("copy");
	  document.body.removeChild(aux);
	  if (copied) {
	  	console.log("xxx")
	    $('.copied-message').removeClass('hide');
	    return setTimeout((function() {
	      return $('.copied-message').addClass('hide');
	    }), 2000);
	  }
	};

})
