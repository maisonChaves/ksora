package br.com.ksora.controller;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;
import javax.enterprise.context.RequestScoped;
import br.com.ksora.anotacao.Public;
import br.com.ksora.database.DAO;
import br.com.ksora.objeto.Projeto;
import br.com.ksora.utils.Sessao;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;

@Controller
@RequestScoped
public class IndexController {

    @Inject
    private DAO dao;
    @Inject
    private Sessao sessao;
    private final Result result;

    @Inject
    public IndexController(Result result) {
        this.result = result;
    }

    protected IndexController() {
        this(null);
    }

    @Public
    @Path("/")
    public void login() {
        sessao.fechaSessao();
    }

    @Path("/index")
    @Public
    public void index() {
//        List<Projeto> listaProjetos = new ArrayList<>();
//        listaProjetos = dao.buscaListaProjetos();
//        return listaProjetos;
    }

}
