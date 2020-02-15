import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Mister Cocktail"],
    typeSpeed: 100,
    loop: false
  });
}

export { loadDynamicBannerText };
