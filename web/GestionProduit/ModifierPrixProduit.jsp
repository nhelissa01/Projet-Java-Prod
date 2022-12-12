<%-- 
    Document   : rechercherProduit
    Created on : Mar 31, 2022, 7:12:21 AM
    Author     : nheli
--%>

<%@page import="java.io.IOException"%>
<%@page import="java.util.ArrayList"%>
<%@page import="gestion_Produit.Produits"%>
<%@page import="java.io.ObjectInputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="ModifierPrixProduitStyle.css">
        <link href="../header_footer/footerStyle.css" rel="stylesheet" type="text/css"/>
        <link href="../header_footer/headerStyle.css" rel="stylesheet" type="text/css"/>
        <title>ModifierPrixProduit</title>
    </head>
    <body>
       <%@include file="../header_footer/header.jsp"%>
       
         <div id="tete">
            <section id="image">

            </section>
             
            <div class="tableau">
                <fieldset style="background-color:  #ebbe4a; " >
                    <legend><h1>Liste des Produits</h1></legend>
                    <table border="1">
                        <thead>
                        <th>Code</th>
                        <th>Mesure</th>
                        <th>Categorie</th>
                        <th>Nom</th>
                        <th>PrixAchat</th>
                        <th>PrixVente</th>
                        <th>Qte</th>
                        <th>Mode De Vente</th>
                        <th>Date Enregistrement</th>
                        <th>Actions</th>

                        </thead>

                        <tbody class="tbody_de">
              <%
                

                ArrayList<Produits> pt = new ArrayList<Produits>();
                try {
                    ObjectInputStream in = new ObjectInputStream(new FileInputStream("enregistrementproduit.txt"));
                    while (true) {
               Produits pr = (Produits) in.readObject();
                        pt.add(pr);
                    }
                } 
                //catch (EOFException ex) {     } 
                catch (IOException excep) {
                    excep.printStackTrace();
                }
   
                if (pt.size() > 0) {
                    for (Produits ovrg : pt) { %>
                            <tr>
                                <td><%=ovrg.getCode()%></td>
                                <td><%=ovrg.getMesure()%></td>
                                <td><%=ovrg.getCategorie()%></td>
                                <td><%=ovrg.getNom()%></td>
                                <td><%=ovrg.getPrixAchat()%></td>
                                <td><%=ovrg.getPrixVente()%></td>
                                <td><%= ovrg.getQte()%></td>
                                <td><%= ovrg.getModeDeVente()%></td>
                                <td><%=ovrg.getDateEnregistrement()%></td>
                                 <td>
                                     <a href="modifier.jsp?id=<%=ovrg.getCode()%>" Onclick="return confirm('Voulez vous vraiment modifier ce produit')">Modifier</a>
                                 </td>
                            </tr>
                            <% }
                                } else {
                                    out.println("<td colspan=9 valign='center' align='center' style='color:red; font-size:30px;'>Aucun Produit </td>");
                                }%>   
                        </tbody>
                    </table>
                </fieldset>
            </div>
                     
        </div>
            
       <%--<%@include file="../header_footer/footer.jsp"%>--%>
       
    </body>
</html>
