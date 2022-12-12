
package Interfaces;

import Gestion_Sous_Mesure.SousMesure;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author nheli
 */
public class Class_SousMesure implements Sous_MesureInterface<SousMesure>{

     
    FileOutputStream out = null;
    
    @Override
    public boolean enregistrer(SousMesure s) throws Exception {
       boolean result = false;
       File f = new File("mesureFile.txt");
       try{
        if(!f.exists ()){
            f.createNewFile();
        }
        }catch(IOException e){}
       
       out = new FileOutputStream(f, true);
      
        
           // ecrire l'objet dans le fichier
           if (f.length()<1) {
               try(ObjectOutputStream obj = new ObjectOutputStream(out)){
                   obj.writeObject(s);
               }
           } else {
               try(ProduitOutputStream obj2 = new ProduitOutputStream(out)){
                   obj2.writeObject(s);
               }
           }
           // out.close();
           
           result = true;
       
           // fermer le flux
           return result;
       }
    
    
     
     
     public boolean supprimer(SousMesure sm) throws Exception {
       boolean result = true;
          File f = new File("fichierBackup.txt");
        try {
    if(!f.exists()){
    f.createNewFile();
}  } catch(IOException e){
       
        } 
        out = new FileOutputStream(f, false);
        // ecrire l'objet dans le fichier
        if (f.length()<1) {
            try(ObjectOutputStream obj = new ObjectOutputStream(out)){
            obj.writeObject(sm);
           }
        } else {
            try(ProduitOutputStream obj2 = new ProduitOutputStream(out)){
            obj2.writeObject(sm);
            }
        }
       
          
        result = true;
        // fermer le flux
        return result;
    }
     
 public boolean update(SousMesure sm) throws Exception {
    boolean result = false;
          File file = new File("Filemesure.txt");
        try {
    if(!file.exists()){
    file.createNewFile();
}  } catch(IOException e){
       
        } 
        out = new FileOutputStream(file, false);
        // ecrire l'objet dans le fichier
        if (file.length()<1) {
            try(ObjectOutputStream obj = new ObjectOutputStream(out)){
            obj.writeObject(sm);
           }
        } else {
            try(ProduitOutputStream obj2 = new ProduitOutputStream(out)){
            obj2.writeObject(sm);
            }
        }
       
          
        result = true;
        
        return result;
 }
  
    
}


