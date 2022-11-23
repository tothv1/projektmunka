var oldId = null;
function dropdown() {
    var classes = document.getElementsByClassName('dropdown-div');
    var i = 0;
    while (classes[i].id != event.target.getAttribute("value")) {
        i++;
    }
    var element = document.getElementById(classes[i].getAttribute("id"));

    var button = document.getElementById(classes[i].getAttribute("id"));
    if(!element.classList.contains('show')){
        element.classList.toggle('show');
    } else {
        element.classList.remove('show');
    }
}
/*▲▼*/
function megjelenites(id) {
    if(oldId != null) {
        var oldElement = document.getElementById(oldId);
        oldElement.style.display = "none";
    }
    var element = document.getElementById(id);
    element.style.display = "block";
    oldId = id;
}

