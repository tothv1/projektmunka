var oldId = null;
function megjelenites(id) {
    if(oldId != null) {
        var oldElement = document.getElementById(oldId);
        oldElement.style.visibility = "hidden";
        oldElement.style.display = "none";
    }
    var element = document.getElementById(id);
    element.style.visibility = "visible";
    element.style.display = "flex";
    oldId = id;
}