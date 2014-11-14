/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.ksora.objeto;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
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
    @OneToMany(mappedBy = "projeto")
    private List<Arquivo> arquivos;
    @ManyToOne
    private Usuario gerente;
    @ManyToMany(mappedBy = "projetosColaborados")
    private List<Usuario> colaborador;   

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

    public List<Arquivo> getArquivos() {
        return arquivos;
    }

    public void setArquivos(List<Arquivo> arquivos) {
        this.arquivos = arquivos;
    }

    public Usuario getGerente() {
        return gerente;
    }

    public void setGerente(Usuario gerente) {
        this.gerente = gerente;
    }

    public List<Usuario> getColaborador() {
        return colaborador;
    }

    public void setColaborador(List<Usuario> colaborador) {
        this.colaborador = colaborador;
    }
    
}
