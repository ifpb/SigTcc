$(document).on('turbolinks:load', function() {
  $('#add_palavras').click(function(event){
    event.preventDefault();
    $(this).parent().before('<p><input type="text" name="palavras[]"> '+
          '<a id="teste">Remover</a>');

  });

  $('#teste').click(function() {
    console.log("chamou");
    $(this).parent().remove();
  })
});
