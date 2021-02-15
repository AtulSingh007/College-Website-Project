  var bom1 = document.getElementById('effect1');
            var mybtn = document.getElementById("btn1");
            var span = document.getElementsByClassName("close1")[0];
            mybtn.onclick = function() {
               bom1.style.display = "block";
               }
            // When the user clicks on <span> (x), close1 the modal
            span.onclick = function() {
            bom1.style.display = "none";
             }
            // When the user clicks anywhere outside of the modal, close1 it
             window.onclick = function(event) 
             {
             if (event.target == bom1) 
              {
              bom1.style.display = "none";
               }
               }