/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interfaces;

import gestion_Produit.Produits;


public interface ProduitInterface<PI> {
      boolean enregistrer(PI s)throws Exception;
      boolean modifier(Produits p) throws Exception;
      Produits recherche(String code) throws Exception;
}
