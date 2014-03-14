if (window != top) {
	top.location.href=location.href;
}

function doTabRename() {
	document.formTabRename.submit();
}

function doLogonFocus() {
    var pidField = document.getElementById("logon-pid");
    var passwordField = document.getElementById("logon-password");
    if ((pidField != null) && (passwordField != null)) {
    		if ((pidField.value == "") && (passwordField.value == "")) {
		    pidField.focus();
		}
    }
}

function doLogonWait() {
	var waitAnimation = document.getElementById("logon-wait-animation");
	var waitAnimationImage = document.getElementById("logon-wait-animation-img");
	var waitText = document.getElementById("logon-wait-text");
	var submitButton = document.getElementById("logon-submit-button");
	var logonPid = document.getElementById("logon-pid");
	var logonPassword = document.getElementById("logon-password");
	var alternateUsername = document.getElementById("logon-alternate-username");
	var alternatePassword = document.getElementById("logon-alternate-password");
	if ((waitAnimation != null) && (waitText != null) && (submitButton != null)) {
		waitAnimation.style.visibility = "visible";
		waitAnimationImage.style.visibility = "visible";
		waitText.style.display = "block";
		submitButton.style.display = "none";
		alternateUsername.value = logonPid.value;
		alternatePassword.value = logonPassword.value;
	}
}

function preventEnterKey(e) {
	if ((e != null) && (e.keyCode == 13)) {
		return false;
	}
}

function setMinimumFontSize() {
	var XDivElement = document.getElementById('font-size-check');
	if (XDivElement.offsetHeight < "11") {
		tags = new Array ('body');
		for (j = 0; j < tags.length; j ++) { 
			var getbody = document.getElementsByTagName(tags[j]).item(0); 
			if (getbody) {
				getbody.style.fontSize =  "11px";
				//alert(Math.abs(.7 * (11 - XDivElement.offsetHeight)) + 'em');
			}
		}
	}
}

function doPageLoad() {
	doLogonFocus();
	setMinimumFontSize();
}

/* Custom JavaScript for channel content */
$(document).ready(function() {
  $('div.category').addClass('plusimageapply');
  $('div.category').next().hide();
  $('div.category').click(function() {
    if($(this).is('.plusimageapply')) {
      $(this).next().show();
      $(this).removeClass('plusimageapply');
      $(this).addClass('minusimageapply');
    }
    else {
      $(this).next().hide();
      $(this).removeClass('minusimageapply');
      $(this).addClass('plusimageapply');
    }
  });
});

window.onload = doPageLoad;
