$(document).ready(function() {
  var question = $.trim($("#question_dropzone").html());
  var counter = 1;

  function updateDOM(){
    console.log("here");
    var placeholder = question;

    $(placeholder).find('input').attr('name', 'question'+counter+'[]');
    return placeholder;
  }


  $('#add_button').on('click', function(e){
    e.preventDefault();
    $("#question_dropzone").append(question);
    counter++;
  });

  $('#question_dropzone').on('click', '#remove_button', function(e){
    e.preventDefault();
    $(e.target).closest('#question_template').remove();
  });
});



