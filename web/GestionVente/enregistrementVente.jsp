<%-- 
    Document   : enregistrement
    Created on : Mar 31, 2022, 7:51:30 PM
    Author     : nheli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="enregistrementVenteStyle.css">
        <link href="../header_footer/footerStyle.css" rel="stylesheet" type="text/css"/>
        <link href="../header_footer/headerStyle.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        
        <%@include file="../header_footer/header.jsp"%>
        
        <div id="Message">
       <%
            String alerte=(String)request.getAttribute("message");
          if(alerte!=null){
              out.println(alerte+"<br/>");
           }
          %>

        </div>
          
        <div id="contenue">
          <form autocomplete="off"  method="post" action="Traitement.jsp">
		
	<nav class="formu">
            <fieldset style="background-color:  #ebbe4a;" >
            <legend><h1>Formulaire d'enregistrement Vente Produits</h1></legend> 
        <div id="principal">
       <div>
         <label for="case1">Id</label>
         <input type="text" name="id" class="case1" disabled>
         <p></p>
       </div>

<div>
    <label for="case1">Nom Complet Client</label>
    <input type="text" name="nomComplet" class="case2" required/>
    <p></p>

</div>

<div>
    <label for="case1">Code Produits</label>
    <input type="text" name="Codeproduit" class="case3">
     <p></p>        

</div>

<div>
<label for="case1">Mode de Paiment</label>
<select name="modePaiement" class="case4" required/>
  <option>Credit</option>
  <option>Cash</option>
  <option>Cheque</option>
  <option>Carte Credit</option>
  <option>Carte Dedit</option>
</select>
<!--<input type="text" name="nom" class="case">-->
<p></p>
</div>

<div>    
<label for="case1">Date Vente</label>
<input type="date" name="dateVente" class="case5" required/>
<p></p>
</div>

	
<div>
<button type="submit" id="valider">Valider</button>
</div>

</div>
</fieldset>
 
</nav>

</form>
        </div>          
    </body>
</html>
