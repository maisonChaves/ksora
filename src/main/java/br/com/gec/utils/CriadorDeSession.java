package br.com.gec.utils;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import javax.enterprise.context.ApplicationScoped;
import javax.enterprise.inject.Produces;

import org.hibernate.Session;
import org.hibernate.SessionFactory;


/**
 *
 * @author leonardo lima
 */

@ApplicationScoped
public class CriadorDeSession{

    private final SessionFactory factory;
    private Session session;

    public CriadorDeSession(SessionFactory factory) {
        this.factory = factory;
    }

    @PostConstruct
    public void abre() {
        this.session = factory.openSession();
    }

    @Produces
    public Session getInstance() {
        return this.session;
    }

    @PreDestroy
    public void fecha() {
        this.session.close();
    }

}
