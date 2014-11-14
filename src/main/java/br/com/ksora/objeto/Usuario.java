package br.com.ksora.objeto;

import br.com.ksora.enuns.Perfil;
import java.io.Serializable;
import java.util.Date;
import java.util.List;
import java.util.Set;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;

/**
 *
 * @author leonardo lima
 */
@Entity
public class Usuario implements Serializable {

    @Id
    @GeneratedValue
    private Integer id;
    private String nome;
    private String email;
    private String login;
    private String senha;
    @Enumerated(EnumType.STRING)
    private Perfil perfil;
    @Temporal(javax.persistence.TemporalType.DATE)
    private Date dataCadastro;        
    @ManyToMany
    private List<Arquivo> arquivos;
    @OneToMany(mappedBy = "gerente")
    private Set<Projeto> projetosGerenciados;
    @ManyToMany
    private Set<Projeto> projetosColaborados;

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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public Perfil getPerfil() {
        return perfil;
    }

    public void setPerfil(Perfil perfil) {
        this.perfil = perfil;
    }

    public Date getDataCadastro() {
        return dataCadastro;
    }

    public void setDataCadastro(Date dataCadastro) {
        this.dataCadastro = dataCadastro;
    }

    public List<Arquivo> getArquivos() {
        return arquivos;
    }

    public void setArquivos(List<Arquivo> arquivos) {
        this.arquivos = arquivos;
    }

    public Set<Projeto> getProjetosGerenciados() {
        return projetosGerenciados;
    }

    public void setProjetosGerenciados(Set<Projeto> projetosGerenciados) {
        this.projetosGerenciados = projetosGerenciados;
    }

    public Set<Projeto> getProjetosColaborados() {
        return projetosColaborados;
    }

    public void setProjetosColaborados(Set<Projeto> projetosColaborados) {
        this.projetosColaborados = projetosColaborados;
    }

}
