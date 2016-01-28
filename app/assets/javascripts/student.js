$(document).ready(function() {
  $('#student_status').mask("99");

  $('#new_student').submit(function(e) {
    e.preventDefault();

    var student_name = $('#student_name').val();
    var student_register_number = $('#student_register_number').val();
    var student_status = $('#student_status').val();

    if (student_name === '') {
      return alert("Please put a name.");
    }
    if (student_name.length > 45) {
      return alert("Name too long.");
    }
    if (student_register_number === '') {
      return alert("Please put a register number.");
    }
    if (student_register_number.length > 45) {
      return alert("Register number too long.");
    }
    if (student_status === '') {
      return alert("Please put a status.");
    }

    this.submit();
  });
});
