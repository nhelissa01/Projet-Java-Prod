<%-- 
    Document   : AjouterSousMesure
    Created on : Mar 31, 2022, 11:27:37 PM
    Author     : nheli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="AjouterSousMesureStyle.css">
        <link href="../header_footer/footerStyle.css" rel="stylesheet" type="text/css"/>
        <link href="../header_footer/headerStyle.css" rel="stylesheet" type="text/css"/>
        <title>Ajouter Sous-Mesure</title>
    </head>
    <body>
       <%@include file="../header_footer/header.jsp"%>
       <div id="contenue">
           
       <div id="Message">
       <%
            String alerte=(String)request.getAttribute("message");
          if(alerte!=null){
              out.println(alerte+"<br/>");
           }
          %>

        </div>
          
       <form autocomplete="off"  method="post" action="Traitement.jsp">
		
	<nav class="formu">
            <fieldset style="background-color:  #ebbe4a;" >
            <legend><h1>Formulaire d'enregistrement De Sous-Mesure</h1></legend> 
        <div id="principal">
       <div>
         <label for="case1">Code</label>
         <input type="text" name="code" class="case1" disabled>
         <p></p>
       </div>

<div>
    <label for="case1">Code Produit</label>
    <input type="text" name="codeProduit" class="case2" required/>
    <p></p>

</div>

<div>
    <label for="case1">Nom Sous Mesure</label>
    <input type="text" name="nomSousMesure" class="case">
     <p></p>        

</div>
            
 <div>
    <label for="case1">Prix Sous Mesure</label>
    <input type="number" name="prixSousMesure" class="case">
     <p></p>        

</div>

<div>    
<label for="case1">Quantite Sous Mesure </label>
<input type="number" name="quantiteSousMesure" class="case3" required/>
<p></p>
</div>

	
<div>
<button type="submit" id="valider">Valider</button>
<!--<button type="submit" id="annuler">Annuler</button>-->
</div>

</div>
</fieldset>
 
</nav>

</form>
    
       </div>
       <%@include file="../header_footer/footer.jsp"%>

    </body>
</html>
