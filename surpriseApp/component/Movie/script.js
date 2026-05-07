let templateFile = await fetch("./component/Movie/template.html");
let template = await templateFile.text();

let templateLiFile = await fetch("./component/Movie/templateLi.html");
let templateLi = await templateLiFile.text();

let Movie = {};

Movie.format = function (data, tab) {

  let html = template;
//  html = html.replaceAll("{{cssClass}}", css);

  if (data.length == 0){
    return html.replaceAll("{{itemMovie}}", "<li class='movie__unavailable'>Aucun film n'est disponible aujourd'hui.</li>");
  }
  else{
    let menuHTML = "";
    for (let movie of data) {
        let li = templateLi;
        li = li.replaceAll("{{nameMovie}}", movie.name);
        li = li.replaceAll("{{imgMovie}}", "../server/images/" + movie.image);
        li = li.replaceAll("{{id}}", movie.id);
        menuHTML += li;
    }
    html = html.replaceAll("{{itemMovie}}", menuHTML);

    return html;
  }
};

export { Movie };