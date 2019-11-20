import "bootstrap";
import '@client-side-validations/client-side-validations';
import '@client-side-validations/simple-form/dist/simple-form.bootstrap4';


document.querySelector('.img__btn').addEventListener('click', function() {
  document.querySelector('.cont').classList.toggle('s--signup');
});

