let templateFile = await fetch("./component/MovieCategory/template.html");
let template = await templateFile.text();

let templateLiFile = await fetch("./component/MovieCategory/templateLi.html");
let templateLi = await templateLiFile.text();

let MovieCategory = {};

MovieCategory.format = function (data, tab) {
  let html = template;
  //  html = html.replaceAll("{{cssClass}}", css);

  let menuHTML = "";
  for (let i = 0; i < data.length; i++) {
    let movie = data[i];
    let li = templateLi;
    li = li.replaceAll("{{categoryName}}", movie.name);
    li = li.replaceAll("{{movies}}", movie.image);
    menuHTML += li;

    html = html.replaceAll("{{movieCategories}}", menuHTML);

    return html;
  }
};

export { MovieCategory };
