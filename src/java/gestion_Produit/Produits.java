
package gestion_Produit;

import java.io.Serializable;


public class Produits implements Serializable{
    private static final long serialVersionUID = 459L;
private String code;
private String mesure;
private String categorie;
private String nom;
private double prixAchat;
private double prixVente;
private int qte;
private String modeDeVente;
private String dateEnregistrement;

    public Produits() {
    }

    public Produits(String code, String mesure, String categorie, String nom, double prixAchat, double prixVente, int qte, String modeDeVente, String dateEnregistrement) {
        this.code = code;
        this.mesure = mesure;
        this.categorie = categorie;
        this.nom = nom;
        this.prixAchat = prixAchat;
        this.prixVente = prixVente;
        this.qte = qte;
        this.modeDeVente = modeDeVente;
        this.dateEnregistrement = dateEnregistrement;
    }

    
    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getMesure() {
        return mesure;
    }

    public void setMesure(String mesure) {
        this.mesure = mesure;
    }

    public String getCategorie() {
        return categorie;
    }

    public void setCategorie(String categorie) {
        this.categorie = categorie;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public double getPrixAchat() {
        return prixAchat;
    }

    public void setPrixAchat(double prixAchat) {
        this.prixAchat = prixAchat;
    }

    public double getPrixVente() {
        return prixVente;
    }

    public void setPrixVente(double prixVente) {
        this.prixVente = prixVente;
    }

    public int getQte() {
        return qte;
    }

    public void setQte(int qte) {
        this.qte = qte;
    }

    public String getModeDeVente() {
        return modeDeVente;
    }

    public void setModeDeVente(String modeDeVente) {
        this.modeDeVente = modeDeVente;
    }

    public String getDateEnregistrement() {
        return dateEnregistrement;
    }

    public void setDateEnregistrement(String dateEnregistrement) {
        this.dateEnregistrement = dateEnregistrement;
    }

    @Override
    public String toString() {
        return "Produits{" + "code=" + code + ", mesure=" + mesure + ", categorie=" + categorie + ", nom=" + nom + ", prixAchat=" + prixAchat + ", prixVente=" + prixVente + ", qte=" + qte + ", modeDeVente=" + modeDeVente + ", dateEnregistrement=" + dateEnregistrement + '}';
    }
    
    
}
