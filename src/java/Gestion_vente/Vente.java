
package Gestion_vente;

import gestion_Produit.Produits;
import java.io.Serializable;


public class Vente implements Serializable{
    private static final long serialVersionUID = 4795L;
    private String id;
    private String nomComplet;
    private String codeProduit;
    private String modePaiement;
    private String date;

    public Vente(){
   }
    
    public Vente(String id, String nomComplet, String codeProduit, String modePaiement, String date) {
        this.id = id;
        this.nomComplet = nomComplet;
        this.codeProduit = codeProduit;
        this.modePaiement = modePaiement;
        this.date = date;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getNomComplet() {
        return nomComplet;
    }

    public void setNomComplet(String nomComplet) {
        this.nomComplet = nomComplet;
    }

    public String getCodeProduit() {
        return codeProduit;
    }

    public void setCodeProduit(String codeProduit) {
        this.codeProduit = codeProduit;
    }

    public String getModePaiement() {
        return modePaiement;
    }

    public void setModePaiement(String modePaiement) {
        this.modePaiement = modePaiement;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }
    

    
   
    
    
   
    
    
    
}
