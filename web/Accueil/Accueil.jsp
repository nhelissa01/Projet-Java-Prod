<%-- 
    Document   : enregristrementProduit
    Created on : Mar 30, 2022, 4:22:28 PM
    Author     : nheli
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <link rel="stylesheet" href="accueilStyle.css">
        <link href="../header_footer/headerStyle.css" rel="stylesheet" type="text/css"/>
        <link href="../header_footer/footerStyle.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="../header_footer/header.jsp"%>
         
        <div id="tete">

         <section id="image">

         </section>

         <div class="texte">
	      <h1 class="welcome">Bienvenue chez Nhel's Produits Alimentaire</h1>
         </div>

        </div>
         
         <!--Contenue de la page-->
         
        <div id="contenue">

	  <div class="gauche">
		  <h1 class="para">Acheter vos produits alimentaire chez nous</h1>
		  <p> Nhel Produit Alimentaire  est une entreprise specialisee dans la vente des produits alimentaires. </p>
                  <p>Nous achetons nos produits en gros et les revend en gros et en details</p>
		  <p> Ici chez Nhel Produits Alimentaire, depuis bientot 2ans sur le terrain, nous nous engagons a donner des produits alimentaires de qualite a nos clients. Nous utilisons de bon ingredients, et nous nous rassurons que nos protuits sont en lieu sur🌾.🍅 🌞
			Sans oublie que nos produits sont sélectionnés auprès des meilleurs fournisseurs.
                        Via notre application web, vous pourrez acheter vos produits en toute securite.</p>
	  </div>

	  <div class="droite">
		 <img class="foto" src="../imge/patchwork.jpg">
	  </div>

        </div>
         
        <%@include file="../header_footer/footer.jsp"%>
    </body>
</html>
