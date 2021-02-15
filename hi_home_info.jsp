<%@page language="java" import="java.sql.*" session="true">
    <%! Connection con=null;
        Statement st=null;
        ResultSet rs=null;
        %>
<html>
    <head>
        <style>
			
			
			.border
		{
			width:960px;
            height:517px;
			margin-top:-10px;
			margin-left:-8px;
			padding: 5px 16px 5px;
			 box-shadow:0px 0px 10px black;
     background-color:#4EB1BA;
		}
			
         .main_info_student
            {
				background-color:#222930;
            width:960px;
            height:490px;
            margin-left: 0px;
            margin-top: 8px;
			/*border: none;*/
				
				
            }
             .h
            {
				
                margin-left:20px;
                font-size: 40px;
				 margin-top: 2px;
				width: 390px;
				height: 40px;
				color:slategrey;
				text-shadow:0px 0px 10px black;
            }

			.Name_text
            {
				/*border:1px solid green;*/
                margin-top:-45px;
				margin-left:55px;
                font-size: 40px;
				width: 500px;
				height: 40px;
				
            }

            .detail
            {
                border:2px solid #4EB1BA;
                width:930px;
                height:400px;
                margin-left:12px;
				color:white;
            }
		
		input[type="file"]
        {
       
        position:absolute;
        top: 120px;
        left:725px;
        border: 1px solid #4EB1BA;
        padding-top: 100px;
        margin: auto;
        width:220px;
        height:220px;
        
        } 
        	
			
		.f1 input[type="text"]
	{
		margin-left:30px; 
		padding:8px;
		display:block;
		border:none;
		border-bottom:1px solid black;
		width:10%;
		transition:width 0.4s ease-in-out
	}
	
	.f1 input[type="text"]:focus
	{
		width:20%;
		!important
	}
	h4{
		margin-left: 20px;
	  }
			
	input[type="button"]
		{
		border:1px solid #4EB1BA;
		/*border:none;*/
		width:100px;
		height:20px;
		font-weight:bold;
		background-color:#222930;
		margin-left:800px;
		margin-top:20px;
		color:#4EB1BA;	
		}
			
	input[type="button"]:hover
		{
		box-shadow:3px 5px 10px black;
		color:white;
		border:1px solid white;
		}		
        </style>
    </head>
    
 <body>
	 <div class="border">
   <div class="main_info_student">
	   <h1 class="h">Hi,<div class="Name_text">Name here </div> </h1>
       <div class="detail">
        <div class="a1">
          
                
          <!--- image---->
      <input type="file" value="image">
      <br>
          
			<!---Student Father name---->
			
		  <h4>Father's Name:</h4><!--<p class="father_name"></p>-->
        
          <!----Gender---->
		  <h4> Gender :</h4>
        
          <!---Date of barth--->
		  <h4> D.O.B: </h4>
        
          <!---Student ID--->
		  <h4> Student ID: </h4>
       
        <!--Phone Number-->
		  <h4>Phone Number: </h4> 
       
        <!---Branch -->
		  <h4> BRANCH: </h4>   
        
		<!----Complain Status---->
		  <h4> Complain Status :</h4>
			
        <!---Passwod--->
		  <h4> Password: </h4> 
     </div>
		   <input type="button" value="Edit">
		  </div>
	   </div>
		 </div>
 </body>
</html>