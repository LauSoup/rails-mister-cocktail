// app/javascript/components/init_select2.js
import $ from 'jquery';
import 'select2';

const initSelect2 = () => {
  $('.select2').select2();
};

const test = $('.select2');
console.log(test);

export { initSelect2 };
