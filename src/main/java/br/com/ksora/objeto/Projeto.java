/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.ksora.objeto;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;

/**
 *
 * @author Leonardo Lima
 */
@Entity
public class Projeto implements Serializable {

    @Id
    @GeneratedValue
    private Integer id;
    private String nome;
    @Temporal(javax.persistence.TemporalType.DATE)
    private Date dataInicio;
    private Integer qtdArquivos;
    @ManyToOne
    private Usuario usuario;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public Date getDataInicio() {
        return dataInicio;
    }

    public void setDataInicio(Date dataInicio) {
        this.dataInicio = dataInicio;
    }

    public Integer getQtdArquivos() {
        return qtdArquivos;
    }

    public void setQtdArquivos(Integer qtdArquivos) {
        this.qtdArquivos = qtdArquivos;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

}
