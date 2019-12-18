import Typed from 'typed.js';

const loadDynamicHomeText = () => {
  new Typed('#home-typed-text', {
    strings: ["Residential Property", " Commercial Property", "Serviced Apartments"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicHomeText };
