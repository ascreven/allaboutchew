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
$(document).ready(function(){
  $(".test_ajax_get").on("click", function(){
    $.ajax({
      type: 'GET',
      dataType: 'json',
      url: "http://api.petfinder.com/pet.find?format=json&key=5dd75b08057fefb722b816d1a75ee6b4&callback=?&location=20010"
    }).done(function(response) {
      console.log(response);
      console.log(response.petfinder.pets.pet[0].name);
      // console.log(response.html)
      $( "<h1>" ).text( response.petfinder.pets.pet[0].name.$t).appendTo( "body" );
$( "<div class=\"content\">").html( response.html ).appendTo( "body" );
    }).fail(function(response){
      console.log("Ajax get request failed.");
    });
  });
});
