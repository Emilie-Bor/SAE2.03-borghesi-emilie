let templateFile = await fetch("./component/MovieCategory/template.html");
let template = await templateFile.text();

let templateLiFile = await fetch("./component/MovieCategory/templateLi.html");
let templateLi = await templateLiFile.text();

import { Movie } from "../Movie/script.js";

let MovieCategory = {};

MovieCategory.format = function (data) {
  let html = template;
  //  html = html.replaceAll("{{cssClass}}", css);

  let menuHTML = "";

  for (let category of data) {
    let li = templateLi;
    li = li.replaceAll("{{categoryName}}", category.name);
    let moviesHTML = Movie.format(category.movies); 
    li = li.replaceAll("{{movies}}", moviesHTML);

    menuHTML += li;
  }
  return html.replaceAll("{{movieCategories}}", menuHTML);
};

export { MovieCategory };
