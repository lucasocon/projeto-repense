$(document).ready(function() {

  $('#new_classroom').submit(function(e) {
    e.preventDefault();

    var classroom_student_id = $('#classroom_student_id').val();
    var classroom_course_id = $('#classroom_course_id').val();

    if (classroom_student_id === '') {
      return alert("Please choose a student.");
    }
    if (classroom_course_id === '') {
      return alert("Please choose a course.");
    }

    this.submit();
  });
});
