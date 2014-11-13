/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.ksora.enuns;

/**
 *
 * @author Leonardo Lima
 */
public enum Perfil {

    ADMINISTRADOR(0), TRADUTOR(1), REVISOR(2);
    int perfil;

    Perfil(int usuario) {
        this.perfil = usuario;
    }

    public int getValor() {
        return perfil;
    }

}
