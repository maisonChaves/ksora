package br.com.gec.database;

import br.com.gec.objeto.Arquivo;
import br.com.gec.objeto.Projeto;
import br.com.gec.objeto.Usuario;
import java.io.Serializable;
import java.util.List;
import javax.enterprise.context.SessionScoped;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author leonardo lima
 */

@SessionScoped
public class DAO implements Serializable {

    private final Session session;

    public DAO(Session session) {
        this.session = session;
    }

    public void salvar(Object objeto) {
        Transaction tx = session.beginTransaction();
        session.save(objeto);
        tx.commit();
    }

    public List<Usuario> buscaUsuarios() {
        return session.createCriteria(Usuario.class).list();

    }

    public void remove(Usuario usuario) {
        Transaction tx = session.beginTransaction();
        session.delete(usuario);
        tx.commit();
    }

    public void alterar(Object objeto) {
        Transaction tx = session.beginTransaction();
        session.update(objeto);
        tx.commit();
    }

    public Usuario consulta(Integer id) {
        return (Usuario) this.session.load(Usuario.class, id);
    }

    public Projeto consultaProjeto(String nome) {
        return (Projeto) this.session.createCriteria(Projeto.class).add(Restrictions.eq("nome", nome)).uniqueResult();
    }

    public List<Projeto> buscaListaProjetos() {
        return (List<Projeto>) this.session.createCriteria(Projeto.class).list();
    }

    public List<Arquivo> buscaArquivosPorProjeto(Projeto projeto) {
        return (List<Arquivo>) this.session.createCriteria(Arquivo.class).add(Restrictions.eq("projeto", projeto)).list();
    }

    public Usuario buscaUsuarioLogin(Usuario usuario) {
        return (Usuario) session.createCriteria(Usuario.class).add(Restrictions.eq("login", usuario.getLogin()))
                .add(Restrictions.eq("senha", usuario.getSenha())).uniqueResult();

    }
}
