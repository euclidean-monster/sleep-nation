$(function () {
       // Ajout id pour chaque catégorie
       var n = 1;
       $( '.linklist ~ .category' ).each(function() {
          $(this).attr('id', 'cate'+n+'');
          n++;
       });
    });
