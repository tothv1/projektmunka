var oldId = null;
function dropdown(id) {
    var classes = document.getElementsByClassName('dropdown-div');
    var element = null;
    for (let i = 0; i < classes.length; i++) {   
        var class1 = classes[i];
        if(class1.id == event.target.getAttribute("value")) {
            element = document.getElementById(event.target.getAttribute("value"));
            break;
        }
    }
    var button = document.getElementById(id);
    if(!element.style.display.includes("block")) {
        element.style.display = "block";
        button.innerHTML = button.textContent.replace("▼", "▲")
    } else {
        element.style.display = "none";
        button.innerHTML = button.textContent.replace("▲", "▼")
    }
}
/*▲▼*/
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
