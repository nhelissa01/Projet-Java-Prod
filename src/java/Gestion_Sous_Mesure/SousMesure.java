
package Gestion_Sous_Mesure;

import java.io.Serializable;


public class SousMesure implements Serializable {
    private static final long serialVersionUID = 9854L;
    private String code;
    private String codeProduit;
    private String nom;
    private double prix;
    private int quantite;
    
    public SousMesure(){
    }

    public SousMesure(String code, String codeProduit, String nom, double prix, int quantite) {
        this.code = code;
        this.codeProduit = codeProduit;
        this.nom = nom;
        this.prix = prix;
        this.quantite = quantite;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getCodeProduit() {
        return codeProduit;
    }

    public void setCodeProduit(String codeProduit) {
        this.codeProduit = codeProduit;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public double getPrix() {
        return prix;
    }

    public void setPrix(double prix) {
        this.prix = prix;
    }

    public int getQuantite() {
        return quantite;
    }

    public void setQuantite(int quantite) {
        this.quantite = quantite;
    }

    
    @Override
    public String toString() {
        return "SousMesure{" + "code=" + code + ", codeProduit=" + codeProduit + ", nom=" + nom + ", prix=" + prix + ", quantite=" + quantite + '}';
    }
    
    
}
