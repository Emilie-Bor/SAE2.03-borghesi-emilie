let templateFile = await fetch("./component/Movie/template.html");
let template = await templateFile.text();

let templateLiFile = await fetch("./component/Movie/templateLi.html");
let templateLi = await templateLiFile.text();

let Movie = {};

Movie.format = function (data, tab) {

  let html = template;
//  html = html.replaceAll("{{cssClass}}", css);

  let menuHTML = "";
    for (let i of data.items) {
        let li = templateLi;
        li = li.replaceAll("{{nameMovie}}", data.name);
        li = li.replaceAll("{{imgMovie}}", "../server/images/" + data.image);
        menuHTML += li;
    }
    html = html.replaceAll("{{itemMovie}}", menuHTML);

    return html;
};

export { Movie };