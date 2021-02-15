// Get the modal
var FaculyRes = document.getElementById('myResponce2');

// Get the button that opens the myRES
var btn = document.getElementById("myBtn1");



// When the user clicks the button, open the modal 
btn.onclick = function() {
    FaculyRes.style.display = "block";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == FaculyRes) {
        FaculyRes.style.display = "none";
    }
}