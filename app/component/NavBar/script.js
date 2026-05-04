let templateFile = await fetch("./component/NavBar/template.html");
let template = await templateFile.text();

let templateLiFile = await fetch("./component/NavBar/templateLi.html");
let templateLi = await templateLiFile.text();

let NavBar = {};

NavBar.format = function (hAbout, hHome) {
  let html = template;
  html = html.replace("{{hAbout}}", hAbout);
  html = html.replace("{{hHome}}", hHome);

  let menuHTML = "";

  for (let item of profile) {
    let li = templateLi;
    li = li.replaceAll("{{profileName}}", item.name);

    menuHTML += li;
  }

  return html.replaceAll("{{profileItem}}", menuHTML);;
};

export { NavBar };
