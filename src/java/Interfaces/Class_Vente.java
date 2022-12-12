/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interfaces;

import Gestion_vente.Vente;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;

/**
 *
 * @author nheli
 */
public class Class_Vente implements VenteInterface<Vente>{
 
   
    FileOutputStream out=null;
    @Override
    public boolean enregistrer(Vente s) throws Exception {
         File f=new File("enregistrementvente.txt");
         
         try{
        if(!f.exists ()){
            f.createNewFile();
        }
        }catch(IOException e){}
        
         boolean result = false;
          out = new FileOutputStream(f, true);
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

    @Override
    public boolean modifier(String id) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
