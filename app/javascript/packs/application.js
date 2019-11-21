import "bootstrap";
import '@client-side-validations/client-side-validations';
import '@client-side-validations/simple-form/dist/simple-form.bootstrap4';
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/mapbox.js';

// document.querySelector('.img__btn').addEventListener('click', function() {
//   document.querySelector('.cont').classList.toggle('s--signup');
// });



initMapbox();

