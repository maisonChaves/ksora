package br.com.gec.controller;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.view.Results;
import br.com.gec.anotacao.Permissao;
import br.com.gec.anotacao.Public;
import br.com.gec.database.DAO;
import br.com.gec.enuns.Perfil;
import br.com.gec.objeto.Usuario;
import br.com.gec.utils.Sessao;
import java.util.Date;

/**
 *
 * @author leonardo lima
 */
@Controller
public class UsuarioController {

    private final Result result;
    private final DAO dao;
    private final Sessao sessao;

    public UsuarioController(Result result, DAO dao, Sessao sessao) {
        this.result = result;
        this.dao = dao;
        this.sessao = sessao;
    }

    /**
     * Redireciona para a tela de cadastro.
     */
    @Permissao(Perfil.ADMINISTRADOR)    
    public void cadastro() {
    }

    /**
     * Redireciona para a tela de consulta
     */
    @Permissao(Perfil.ADMINISTRADOR)
    public void consulta() {
    }

    /**
     * Redireciona para a tela de edição.
     *
     * @param id
     * @return Dados do usuário.
     */
    @Permissao(Perfil.ADMINISTRADOR)
    public Usuario edicao(Integer id) {
        return dao.consulta(id);
    }

    /**
     * Redireciona para a tela de edição de perfil de usuário.
     *
     * @return Dados do usuário logado.
     */
    public Usuario perfilUsuario() {
        return sessao.getUsuario();
    }

    /**
     * Grava dados de um novo usuário.
     *
     * @param usuario
     */
    @Public
    @Permissao(Perfil.ADMINISTRADOR)
    public void gravar(Usuario usuario) {
        usuario.setDataCadastro(new Date());
        dao.salvar(usuario);
        result.use(Results.json()).from("sucesso", "resposta").serialize();
    }

    /**
     * Edita os dados de um usuário.
     *
     * @param usuario
     */
    @Permissao(Perfil.ADMINISTRADOR)
    public void edita(Usuario usuario) {
        Usuario alterado = new Usuario();
        alterado = dao.consulta(usuario.getId());
        alterado.setPerfil(usuario.getPerfil());
        dao.alterar(alterado);
        result.use(Results.json()).from("sucesso", "resposta").serialize();
    }

    /**
     * Edita dados do usuário logado.
     *
     * @param usuario
     */
    public void alteraUsuarioPerfil(Usuario usuario) {
        dao.alterar(usuario);
        result.use(Results.json()).from("resposta", "sucesso").serialize();
    }

    /**
     * Remove um usuário do sistema.
     *
     * @param id
     */
    @Permissao(Perfil.ADMINISTRADOR)
    public void remove(Integer id) {
        dao.remove(dao.consulta(id));
        result.use(Results.json()).from("sucesso", "resposta").serialize();
    }

    /**
     * Retorna lista com todos os usuários cadastrados.
     */
    @Permissao(Perfil.ADMINISTRADOR)
    public void consultaUsuarios() {
        result.use(Results.json()).from(dao.buscaUsuarios()).serialize();
    }

    /**
     * Realiza o login de um usuario e redireciona para a página principal.
     *
     * @param usuario
     */
    @Public
    public void login(Usuario usuario) {
        usuario = dao.buscaUsuarioLogin(usuario);
        sessao.setUsuario(usuario);
        if (usuario != null) {
            result.redirectTo(IndexController.class).index();
        } 

    }
}
