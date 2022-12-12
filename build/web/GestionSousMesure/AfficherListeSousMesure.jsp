<%-- 
    Document   : AfficherListeSousMesure
    Created on : Mar 31, 2022, 11:28:15 PM
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
        <link rel="stylesheet" href="AfficherListeSousMesureStyle.css">
        <link href="../header_footer/footerStyle.css" rel="stylesheet" type="text/css"/>
        <link href="../header_footer/headerStyle.css" rel="stylesheet" type="text/css"/>
        <title>Afficher Liste Sous Mesure</title>
    </head>
    <body>
        
         <%@include file="../header_footer/header.jsp"%>
        
        <div id="tete">
        <section id="image">
    
        </section>
            
           <%
          String message=(String)request.getAttribute("Mess");
          if(message!=null){
              out.println(message+"<br/>");
          }
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
       
        <div class="tableau">
            <fieldset style="background-color:  #ebbe4a; " >
                <legend><h1>Liste des Sous Mesures</h1></legend>
            <table border="1">
                <thead>
                    <th>Code</th>
                    <th>Code produit</th>
                    <th>Nom SOus Mesure</th>
                    <th>Prix SOus Mesure</th>
                    <th>Quantite SOus Mesure</th>
                    <th>Actions</th>
                 
                </thead>
                <tbody>
                 <tbody class="tbody_de">
            <%    
             if(pv.size()>0){
                for(SousMesure ovrg:pv){%>
               <tr>
                   <td><%=ovrg.getCode()%></td>
                   <td><%=ovrg.getCodeProduit()%></td>
                   <td><%= ovrg.getNom() %></td>
                   <td><%= ovrg.getPrix() %></td>
                   <td><%= ovrg.getQuantite() %></td>
                    <td>
                       <a href="AjouterSousMesure.jsp?code=<%=ovrg.getCode()%>">Modifier</a>
                    </td>
               </tr>
          <%}}
                 else{ 
                
             //  out.println("<tr><td colspan=> Aucun Produit</td></tr>");
               out.println("<td colspan=5 valign='center' align='center' style='color:black; font-size:32px;'>Aucune Sous-Mesure </td>");
                }   %> 
        </tbody>   
                
        </table>

            </fieldset>
        </div>
       </div>
       <button> <a href="AjouterSousMesure.jsp">Nouvelle Sous Mesure</a></button>
       
               <%--<%@include file="../header_footer/footer.jsp"%>--%>

    </body>
</html>
