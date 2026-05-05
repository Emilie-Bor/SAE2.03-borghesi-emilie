let templateFile = await fetch("./component/NewMovieForm/template.html");
let template = await templateFile.text();

let templateLiFile = await fetch("./component/NewMovieForm/templateLi.html");
let templateLi = await templateLiFile.text();

let NewMovieForm = {};

NewMovieForm.format = function (data, handler) {
  let html = template;
  html = html.replaceAll("{{handler}}", handler);

  let menuHTML = "";
  for (let category of data) {
    let li = templateLi;
    li = li.replaceAll("{{categoryId}}", category.id);
    li = li.replaceAll("{{categoryName}}", category.name);

    menuHTML += li;
  }
  html = html.replaceAll("{{categoriesMovie}}", menuHTML);
  return html;
};

export { NewMovieForm };
