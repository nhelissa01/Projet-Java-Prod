/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interfaces;

/**
 *
 * @author nheli
 */
public interface VenteInterface<VI>{
    boolean enregistrer(VI s)throws Exception;
      boolean modifier(String id) throws Exception;
}
