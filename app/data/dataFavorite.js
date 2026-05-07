// URL où se trouve le répertoire "server" sur mmi.unilim.fr
let HOST_URL = "..";//"http://mmi.unilim.fr/~????"; // CHANGE THIS TO MATCH YOUR CONFIG

let DataFavorite = {};

DataFavorite.requestFavorites = async function(profileId){
    // fetch permet d'envoyer une requête HTTP à l'URL spécifiée. 
    // L'URL est construite en concaténant HOST_URL à "/server/script.php?direction=" et la valeur de la variable dir. 
    // L'URL finale dépend de la valeur de HOST_URL et de dir.
    let answer = await fetch(HOST_URL + "/server/script.php?todo=readfavorites&profile_id=" + profileId);
    // answer est la réponse du serveur à la requête fetch.
    // On utilise ensuite la méthode json() pour extraire de cette réponse les données au format JSON.
    // Ces données (data) sont automatiquement converties en objet JavaScript.
    let data = await answer.json();
    // Enfin, on retourne ces données.
    return data;
}

DataFavorite.addFavorite = async function(profileId, movieId) {
    let fdata = new FormData();
    fdata.append("profile_id", profileId);
    fdata.append("movie_id", movieId);
    let answer = await fetch(HOST_URL + "/server/script.php?todo=addfavorite", {
        method: "POST",
        body: fdata
    });
    let data = await answer.json();
    return data;
};

DataFavorite.removeFavorite = async function(profileId, movieId) {
    let fdata = new FormData();
    fdata.append("profile_id", profileId);
    fdata.append("movie_id", movieId);
    let answer = await fetch(HOST_URL + "/server/script.php?todo=removefavorite", {
        method: "POST",
        body: fdata
    });
    let data = await answer.json();
    return data;
};

export { DataFavorite };
