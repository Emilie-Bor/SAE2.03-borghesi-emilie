let templateFile = await fetch("./component/NavBar/template.html");
let template = await templateFile.text();

let templateLiFile = await fetch("./component/NavBar/templateLi.html");
let templateLi = await templateLiFile.text();

let NavBar = {};

NavBar.format = function (hAbout, hHome, profiles) {
  let html = template;
  html = html.replace("{{hAbout}}", hAbout);
  html = html.replace("{{hHome}}", hHome);

  let currentProfile = profiles.length > 0 ? profiles[0] : "";
  let currentProfileHTML = "";
  if (currentProfile != "") {
    currentProfileHTML = `<img class="profile-dropdown__avatar" src="../server/images/${currentProfile.avatar}" onerror="this.src='../server/images/default-avatar.jpg'" alt="${currentProfile.name}" />
        <span>${currentProfile.name}</span>`;
  }
  else {
    currentProfileHTML = `<span>Choisissez un profil</span>`;
  };
  html = html.replaceAll("{{currentProfile}}", currentProfileHTML);

  let menuHTML = "";
  for (let profile of profiles) {
    let li = templateLi;
    li = li.replaceAll("{{profileId}}", profile.id);
    li = li.replaceAll("{{profileName}}", profile.name);
    li = li.replaceAll("{{profileAvatar}}", profile.avatar ? "../server/images/" + profile.avatar : "../server/images/default-avatar.jpg");
    menuHTML += li;
  };
  
  html = html.replaceAll("{{currentProfile}}", currentProfile);
  html = html.replaceAll("{{profileItem}}", menuHTML);

  return html;
};

export { NavBar };
