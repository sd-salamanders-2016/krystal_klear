// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(function(){
  $("#route-container a").draggable({
    helper: "clone",
  });

  $( ".droppable" ).droppable({
    accept: "a",
    drop: function(event, ui){
      alert("I'm in the mainframe!")
    }
  });
});

//   $( ".employee" ).droppable({
//     accept: ".route",
//     drop: function( event, ui ) {
//       var clone = $(ui.draggable).clone()
//       clone.appendTo('.employee :first-child');
//       clone.draggable({
//         helper: "clone",

//       });
//     }
//   });
// });


// $("#mydiv div:first-child").after(newDiv);
