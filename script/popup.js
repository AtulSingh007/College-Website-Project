  var bom = document.getElementById('effect');
            var mybtn = document.getElementById("btn");
            var span = document.getElementsByClassName("close")[0];
            mybtn.onclick = function() {
               bom.style.display = "block";
               }
            // When the user clicks on <span> (x), close the modal
            span.onclick = function() {
            bom.style.display = "none";
             }
            // When the user clicks anywhere outside of the modal, close it
             window.onclick = function(event) 
             {
             if (event.target == bom) 
              {
              bom.style.display = "none";
               }
               }