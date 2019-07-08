document.addEventListener('DOMContentLoaded', function() {

  // イベントを中断
  let abort = function(event) {
    event.stopPropagation();
    event.preventDefalut();
  };

  // index.htmlの場合
  var target = document.getElementById('submit-contact');
  if (!target) {
    // name, e-mail, massageが空欄の場合アラート
    let contactFormCheck = function() {
      let name = document.getElementById('name').value;
      let email = document.getElementById('email').value;
      let message = document.getElementById('message').value;
      if (!name) {
        window.alert('Name is not entered.');
        abort(target);
        return false;
      }
      if (!email) {
        window.alert('E-mail is not entered.');
        abort(target);
        return false;
      }
      if (!message) {
        window.alert('Message is not entered.');
        abort(target);
        return false;
      }
      return true;
    };
    target.addEventListener('submit', contactFormCheck, false);
  }

  // id, passwordが空欄の場合アラート
  let loginFormCheck = function() {
    let userid = document.getElementById('userid').value;
    let password = document.getElementById('password').value;
    if (!userid) {
      window.alert('ID is not entered.');
      abort();
      return false;
    }
    if (!password) {
      window.alert('Password is not entered.');
      abort();
      return false;
    }
    return true;
  };
  document.getElementById('submit-login').addEventListener('submit', loginFormCheck, false);

}, false);
