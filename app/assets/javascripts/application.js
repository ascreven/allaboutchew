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
//= require materialize-sprockets
//= require turbolinks
//= require_tree .
var ready;

ready = function (){
  $('.tabs-wrapper.row').pushpin({ top: $('.tabs-wrapper').offset().top});
};

// var navbar = $('.tabs-wrapper');
// navbar.pushpin({console.log(pushpin)})

$(document).ready(ready);
$(document).on('page:load', ready);


  // function pushpin(){
  //  $('.tabs-wrapper.row').pushpin({ top: $('.tabs-wrapper.row').offset().top });
    // $('.materialboxed').materialbox();
  // }

    // $('#nav-mobile-list').append('<li class="right">All About Chew</li>')
// $(document).ready(function(){
//   $.ajax({
//     type: 'GET',
//     dataType: 'json',
//     url: "http://api.petfinder.com/pet.find?format=json&key=5dd75b08057fefb722b816d1a75ee6b4&callback=?&location=20010"
//   }).done(function(response) {
//     console.log(response.petfinder.pets.pet[0].media.photos)
//     $( '<div class="container" id="pet-index-container">').appendTo( "body" );
//     $( '<div class="row" id="pet-index-row">').appendTo( "#pet-index-container" );
//     for(var i = 0; i < response.petfinder.pets.pet.length; i++) {
//       var col = $( '<div>', {'class':"col-md-3", 'id':i + 'col'});
//       $('#pet-index-row').append(col);
//       var caption = $( '<div>', {'class':"caption", 'id':i + 'cap'});
//       var pic = $( '<div>', {'class':"thumbnail", 'id':i + 'pic'});
//       col.append(
//         pic,
//         caption
//       )
//       caption.append($( '<img src="'+response.petfinder.pets.pet[i].media.photos.photo[3].$t+'" class="img-responsive" alt="Responsive image"/>'))
//       pic.append($( "<h2>" ).text( response.petfinder.pets.pet[i].name.$t))
//     }
//   }).fail(function(response){
//     console.log("Ajax get request failed.");
//     // });
//   });
// });
