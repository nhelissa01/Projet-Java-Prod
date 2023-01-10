<%-- 
    Document   : Traitement
    Created on : Mar 31, 2022, 11:30:17 PM
    Author     : nheli
--%>

<%@page import="java.io.IOException"%>
<%@page import="java.io.EOFException"%>
<%@page import="java.io.ObjectInputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="gestion_Produit.Produits"%>
<%@page import="Interfaces.Class_SousMesure"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Random"%>
<%@page import="Gestion_Sous_Mesure.SousMesure"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Traitement Sous Mesure</title>
    </head>
    <body>
      
   <%!
SousMesure sm= new SousMesure();
Class_SousMesure pcm=new Class_SousMesure();

 %>
<%
  
  Random r=new Random();
  String codeProduit=request.getParameter("codeProduit");
  String nom=request.getParameter("nomSousMesure");
  String prix=request.getParameter("prixSousMesure");
  String quantite=request.getParameter("quantiteSousMesure");
  String id=nom.substring(0,2)+"-"+r.nextInt(9999);
  
    sm.setCodeProduit(codeProduit);
    sm.setNom(nom);
    sm.setPrix(Double.parseDouble(prix));
    sm.setQuantite(Integer.parseInt(quantite));
    sm.setCode(id);
    
   String message="";
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
                    for (Produits ovr : pt) {
        if(ovr.getCode().equals(codeProduit)){
        if(ovr.getPrixVente() > Double.parseDouble(prix)){
//        sm.setCodeProduit(codeProduit);
        
         if(pcm.enregistrer(sm)== true){
     message="Sous Mesure enregistré avec succes";
      request.setAttribute("message",message);
      request.getRequestDispatcher("AjouterSousMesure.jsp").forward(request,response);
    }else{
     message="Echec d'enregsitrement Sous-Mesure ";
      request.setAttribute("message",message);
      request.getRequestDispatcher("AjouterSousMesure.jsp").forward(request,response);
    }}else{
    message="Le prix du Sous-Mesure doit etre inferieure au Prix de vente ";
      request.setAttribute("message",message);
        request.getRequestDispatcher("AjouterSousMesure.jsp").forward(request, response);
    } 
    }else{
    message="Le code Produit n'est pas valide ";
      request.setAttribute("message",message);
        request.getRequestDispatcher("AjouterSousMesure.jsp").forward(request, response);
    }
          } }



%>

    </body>
</html>
