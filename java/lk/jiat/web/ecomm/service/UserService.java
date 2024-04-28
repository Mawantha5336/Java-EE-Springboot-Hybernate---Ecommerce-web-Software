package lk.jiat.web.ecomm.service;


import lk.jiat.web.ecomm.entity.User;
import lk.jiat.web.ecomm.util.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;
import jakarta.persistence.NoResultException;

import java.util.Optional;


public class UserService {
    public User getById(Long id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        return session.get(User.class, id);
    }

    public Optional<User> getByEmail(String email) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            return session.createQuery("select u from User u where u.email=:email", User.class)
                    .setParameter("email", email)
                    .uniqueResultOptional();
        } catch (NoResultException e) {
            return Optional.empty();
        }finally {
            session.close();
        }
    }

    public void save(User user) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.persist(user);
        transaction.commit();
        session.close();
    }
}
