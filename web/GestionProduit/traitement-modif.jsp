<%@page import="gestion_Produit.Produits"%>
<%@page import="Interfaces.Class_Produit"%>
<%
    String code = request.getParameter("id");
    String newPrix = request.getParameter("PrixVente");

    Class_Produit dao = new Class_Produit();

    Produits prod = dao.recherche(code);

    prod.setPrixVente(Double.parseDouble(newPrix));

    dao.modifier(prod);

    response.sendRedirect("AfficherListeProduit.jsp");
%>