
<%@page import="java.io.EOFException"%>
<%@page import="java.io.ObjectInputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Interfaces.Class_SousMesure"%>
<%@page import="Gestion_Sous_Mesure.SousMesure"%>

<%! 
SousMesure sm= new SousMesure();
Class_SousMesure pcm=new Class_SousMesure ();
%>
<%
  
             ArrayList<SousMesure> pArray=new ArrayList<SousMesure>();
             try{
             ObjectInputStream in=new ObjectInputStream(new FileInputStream("Filemesure.txt"));
             while(true){
             SousMesure m=(SousMesure)in.readObject();
               pArray.add(m);
             }
             }catch(EOFException ex){   }
  
       if(pArray.size()>0){
          for(SousMesure ovv:pArray){
             
           if(!ovv.getCode().equalsIgnoreCase(request.getParameter("code"))){
               
               ovv.getCode();
               ovv.getCodeProduit();
               ovv.getNom();
               ovv.getPrix();
               ovv.getQuantite();
               
    if(pcm.supprimer(ovv)== true){
       
        
         ArrayList<SousMesure> pSupp=new ArrayList<SousMesure>();
             try{
             ObjectInputStream in=new ObjectInputStream(new FileInputStream("fichierBackup.txt"));
             while(true){
             SousMesure m=(SousMesure)in.readObject();
               pSupp.add(m);
             }
             }catch(EOFException ex){   }
            
          if(pSupp.size()>0){
          for(SousMesure supp:pSupp){
               supp.getCode();
               supp.getCodeProduit();
               supp.getNom();
               supp.getPrix();
               supp.getQuantite();
              if(pcm.update(supp)){
                
                  String  Mess="Suppression effectué avec succès  !";
                   request.setAttribute("Mess", Mess);
                   request.getRequestDispatcher("SupprimerSousMesure.jsp").forward(request, response);
              }
          }
          }
              
        request.getRequestDispatcher("AjouterSousMesure.jsp").forward(request, response);
    } else{
    
        request.getRequestDispatcher("AjouterSousMesure.jsp").forward(request, response);
    } 
         }
    
       else{
           out.println("Code trouve");
       }
   
          }    }  
       else{
           out.println("Fichier n'a pas de contenue");
       }
         
%>