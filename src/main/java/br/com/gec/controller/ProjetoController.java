package br.com.gec.controller;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Result;
import br.com.gec.anotacao.Permissao;
import br.com.gec.database.DAO;
import br.com.gec.enuns.Perfil;
import br.com.gec.objeto.Arquivo;
import br.com.gec.objeto.Projeto;
import br.com.gec.utils.Sessao;
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
