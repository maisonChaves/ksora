/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.gec.controller;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.view.Results;
import br.com.gec.database.DAO;
import br.com.gec.objeto.Projeto;
import org.hibernate.Session;

/**
 *
 * @author Leonardo Lima
 */
@Controller
public class ArquivoController {

    private final Result result;
    private final Session session;
    private final DAO dao;

    public ArquivoController(Result result, Session session, DAO dao) {
        this.result = result;
        this.session = session;
        this.dao = dao;
    }

    public void cadastro() {
    }

    public void buscaArquivos(Projeto projeto) {
        result.use(Results.json()).from(dao.buscaArquivosPorProjeto(projeto)).exclude("dataInclusao").serialize();

    }
}
