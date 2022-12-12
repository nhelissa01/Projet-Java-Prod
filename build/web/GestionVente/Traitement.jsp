
<%@page import="java.io.IOException"%>
<%@page import="java.io.EOFException"%>
<%@page import="java.io.ObjectInputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="gestion_Produit.Produits"%>
<%@page import="Interfaces.Class_Vente"%>
<%@page import="java.util.Random"%>
<%@page import="Gestion_vente.Vente"%>
<%@page import="java.util.ArrayList"%>
<%!
     Vente v=new Vente();
     Class_Vente cv=new Class_Vente();
 %>
<%
    
  Random r=new Random();
  String nomComplet=request.getParameter("nomComplet");
  String codeProduit=request.getParameter("Codeproduit");
  String modePaiement=request.getParameter("modePaiement");
  String date=request.getParameter("dateVente");
  
  String id=nomComplet.substring(0,2)+"-"+r.nextInt(9999);
      
  v.setNomComplet(nomComplet);
  v.setCodeProduit(codeProduit);
  v.setModePaiement(modePaiement);
  v.setDate(date);
 
//  v.setNomProduit(nomProduit);
  v.setId(id);
  
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
                String message="";
                 if (pt.size() > 0) {
                    for (Produits ovrg : pt) {
                    if(ovrg.getCode().equalsIgnoreCase(codeProduit)){
//                     v.setNomProduit(ovrg.getNom());
                    
    if(cv.enregistrer(v)== true){
       message="Vente enregistré avec succes";
      request.setAttribute("message",message);
      request.getRequestDispatcher("enregistrementVente.jsp").forward(request,response);
    }else{
       message="Echec";
      request.setAttribute("message",message);
        request.getRequestDispatcher("enregistrementVente.jsp").forward(request, response);
    } 
    
    }   else {
    message="Code Produit non Trouve";
      request.setAttribute("message",message);
    request.getRequestDispatcher("enregistrementVente.jsp").forward(request, response);
    }}  }
  
%>

