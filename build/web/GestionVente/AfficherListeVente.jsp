

<%@page import="java.io.ObjectInputStream"%>
<%@page import="java.io.EOFException"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Gestion_vente.Vente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="AfficherListeVenteStyle.css">
        <link href="../header_footer/footerStyle.css" rel="stylesheet" type="text/css"/>
        <link href="../header_footer/headerStyle.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
         <%@include file="../header_footer/header.jsp"%>
        
        <div id="tete">
        <section id="image">
    
        </section>
            
         <%
          
          ArrayList<Vente> v=new ArrayList<>();
          try{
          ObjectInputStream in=new ObjectInputStream(new FileInputStream("enregistrementvente.txt"));
          while(true){
          Vente vr=(Vente)in.readObject();
            v.add(vr);
          }
          }catch(EOFException ex){
              //out.println(ex.getMessage());
          }
        %>
       
        <div class="tableau">
            <fieldset style="background-color:  #ebbe4a; " >
                <legend><h1>Liste des Produits</h1></legend>
            <table border="1">
                <thead>
                    <th>ID</th>
                    <th>Nom COmplet</th>
                    <th>Code Produit</th>
                    <th>ModePaiement</th>
                    <th>DateVente</th>
             
                </thead>
                <tbody>
                  <%    
             if(v.size()>0){
                for(Vente ovrg:v){%>
                <tr>
                    <td><%=ovrg.getId()%></td>
                    <td><%=ovrg.getNomComplet()%></td>
                    <td><%= ovrg.getCodeProduit() %></td>
                    <td><%= ovrg.getModePaiement()%></td>
                    <td><%=ovrg.getDate()%></td>
                    
                </tr>
               <%}}%>
            </tbody>
            
        </table>

            </fieldset>
        </div>
       </div>
       <button> <a href="enregistrementVente.jsp">Nouvelle Vente</a></button>
       
               <%--<%@include file="../header_footer/footer.jsp"%>--%>

    </body>
    
     
</html>
