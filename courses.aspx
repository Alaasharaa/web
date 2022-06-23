<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="courses.aspx.cs" Inherits="soha.courses" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Education WebSite</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,800&display=swap" rel="stylesheet">
<link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="./css/courses.css">

 
    
<body>
    <nav>
<div class="container nav__container">

<ul class="nav__menu">

    <asp:Label runat="server" ID="username"></asp:Label>
  
</ul>

<button id="open-menu-btn" ><img src="images/categories.png"></button>
<button id="close-menu-btn"><img src="images/close.png"></button>
</div>
    </nav>





<header>



    <section class="categories">
        <div class="container categories__container">
        
        <div class="categories__left">
            <img src="./images/fun-learning-260nw-104023823.webp" width="300px" height="300px">
         
           
           
        </div>
        <div class="categories__right">
        
        <article class="category">
            <a href="./stories.html" class="category__icon"><img src="images/love-story.png" style=" width: 25px; height:25px" alt=""></a>
            <h5>Stories</h5> 
        <p>Download and read your favorite stories</p>
            
            </article>
        
                    <article class="category">
                     <a href="./musics.html" class="category__icon"><img src="images/musical.png " style=" width: 25px; height:25px" alt=""></a>
                        <h5>Music</h5>
                        <p>Download and listen to your favorite music.</p>
                        
                        
                        </article>
                       
                            <article class="category">
                                <a href="./movies.html" class="category__icon"><img src="images/clapper-board.png" style=" width: 25px; height:25px" alt=""></a>
                                <h5>Movies</h5>
                                <p>Download and watch your favorite movie.</p>
                                
                                </article>

                        
        
                       
                            
                           
        </div>
        
        
        </div>
        
        
        </section>
        
        
        
   
        
        
        <script src="./main.js"></script>
        
        


</header>









</body>
</html>