<%-- 
    Document   : supprimerSousMesure
    Created on : Apr 11, 2022, 5:31:13 AM
    Author     : nheli
--%>

<%@page import="java.io.IOException"%>
<%@page import="java.io.EOFException"%>
<%@page import="java.io.ObjectInputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Gestion_Sous_Mesure.SousMesure"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="supp.css">
        <link href="../header_footer/footerStyle.css" rel="stylesheet" type="text/css"/>
        <link href="../header_footer/headerStyle.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="../header_footer/header.jsp"%>
        
        <div id="corp"> 
       <form>      
           <div class="rech">
            <label for="case1" class="recher_label">Code Produit</label>
            <input type="text" class="recher_input" name="codeRech" class="case" required/> 
            <button id="recher_button"> <a>Recherche</a></button>
           </div>
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
              //out.println(ex.getMessage());
          }catch(IOException excep){
                excep.printStackTrace();     
             }
             
        %>
        
        <form autocomplete="off"  method="post" action="traitementSupprimer.jsp">
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
         <input type="text" name="" value="<%=ovrg.getCode()%>" class="case1" disabled>
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
<button type="submit" id="valider">Supprimer</button>
<!--<button type="submit" id="annuler">Annuler</button>-->
</div>

</div>
</fieldset>
 
</nav>
      <%  }     }    } 
                 %>     
</form>
        </div>
    </body>
</html>
