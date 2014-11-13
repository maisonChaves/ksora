/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.ksora.utils;

import javax.enterprise.context.ApplicationScoped;
import javax.enterprise.inject.Produces;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import sun.awt.ComponentFactory;

/**
 *
 * @author Leonardo Lima
 */

@ApplicationScoped
public class CriadorDeSessionFactory{

    @Produces
    public SessionFactory getInstance() {
        AnnotationConfiguration configuration
                = new AnnotationConfiguration();
        configuration.configure();

        SessionFactory factory = configuration.buildSessionFactory();

        return factory;
    }

}
