// Get the modal
var myRES = document.getElementById('myResponce');

// Get the button that opens the myRES
var btn = document.getElementById("myBtn");



// When the user clicks the button, open the modal 
btn.onclick = function() {
    myRES.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
    myRES.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == myRES) {
        myRES.style.display = "none";
    }
}