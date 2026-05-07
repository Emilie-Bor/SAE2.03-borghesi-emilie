let templateFile = await fetch("./component/MovieDetail/template.html");
let template = await templateFile.text();

let MovieDetail = {};

MovieDetail.format = function (data, favorites) {
  let html = template;

  html = html.replaceAll("{{imgMovie}}", "../server/images/" + data.image);
  html = html.replaceAll("{{nameMovie}}", data.name);
  html = html.replaceAll("{{yearMovie}}", data.year);
  html = html.replaceAll("{{descMovie}}", data.description);
  html = html.replaceAll("{{directorMovie}}", data.director);
  html = html.replaceAll("{{categoryMovie}}", data.category_name);
  html = html.replaceAll("{{ageMovie}}", data.min_age);
  html = html.replaceAll("{{trailerMovie}}", data.trailer);
  html = html.replaceAll("{{idMovie}}", data.id);

  let isFavorite = favorites.some((fav) => fav.id_movie == data.id);
  if (isFavorite) {
    html = html.replaceAll("{{favoriteLabel}}", "❌ Retirer des favoris");
    html = html.replaceAll("{{favoriteHandler}}", "C.handlerRemoveFavorite(" + data.id + ")");
  } 
  else {
    html = html.replaceAll("{{favoriteLabel}}", "♡ Ajouter aux favoris");
    html = html.replaceAll("{{favoriteHandler}}", "C.handlerAddFavorite(" + data.id + ")");
  }

  return html;
};

export { MovieDetail };
