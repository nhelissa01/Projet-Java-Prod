<%-- 
    Document   : AfficherProduit
    Created on : Apr 4, 2022, 12:21:37 AM
    Author     : nheli
--%>

<%@page import="java.io.IOException"%>
<%@page import="java.io.EOFException"%>
<%@page import="java.io.ObjectInputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="gestion_Produit.Produits"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="AfficherListeProduit.css">
        <link href="../header_footer/headerStyle.css" rel="stylesheet" type="text/css"/>
        <link href="../header_footer/footerStyle.css" rel="stylesheet" type="text/css"/>
        <title>Afficher Liste Produit</title>
        
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
                            </tr>
                            <% }
                                } else {
                                    out.println("<td colspan=9 valign='center' align='center' style='color:black; font-size:30px;'>Aucun Produit enregistré </td>");
                                }%>   
                        </tbody>
                    </table>
                </fieldset>
            </div>
                        <button> <a href="enregistrementProduit.jsp">Nouveau Produit</a></button>
        </div>
            
    </body>
</html>
