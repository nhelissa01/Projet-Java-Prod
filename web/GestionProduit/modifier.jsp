<%-- 
    Document   : modifier
    Created on : Apr 8, 2022, 5:12:10 PM
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
        <link rel="stylesheet" href="modif.css">
        <link href="../header_footer/headerStyle.css" rel="stylesheet" type="text/css"/>
        <link href="../header_footer/footerStyle.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="../header_footer/header.jsp"%>

        <div id="tete">
            <div>
                <section id="image">

                </section>
            </div>

            <div class="texte">
                <%
                    String id = request.getParameter("id");
                %>
                <form method="post" action="traitement-modif.jsp?id=<%=id%>">
                    <nav class="formu">
                        <fieldset style="background-color:  #ebbe4a; " >
                            <legend><h1>Formulaire d'enregistrement de Produits</h1></legend> 

                            <div id="principal">
                                <%
                                    ArrayList<Produits> pt = new ArrayList<Produits>();
                                    try {
                                        ObjectInputStream in = new ObjectInputStream(new FileInputStream("enregistrementproduit.txt"));
                                        while (true) {
                                            Produits pr = (Produits) in.readObject();
                                            pt.add(pr);
                                        }
                                    } //catch (EOFException ex) {     } 
                                    catch (IOException excep) {
                                        excep.printStackTrace();
                                    }

                                    Produits produit = null;

                                    if (pt.size() > 0) {
                                        for (Produits ovrg : pt) {
                                            if (ovrg.getCode().equalsIgnoreCase(id)) {
                                                produit = ovrg;
                                            }
                                        }
                                    }
                                %>
                                <div class="gauche">
                                    <label for="case1">Code</label>
                                    <input type="text" name="code" class="case" disabled value="<%=produit.getCode()%>"/>
                                    <p></p>

                                    <label for="case1">Mesure</label>
                                    <input type="text" name="mesure" class="case" disabled value="<%=produit.getMesure()%>"/>
                                    <p></p>

                                    <label for="case1">Categorie</label>
                                    <input type="text" name="categorie" class="case" disabled value="<%=produit.getCategorie()%>"/>
                                    <p></p>

                                    <label for="case1">Nom</label>
                                    <input type="text" name="nom" class="case" minlength="2" disabled value="<%=produit.getNom()%>"/>
                                    <p></p>

                                    <label for="case1">Prix Achat</label>
                                    <input type="number" name="PrixAchat" class="case" disabled value="<%=produit.getPrixAchat()%>"/>
                                </div>

                                <div class="droite">    


                                    <label for="case1">Prix Vente</label>
                                    <input type="number" name="PrixVente" class="case" required value="<%=produit.getPrixVente()%>" step=".01" min="0"/>
                                    <p></p>

                                    <label for="case1">Quantite</label>
                                    <input type="number" name="quantite" class="case" disabled value="<%=produit.getQte()%>"/>
                                    <p></p>

                                    <label for="case1">Mode de Vente</label>
                                    <input type="text" name="modeVente" class="case4" disabled value="<%=produit.getModeDeVente()%>"/>
                                    <p></p>

                                    <label for="case1">Date Enregistrement</label>
                                    <input type="date" name="Date_enregistrement" class="case" disabled value="<%=produit.getDateEnregistrement()%>"/>
                                    <p></p>

                                    <button type="submit" id="valider">Modifier</button>
                                </div>
                            </div>
                        </fieldset>
                    </nav>
                </form>
            </div>
        </div>
    </body>
</html>
