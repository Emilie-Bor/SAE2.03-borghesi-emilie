let templateFile = await fetch("./component/Movies/template.html");
let template = await templateFile.text();

let Movies = {};

Movies.format = function (data, tab) {
  let html = template;
  html = html.replaceAll("{{nameMovies}}", data.name);
  html = html.replaceAll("{{imgMovies}}", "../server/images" + data.image);
  return html;
};

export { Movies };