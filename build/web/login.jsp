<%-- 
    Document   : login
    Created on : Apr 4, 2022, 3:07:29 AM
    Author     : nheli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="style.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
        <link href="loginStyle.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
    <header>
     <nav id="entete">

        <div id="logo_princ">
          <img class="logo" src="imge/produit.jpg">
           <h2> Nhel's Produits Alimentaire est la pour vous servir</h2>
        </div>
        
     </nav>
    </header> 
        
    <form method="post" action="connexion.jsp">
      <div id="corp">
        
        <div id="principale">
	     <!-- Contenue gauche -->
             
 	<div id="gauche">
 	  <h1>Bienvenue</h1>
 	  <p class="texte">Nous sommes heureux de vous revoir!</p>
          <p class="texte">Saisissez votre nom et mot de passe pour se connecter!</p>
          
          <label>NOM D'UTILISATEUR</label>
	  <input type="text" Name="nomUtilisateur">
          <p></p>

	  <label>MOT DE PASSE</label><br>
          <input type="password" name="pass"> <br>
	  <a class="password" href="#">Vous avez oublie votre mot de passe?</a>
          <p></p>
		
          <button type="submit">Login</button>
	</div>

	     <!-- Contenue droite -->

	<div class="droite">

	  <div id="rightbox">
		 <img class="foto" src="imge/download.png" >
		 <h2 >Se Connecter avec le Code QR</h2>
	  </div>

          <p class="texte2">Scannez ceci avec l'application <i>Nhel's Produits Alimentaire</i> pour vous connecter instantanement</p>
        </div>
        
      </div>

     </div>
    </form>
            
        
            
             <%--<%@include file="footer.jsp"%>--%>

             
    </body>
</html>
