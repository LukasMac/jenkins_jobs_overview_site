jQuery( document ).ready(function() {
  $('.console-output').each(function (index, obj) {
    obj.scrollTop = obj.scrollHeight;
  });

  $('.job-status').click(function() {
    $( this ).parent().next().children('.job-builds').toggle();
    console.log($( this ).children('.job-builds'));
  });

  $('.job-builds').hide();
});