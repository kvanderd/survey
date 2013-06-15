$(document).ready(function() {
  var question = $.trim($("#question_dropzone").html());
  var choice =  "<input type='text' name='form[][choice][]' value='Enter choice'>";

  $('#add_button').on('click', function(e){
    e.preventDefault();
    $("#question_dropzone").append(question);
  });

  $('#question_dropzone').on('click', '.remove_button', function(e){
    e.preventDefault();
    $(e.target).closest('#question_template').remove();
  });

  $('#question_dropzone').on('click', '#add_choice', function(e){
    e.preventDefault();
    $(e.target).closest('#choice_dropzone').append(choice);
  });
});



