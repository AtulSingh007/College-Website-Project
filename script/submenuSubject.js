var acc = document.getElementsByClassName("accordion1");
var i;

for (i = 0; i < acc.length; i++) {
    acc[i].onclick = function(){
        this.classList.toggle("active");
        var panel1 = this.nextElementSibling;
        if (panel1.style.display === "block") {
            panel1.style.display = "none";
        } else {
            panel1.style.display = "block";
        }
    }
}