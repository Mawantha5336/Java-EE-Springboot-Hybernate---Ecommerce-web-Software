package lk.jiat.web.ecomm.util;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {

    private static SessionFactory sessionFactory = buildSessionFactory();

    private static SessionFactory buildSessionFactory() {
        try {
            return new Configuration().configure().buildSessionFactory();
        } catch (Exception ex) {
            throw new ExceptionInInitializerError();
        }
    }

    public static SessionFactory getSessionFactory() {
        return sessionFactory;
    }
}
