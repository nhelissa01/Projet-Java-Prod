<%-- 
    Document   : AjouterSousMesure
    Created on : Mar 31, 2022, 11:27:37 PM
    Author     : nheli
--%>

<%@page import="java.io.IOException"%>
<%@page import="java.io.ObjectInputStream"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.io.EOFException"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="Gestion_Sous_Mesure.SousMesure"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="SupprimerSousMesureStyle.css">
        <link href="../header_footer/footerStyle.css" rel="stylesheet" type="text/css"/>
        <link href="../header_footer/headerStyle.css" rel="stylesheet" type="text/css"/>
        <title>Supprimer Sous Mesure</title>
    </head>
    <body>
       <%@include file="../header_footer/header.jsp"%>

        <div id="contenue">
            
       <form class="rech">   
          
         <label for="case1" class="recher_label">Code Produit</label>
         <input type="text" class="recher_input" name="codeRech" class="case" required/> 
         <button id="recher_button"> <a>Recherche</a></button>
           
       </form>
       
           <%
          ArrayList<SousMesure> pv=new ArrayList<SousMesure>();
          try{

          ObjectInputStream in=new ObjectInputStream(new FileInputStream("mesureFile.txt"));
          while(true){
          SousMesure pr=(SousMesure)in.readObject();
            pv.add(pr);
          }
          }catch(EOFException ex){
            
          }catch(IOException excep){
                excep.printStackTrace();     
             }
             
        %>
        
       <form autocomplete="off"  method="post" >
	   <% 
         String coder=request.getParameter("codeRech");
         if(pv.size()>0){
                for(SousMesure ovrg:pv){
             if(ovrg.getCode().equalsIgnoreCase(coder)){ %>	
             
	<nav class="formu">
            <fieldset style="background-color:  #ebbe4a;" >
            <legend><h1>Formulaire de Suppression </h1></legend> 
        <div id="principal">
       <div>
         <label for="case1">Code</label>
         <input type="text" name="code" value="<%=ovrg.getCode()%>" class="case1" disabled>
         <p></p>
       </div>

<div>
    <label for="case1">Code Produit</label>
    <input type="text" name="codeProduit" value="<%=ovrg.getCodeProduit()%>" class="case2" required disabled/>
    <p></p>

</div>

<div>
    <label for="case1">Nom Sous Mesure</label>
    <input type="text" name="nomSousMesure" value="<%= ovrg.getNom() %>" class="case" disabled>
     <p></p>        

</div>
            
 <div>
    <label for="case1">Prix Sous Mesure</label>
    <input type="number" name="prixSousMesure" value="<%= ovrg.getPrix() %>" class="case" disabled>
     <p></p>        

</div>

<div>    
<label for="case1">Quantite Sous Mesure </label>
<input type="number" name="quantiteSousMesure" value="<%= ovrg.getQuantite() %>" class="case3" required disabled/>
<p></p>
</div>

	
<div>
<button type="submit" id="valider" Onclick="return confirm('Voulez vous vraiment modifier ce produit')">Supprimer</button>
</div>

</div>
</fieldset>
 
</nav>
              <%  }     }    } 
                 %> 
</form>

</div>
       <%@include file="../header_footer/footer.jsp"%>

    </body>
</html>
