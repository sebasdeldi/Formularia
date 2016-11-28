// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require bootstrap-sprockets
//= require forms
//= require grayscale

console.log("application.js loaded");

var showLogIn = function() {

  $(".work").on("click", function(event) {
    $(".login-section").show();
  });

};

$(document).ready(showLogIn);
$(document).on("page:load", showLogIn);



$(function() {
   $('.notice').delay(500).fadeIn('normal', function() {
      $(this).delay(1000).fadeOut();
   });
});

$(function() {
   $('.alert').delay(500).fadeIn('normal', function() {
      $(this).delay(1000).fadeOut();
   });
});