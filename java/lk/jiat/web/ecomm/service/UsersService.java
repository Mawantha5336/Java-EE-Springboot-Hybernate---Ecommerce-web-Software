package lk.jiat.web.ecomm.service;

import lk.jiat.web.ecomm.entity.User;
import lk.jiat.web.ecomm.util.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.List;

public class UsersService {
    public User getById(Long id){
        Session session = HibernateUtil.getSessionFactory().openSession();
        return session.get(User.class,id);
    }

    public List<User> getAll(){
        Session session = HibernateUtil.getSessionFactory().openSession();
        return session.createQuery("SELECT u FROM User u ", User.class).getResultList();
    }

    public List<User> getAll(boolean active){
        Session session = HibernateUtil.getSessionFactory().openSession();
        return session.createQuery("SELECT u FROM User  u WHERE u.active=:active", User.class)
                .setParameter("active",active)
                .getResultList();
    }

    public void save(User user){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.persist(user);
        transaction.commit();
        session.close();
    }

    public void update(User user){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.merge(user);
        transaction.commit();
        session.close();
    }

    public void delete(User user){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.remove(user);
        transaction.commit();
        session.close();
    }

    public void delete(Long id){
        Session session = HibernateUtil.getSessionFactory().openSession();
        User user = session.get(User.class, id);
        Transaction transaction = session.beginTransaction();
        session.remove(user);
        transaction.commit();
        session.close();
    }

}
