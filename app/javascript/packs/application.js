import "bootstrap";
import '@client-side-validations/client-side-validations';
import '@client-side-validations/simple-form/dist/simple-form.bootstrap4';
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/mapbox.js';

// const flatpickr = require("flatpickr");

initMapbox();


const imgBtn = document.querySelector('.img__btn')

if(imgBtn !== null) {
  imgBtn.addEventListener("click", (event) => {
    console.log(event.currentTarget);
    document.querySelector('.cont').classList.toggle('s--signup');
  });
}

const searchQuery = $('#query')

if(searchQuery !== null) {
  searchQuery.focus(function()
  {
    $(this).animate({ width: '+=100' }, 'slow');
  }).blur(function()
  {
    $(this).animate({ width: '-=50' }, 'slow');
  });
}

// const datePicker = document.querySelector('#flatpickr-input')

// if(datePicker !== null) {
//   flatpickr(datePicker, {});
// }



