import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Create a movie list", "Find a movie", "Bookmark it", "Enjoy"],
    typeSpeed: 100,
    loop: false
  });
}

export { loadDynamicBannerText };
