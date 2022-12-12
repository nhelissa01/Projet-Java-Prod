<%-- 
    Document   : enregristrementProduit
    Created on : Mar 30, 2022, 4:22:28 PM
    Author     : nheli
--%>

<%@page import="gestion_Produit.Produits"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css.css">
        <link href="../header_footer/footerStyle.css" rel="stylesheet" type="text/css"/>
        <link href="../header_footer/headerStyle.css" rel="stylesheet" type="text/css"/>
        <title>Enregistrement de Produits</title>
    </head>
    <body>
         <%@include file="../header_footer/header.jsp"%>
         
          <div id="tete">
              <div>
    <section id="image">

    </section>
                  </div>
          
   <div id="Message">
       <%
            String alerte=(String)request.getAttribute("message");
          if(alerte!=null){
              out.println(alerte+"<br/>");
           }
          %>

    </div>
       
    <div class="texte">
   <form method="post" action="Traitement.jsp">
		
	<nav class="formu">
            <fieldset style="background-color:  #ebbe4a; " >
            <legend><h1>Formulaire d'enregistrement de Produits</h1></legend> 
            
<div id="principal">

 <div class="gauche">
    <label for="case1">Code</label>
    <input type="text" name="code" class="case" disabled />
    <p></p>

    <label for="case1">Mesure</label>
    <input type="text" name="mesure" class="case" required/>
    <p></p>



    <label for="case1">Categorie</label>
    <input type="text" name="categorie" class="case" required/>
    <p></p>



   <label for="case1">Nom</label>
   <input type="text" name="nom" class="case" minlength="2" required/>
   <p></p>
 </div>

 <div class="droite">    
   <label for="case1">Prix Achat</label>
   <input type="number" name="PrixAchat" class="case" required/>
   <p></p>

    <label for="case1">Prix Vente</label>
    <input type="number" name="PrixVente" class="case" required/>
    <p></p>

    <label for="case1">Quantite</label>
    <input type="number" name="quantite" class="case" required/>
    <p></p>

    <label for="case1">Mode de Vente</label>
<select name="modeVente" class="case4" required/>
  <option>En Gros</option>
  <option>En Detail </option>
  <option>En Gros & En Detail</option>
</select>
     <p></p>

    <label for="case1">Date Enregistrement</label>
    <input type="date" name="Date_enregistrement" class="case" required/>
    <p></p>
  </div>



</div>

<div id="bouton">
    <button type="submit" id="valider">Valider</button>
    <!--<button type="submit" id="annuler">Annuler</button>-->
</div>
</fieldset>
 
</nav>

</form>
    </div>
</div>

        <%@include file="../header_footer/footer.jsp"%>
    </body>
</html>
