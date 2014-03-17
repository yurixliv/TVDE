app.controller('MainController', ['$scope', function($scope) {

}]);

var $head = $('.ha-header');
$('.ha-waypoint').each( function(i){
  var $el = $(this),
    animClassDown = $el.data('animateDown'),
    animClassUp = $el.data('animateUp');

  $el.waypoint( function( direction ) {
    if( direction === 'down' && animClassDown ) {
      $head.attr('class', 'ha-header ' + animClassDown);
    }
    else if( direction === 'up' && animClassUp ){
      $head.attr('class', 'ha-header ' + animClassUp);
    }
  }, { offset: '100%' } );
} );


// $(document).ready( function(){
//   // Cache selectors
// var lastId,
//     topMenu = $("#top-menu"),
//     topMenuHeight = topMenu.outerHeight()+15,
//     // All list items
//     menuItems = topMenu.find("a"),
//     // Anchors corresponding to menu items
//     scrollItems = menuItems.map(function(){
//       var item = $($(this).attr("href"));
//       if (item.length) { return item; }
//     });

// // Bind click handler to menu items
// // so we can get a fancy scroll animation
// menuItems.click(function(e){
//   var href = $(this).attr("href"),
//       scroll_to = $(this).attr("scroll"),
//       offsetTop = href === "#" ? 0 : $(href).offset().top-topMenuHeight+1;

//   console.log('ok2');
//   $('html, body').stop().animate({
//       scrollTop: offsetTop
//   }, 300);
//   e.preventDefault();
// });

// // Bind to scroll
// $(window).scroll(function(){
//    // Get container scroll position
//    var fromTop = $(this).scrollTop()+topMenuHeight;
//    console.log('ok2');
//    // Get id of current scroll item
//    var cur = scrollItems.map(function(){
//      if ($(this).offset().top < fromTop)
//        return this;
//    });
//    // Get the id of the current element
//    cur = cur[cur.length-1];
//    var id = cur && cur.length ? cur[0].id : "";

//    if (lastId !== id) {
//        lastId = id;
//        // Set/remove active class
//        menuItems
//          .parent().removeClass("active")
//          .end().filter("[href=#"+id+"]").parent().addClass("active");
//    }
// });
// });
