<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>header</title>
        <link href="css/bootstrap.css" type="text/css" rel="stylesheet">
        <link href="js/bootstrap.js" type="text/js" rel="stylesheet">
    </head>
    <body class="container-fluid">
<style>
    header{
    position:relative;
    background-color:white;
    height: 100%;
    width: 100%;
    margin-top: 2rem;
    display: flex;

}
.headerleft{
    width:61%;
    
    float: left;
}
#head{
    padding-top:2%;
}
.icon{
  /*  padding-left: 8rem;*/
    padding-top: 2%;

}
.moii{
    margin-bottom: 5%;
}
#icon{
    height:100%;
    width: 100%;
    float: right;
    padding-top: 2%;
}
.headerright{
    width:38%;
    float: right;
}

/* header right side last div codding*/
#bottun{
       height:16.5%;
       width: 100%;
       background-color:black;
       position: relative; 
       border-radius: 10px;
}
        </style>
     <header class="container-fluid" id="header" style="height:100%; width:100%;">
        <div class="headerleft">
            <div id="img" style="width:33%; height:100%; float: left;">
                <img id="icon" class="img-fluid" src="image\\icon.jpg">
            </div>

            <div id="head" style="width:64%;float: right;">
               <h1 style="padding-top:4%;"> Moii  Portal</h1>
                <span
                    style="background-color:rgb(245,245,245); width:25px; height:23px;margin-left:4px; border-radius:3px;font-size:small; color: gray;padding-top:2px;">
                    <img src="image\flge.png" class="img-fluid" style="width:19px;height:15px;padding-bottom:5px;">
                    AE
                </span>

                <span
                    style="background-color:rgb(245,245,245); width:25px; height:22px;margin-left:4px; border-radius:5px;font-size:small; color:black;padding-top:2px;">
                    <img src="image\coin.jpg" class="img-fluid" style="width:15px;height:20px;padding-bottom: 5px;">
                    1Yer
                </span>

                <span style="margin-top:5px; margin-left:5px;color:gray;font-size: 15px;height:20px;width: 2000px;">
                    <svg style="padding-top:3px;" width="16" height="16" xmlns="http://www.w3.org/2000/svg">
                        <g fill="none" fill-rule="evenodd">
                            <path d="M0 0h16v16H0z" />
                            <path
                                d="M11.666 9.5a2.16 2.16 0 0 0 1 .16v3.007a1 1 0 0 1-1 1h-3v-2.334h-1v2.334h-3a1 1 0 0 1-1-1V9.609a2.173 2.173 0 0 0 1 0v3.058h2v-2.334h3v2.334h2V9.5zM11.338 3a1 1 0 0 1 .86.488l1.59 2.67h-.005a1.73 1.73 0 0 1-2.845 1.921 1.88 1.88 0 0 1-1.371.59c-.564 0-1.07-.246-1.416-.638a1.882 1.882 0 0 1-1.415.639 1.88 1.88 0 0 1-1.371-.591 1.73 1.73 0 0 1-2.747-2.09l1.337-2.466A1 1 0 0 1 4.835 3h6.503zm0 1H4.834L3.476 6.504l-.023.035a.73.73 0 0 0 1.16.88l.723-.826.756.799a.882.882 0 0 0 .644.278c.259 0 .498-.11.666-.3l.75-.85.75.85c.167.19.406.3.665.3a.88.88 0 0 0 .644-.278l.755-.8.724.828a.73.73 0 0 0 1.201-.81l-.011-.022L11.338 4z"
                                fill="#333" fill-rule="nonzero" />
                        </g>
                    </svg>
                    Trading Company
                </span>
                <p style="font-size:12px; color:gray;margin-left:3px;">Main Products:MacBook,iMac,iPad
                    Pro,iPhone,AirPods</p>
            </div>
        </div>
        <div class="headerright">
            <div class=" contactarea" style=" width:20% ;padding: 2%; width:68%;float:right; height:100%">
                <a type="button"  href="login.jsp" class="text-center bg-warning"
                    style="border-radius: 25px;margin-bottom: 2%; height:17%; width:50%;  padding-bottom: 0.8%; font-family: serif; border:none; color: white; text-decoration: none;">Login</a><br>
                    <a type="button" href="contact.jsp" class="text-secondary bg-light text-center"
                    style="border-radius: 25px;margin-bottom: 2%;  height:17%;width:50%; padding-bottom:0.8%; border:none;font-family: serif; ">Chat Now</a><br>
                <a type="button" href="#" class="bg-muted text-center" id="follow"
                    style="border-radius: 25px; border: none;  height:17%; width:50%; color: gray;  padding-bottom:0.8%;  font-family: serif;"onclick='document.getElementById("follow").innerHTML = "Welcome.."'>follow</a>

            </div>
        </div>
        </div>
    </header>
    </body>
</html>
