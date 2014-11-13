package br.com.ksora.controller;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Result;
import br.com.ksora.anotacao.Permissao;
import br.com.ksora.database.DAO;
import br.com.ksora.enuns.Perfil;
import br.com.ksora.objeto.Arquivo;
import br.com.ksora.objeto.Projeto;
import br.com.ksora.utils.Sessao;
import java.util.Date;
import java.util.List;
import org.hibernate.Session;

/**
 *
 * @author Leonardo Lima
 */
@Controller
public class ProjetoController {

    private final Result result;
    private final Session session;
    private final DAO dao;
     private final Sessao sessao;

    public ProjetoController(Result result, Session session, DAO dao, Sessao sessao) {
        this.result = result;
        this.session = session;
        this.dao = dao;
        this.sessao = sessao;
    }

    public void cadastro() {
    }

    @Permissao(Perfil.ADMINISTRADOR)
    public void grava(List<Arquivo> arquivo, Projeto projeto) {
       

    }

}
