let templateFile = await fetch("./component/EditProfileForm/template.html");
let template = await templateFile.text();
 
let EditProfileForm = {};
 
EditProfileForm.format = function(profiles, handler) {
    let html = template;

    let menuHTML = "";
    for (let profile of profiles) {
        menuHTML += `<option value="${profile.id}">${profile.name}</option>`;
    }
 
    html = html.replaceAll('{{profileOptions}}', menuHTML);
    html = html.replaceAll('{{handler}}', handler);
    
    return html;
};
 
export { EditProfileForm };