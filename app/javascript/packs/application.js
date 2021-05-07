// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
import 'bootstrap';
//= require select2
// import {searchLogic} from '../components/search'

// document.addEventListener('turbolinks:load',()=>{
//   searchLogic();
// })
import { loadDynamicBannerText } from '../components/typed';
import { searchLogic } from '../components/search';

const form = document.getElementById('apimovies')
const input = document.getElementById('apisearch').value

document.addEventListener('turbolinks:load', () => {
  loadDynamicBannerText();
});
