// Get the modal
var myRes = document.getElementById('myResponce');

// Get the button that opens the myRES
var btn = document.getElementById("myBtn2");



// When the user clicks the button, open the modal 
btn.onclick = function() {
    myRes.style.display = "block";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == myRes) {
        myRes.style.display = "none";
    }
}