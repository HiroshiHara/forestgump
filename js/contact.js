document.addEventListener('DOMContentLoaded', function() {

  // name, e-mail, massageが空欄の場合アラート
  let isFormBlank = function() {
    let userId = document.getElementById('name').value;
    let password = document.getElementById('email').value;
    let message = document.getElementById('message').value;
    if (!userId) {
      window.alert('User ID is not entered.');
      return;
    }
    if (!password) {
      window.alert('Password is not entered.');
      return;
    }
    if (!message) {
      window.alert('Message is not entered.');
    }
  };
  document.getElementById('submit').addEventListener('click', isFormBlank, false);

}, false);
