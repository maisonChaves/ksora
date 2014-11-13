package br.com.ksora.utils;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import javax.enterprise.context.ApplicationScoped;
import javax.enterprise.context.RequestScoped;
import javax.enterprise.inject.Produces;
import javax.inject.Inject;

import org.hibernate.Session;
import org.hibernate.SessionFactory;


/**
 *
 * @author leonardo lima
 */

@ApplicationScoped
public class CriadorDeSession{

    @Inject
    private SessionFactory factory;
    private Session session;
    
    @PostConstruct
    public void abre() {
        this.session = factory.openSession();
    }

    @Produces
    @RequestScoped
    public Session getInstance() {
        return this.session;
    }

    @PreDestroy
    public void fecha() {
        this.session.close();
    }

}
