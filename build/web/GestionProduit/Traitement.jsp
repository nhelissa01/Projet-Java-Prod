<%@page import="Interfaces.Class_Produit"%>
<%@page import="java.util.Random"%>
<%@page import="gestion_Produit.Produits"%>
<%@page import="java.util.ArrayList"%>

<%!
//    ArrayList <Produits> ar=new ArrayList<>();  
    Produits p=new Produits();
    Class_Produit cp=new Class_Produit();
 %>
<%
    
  Random r=new Random();
  String mesure=request.getParameter("mesure");
  String categorie=request.getParameter("categorie");
  String nom=request.getParameter("nom");
  String prixAchat=request.getParameter("PrixAchat");
  String prixVente=request.getParameter("PrixVente");
  String qte=request.getParameter("quantite");
  String modeDeVente=request.getParameter("modeVente");
  String dateEnregistrement=request.getParameter("Date_enregistrement");
  String code=nom.substring(0,2)+"-"+r.nextInt(9999);
  
  p.setMesure(mesure);
  p.setCategorie(categorie);
  p.setNom(nom);
  p.setPrixAchat(Double.parseDouble(prixAchat));
  p.setPrixVente(Double.parseDouble(prixVente));
  p.setQte(Integer.parseInt(qte));
  p.setModeDeVente(modeDeVente);
  p.setDateEnregistrement(dateEnregistrement);
  p.setCode(code);
  
  String message="";
  if(Double.parseDouble(request.getParameter("PrixAchat"))< Double.parseDouble(request.getParameter("PrixVente"))){
  if(cp.enregistrer(p)==true){
      message="Produit enregistré avec succes";
      request.setAttribute("message",message);
      request.getRequestDispatcher("enregistrementProduit.jsp").forward(request,response);

    } else{
      message="Echec d'enregsitrement produit ";
      request.setAttribute("message",message);
      request.getRequestDispatcher("enregistrementProduit.jsp").forward(request,response);
    }
    
    }else{
      message="Le Prix de vente doit etre superieur au prix d'achat";
      request.setAttribute("message",message);
      request.getRequestDispatcher("enregistrementProduit.jsp").forward(request,response);
    }
%>


