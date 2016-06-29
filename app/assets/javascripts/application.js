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

$(document).on('page:change', function() {
  $("#route-container a").draggable({
    helper: "clone"
  });

  $( ".droppable" ).droppable({
    drop: function(event, ui){
      $(this).append(ui.draggable);
      var route_id = $(ui.draggable).find('.route-name').attr('id')
      var user_id = $(this).attr('id');
      var destination = '/routes/' + route_id + '/edit';
      var data = { user_id: user_id, trigger: true };
      // console.dir(data); 

      var request = $.ajax({
            method: "POST",
            url: destination,
            data: data
          });
      //     request.done(function(response){
      //       console.log(response);
      //     });

    },
  });

  $( "#route-container" ).droppable({
    drop: function(event, ui){
      $(this).prepend(ui.draggable);
    },
  });

});



////////// ORIGINAL CONCEPT /////////////////////////////   
  // $( ".droppable" ).droppable({
  //   drop: function(event, ui){
  //     $(this).append(ui.draggable);
  //     var current_total = $(this).find('.total');
  //     var somethingstupid = ui.draggable.clone();
  //     var $row = $(ui.draggable).parent().parent();
  //     var prices = $row.find('.p').text().split("$");
  //     var priceNumbers = prices.map(function(e) {return Number(e)});
  //     var sum = priceNumbers.reduce(function(c, t){return c + t})
  //     console.log(sum);
  //     $row.find(".total").html(`$${sum}`);
  //   },
  // });

  // $( "#route-container" ).droppable({
  //   drop: function(event, ui){
  //     var current_total = $(this).find('.total');
  //     var somethingstupid = ui.draggable.clone();
  //     var $row = $(ui.draggable).parent().parent();
  //     var prices = $row.find('.p').text().split("$");
  //     var priceNumbers = prices.map(function(e) {return Number(e)});
  //     var sum = priceNumbers.reduce(function(c, t){return c + t});
  //     console.log(sum);
  //     $row.find(".total").html(`$${sum}`);
  //     $(this).prepend(ui.draggable);
  //   },
  // });

