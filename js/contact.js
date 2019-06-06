document.addEventListener('DOMContentLoaded', function() {

  // ユーザIDまたはパスワードが空欄の場合アラート
  let isFormBlank = function() {
    let userId = document.getElementById('user_id').value;
    let password = document.getElementById('password').value;
    if (!userId) {
      window.alert('User ID is not entered.');
      return;
    }
    if (!password) {
      window.alert('Password is not entered.');
      return;
    }
  };
  document.getElementById('submit').addEventListener('click', isFormBlank, false);

}, false);
