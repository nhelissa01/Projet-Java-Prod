/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interfaces;

import Gestion_Sous_Mesure.SousMesure;

/**
 *
 * @author nheli
 */
public interface Sous_MesureInterface<SM> {
    boolean enregistrer(SM s)throws Exception;
    boolean update(SousMesure sm) throws Exception;
    boolean supprimer(SousMesure sm) throws Exception;
}
