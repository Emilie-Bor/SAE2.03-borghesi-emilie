import { Movie } from "../Movie/script.js";

let templateFile = await fetch("./component/MovieCategory/template.html");
let template = await templateFile.text();

let templateLiFile = await fetch("./component/MovieCategory/templateLi.html");
let templateLi = await templateLiFile.text();

let MovieCategory = {};

MovieCategory.format = function (data, favorites) {
  let html = template;
  //  html = html.replaceAll("{{cssClass}}", css);
  let menuHTML = "";

  let Li = templateLi;
    Li = Li.replaceAll("{{categoryName}}", "💛 Mes favoris");
    let favmoviesHTML = "";
    if (!favorites || favorites.length === 0) {
        favmoviesHTML = "<p class='movie-category__unavailable'>Aucun film en favori pour l'instant.</p>";
    } 
    else {
        favmoviesHTML = Movie.format(favorites);
    }
    Li = Li.replaceAll("{{movies}}", favmoviesHTML);
    menuHTML += Li;

  for (let category of data) {
    let li = templateLi;
    li = li.replaceAll("{{categoryName}}", category.name);

    let moviesHTML = "";
    if (category.movies.length === 0) {
      moviesHTML =
        "<p class='movie-category__unavailable'>Aucun film disponible pour votre tranche d'âge.</p>";
    } else {
      moviesHTML = Movie.format(category.movies);
    }
    li = li.replaceAll("{{movies}}", moviesHTML);

    menuHTML += li;
  }
  return html.replaceAll("{{movieCategories}}", menuHTML);
};

export { MovieCategory };
