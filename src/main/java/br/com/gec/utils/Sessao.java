package br.com.gec.utils;


import br.com.gec.objeto.Usuario;
import java.io.Serializable;
import javax.enterprise.context.SessionScoped;

/**
 *
 * @author Leonardo Lima
 */
@SessionScoped
public class Sessao implements Serializable{

    private Usuario usuario;

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }  

    public void fechaSessao(){
        this.usuario = null;
    }

    public Usuario getUsuario() {
        return usuario;
    }
}
