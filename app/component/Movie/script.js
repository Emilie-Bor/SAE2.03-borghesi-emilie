let templateFile = await fetch("./component/Movie/template.html");
let template = await templateFile.text();

let templateLiFile = await fetch("./component/Movie/templateLi.html");
let templateLi = await templateLiFile.text();

let Movie = {};

Movie.format = function (data, tab) {

  let html = template;
//  html = html.replaceAll("{{cssClass}}", css);

  if (data.lenght == 0){
    return html.replace(
      "{{movie}}",
      "<p class='movie__unavalable'></p>"
    )
  }
  else{
    let menuHTML = "";
    for (let movie of data) {
        let li = templateLi;
        li = li.replaceAll("{{nameMovie}}", movie.name);
        li = li.replaceAll("{{imgMovie}}", "../server/images/" + movie.image);
        menuHTML += li;
    }
    html = html.replaceAll("{{itemMovie}}", menuHTML);

    return html;
  }
};

export { Movie };