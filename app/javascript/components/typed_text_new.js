import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#typed-text', {
    strings: ["Fill information about your worst cocktail", "Fill information about your best cocktail of course."],
    typeSpeed: 50,
  });
}

// Pour mettre du text dans le champ search
// const loadDynamicSearchText = () => {
//   new Typed('#search_query', {
//     strings: ["Searching something?"],
//     typeSpeed: 50,
//   });
// }


export { loadDynamicBannerText };
// export { loadDynamicSearchText };
