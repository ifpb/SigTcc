$(document).on('turbolinks:load', function() {
  $('#add_palavras').click(function(event){
    event.preventDefault();
    $(this).parent().before('<p><input type="text" name="palavras[]"> '+
          '<span class="glyphicon glyphicon-remove" aria-hidden="true"></span></p>');
  });

  $('span.glyphicon-remove').click(function(){
    $(this).parent().remove();
  })
});
