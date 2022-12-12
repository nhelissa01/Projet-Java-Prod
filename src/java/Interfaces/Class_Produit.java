/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interfaces;

import gestion_Produit.Produits;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileWriter;
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
public class Class_Produit implements ProduitInterface<Produits> {

    FileOutputStream fops = null;

    public boolean enregistrer(Produits s) throws Exception {
        boolean resultat = false;
        File f = new File("enregistrementproduit.txt");
        try {
            if (!f.exists()) {
                f.createNewFile();
            }
        } catch (IOException e) {
        }

        fops = new FileOutputStream(f, true);
        if (f.length() < 1) {
            try ( ObjectOutputStream ops = new ObjectOutputStream(fops)) {
                ops.writeObject(s);
            }
        } else {
            try ( ProduitOutputStream ops2 = new ProduitOutputStream(fops)) {
                ops2.writeObject(s);
            }
        }

        resultat = true;
        return resultat;
    }

    @Override
    public boolean modifier(Produits p) throws Exception {
        boolean result = true;
        File f = new File("enregistrementproduit.txt");


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

        try {
            FileWriter writer = new FileWriter(f, false);
            writer.write("");
            writer.close();
        } catch (Exception e) {
        }
        
        
        for (Produits produits : pt) {
            if (produits.getCode().equalsIgnoreCase(p.getCode())) {
                produits.setPrixVente(p.getPrixVente());
            }

            enregistrer(produits);
        }

        return result;
    }

    public Produits recherche(String code) {
        Produits prod = null;
        ArrayList<Produits> pt = new ArrayList<Produits>();
        try {
            ObjectInputStream in = new ObjectInputStream(new FileInputStream("enregistrementproduit.txt"));
            while (true) {
                Produits pr = (Produits) in.readObject();
                pt.add(pr);
            }
        } catch (IOException excep) {
            excep.printStackTrace();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Class_Produit.class.getName()).log(Level.SEVERE, null, ex);
        }

        for (Produits produits : pt) {
            if (produits.getCode().equalsIgnoreCase(code)) {
                prod = produits;
            }
        }
        return prod;
    }

}
