package br.com.ksora.utils;

import br.com.ksora.enuns.Perfil;
import br.com.ksora.objeto.Usuario;
import java.io.Serializable;
import javax.enterprise.context.SessionScoped;

/**
 *
 * @author Leonardo Lima
 */
@SessionScoped
public class Sessao implements Serializable {

    private Usuario usuario;

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    public void fechaSessao() {
        this.usuario = null;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public Boolean getAdministrador() {
        return Perfil.ADMINISTRADOR.equals(this.getUsuario().getPerfil());
    }
}
