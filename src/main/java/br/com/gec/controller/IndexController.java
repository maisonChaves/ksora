package br.com.gec.controller;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;
import javax.enterprise.context.RequestScoped;
import br.com.gec.anotacao.Public;
import br.com.gec.database.DAO;
import br.com.gec.objeto.Projeto;
import br.com.gec.objeto.Usuario;
import br.com.gec.utils.Sessao;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;

@Controller
@RequestScoped
public class IndexController {

    private final Result result;
    private final Usuario usuario;
    private final DAO dao;
    private final Session session;
    private final Sessao sessao;

    public IndexController(Result result, Usuario usuario, DAO dao, Session session, Sessao sessao) {
        this.result = result;
        this.usuario = usuario;
        this.dao = dao;
        this.session = session;
        this.sessao = sessao;
    }

    @Public
    @Path("/")
    public void login() {
        sessao.fechaSessao();
    }

    @Path("/index")
    public List<Projeto> index() {
        List<Projeto> listaProjetos = new ArrayList<Projeto>();
        listaProjetos = dao.buscaListaProjetos();
        return listaProjetos;
    }

}
