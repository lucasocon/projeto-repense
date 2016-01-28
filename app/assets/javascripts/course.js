$(document).ready(function() {
  $('#course_status').mask("99");

  $('#new_course').submit(function(e) {
    e.preventDefault();

    var course_name = $('#course_name').val();
    var course_status = $('#course_status').val();
    var course_description = $('#course_description').val();

    if (course_name === '') {
      return alert("Please put a name.");
    }
    if (course_name.length > 45) {
      return alert("Name too long.");
    }
    if (course_status === '') {
      return alert("Please put a status.");
    }
    if (course_description === '') {
      return alert("Please put a description.");
    }
    if (course_description.length > 45) {
      return alert("Description too long.");
    }

    this.submit();
  });
});
