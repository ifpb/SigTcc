$(document).on('turbolinks:load', function() {
  $('#add_palavras').click(function(event){
    event.preventDefault();
    $(this).parent().before('<p id="remove"><input type="text" name="palavras[]"> '+
          '<span onclick="removerInput()" class="glyphicon glyphicon-remove" aria-hidden="true"></span></p>');

  });

  $('glyphicon glyphicon-remove').on('click', function() {
    $(this).parent().remove();
  })
});

function removerInput() {
  var parent = document.getElementById('remove');
  var parentePai = parent.parentNode;
  parentePai.removeChild(parent);
}
