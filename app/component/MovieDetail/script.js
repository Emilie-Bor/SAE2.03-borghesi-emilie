let templateFile = await fetch("./component/MovieDetail/template.html");
let template = await templateFile.text();

let MovieDetail = {};

MovieDetail.format = function (data) {
  let html = template;

  html = html.replaceAll("{{imgMovie}}", "../server/images/" + data.image);
  html = html.replaceAll("{{nameMovie}}", data.name);
  html = html.replaceAll("{{yearMovie}}", data.year);
  html = html.replaceAll("{{descMovie}}", data.description);
  html = html.replaceAll("{{directorMovie}}", data.director);
  html = html.replaceAll("{{categoryMovie}}", data.id_category);
  html = html.replaceAll("{{ageMovie}}", data.age);
  html = html.replaceAll("{{trailerMovie}}", data.trailer);

  return html;
};

export { MovieDetail };
