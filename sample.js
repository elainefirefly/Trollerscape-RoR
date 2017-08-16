# Sample JavaScript code from the RoR project

$('#error-container').html("<%= j (render partial: 'layouts/errors', layout: false) %>");
$('#login-link').hide();
$('#login-container').hide();
$('#signup-container').html("<%= j (render partial: 'sign_up_form', layout: false) %>");
$('#signup-container').slideDown();
