package lk.jiat.web.ecomm.service;

import lk.jiat.web.ecomm.entity.Category;
import lk.jiat.web.ecomm.entity.Product;
import lk.jiat.web.ecomm.util.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.List;

public class CategoryService {
    public Category getById(Long id){
        Session session = HibernateUtil.getSessionFactory().openSession();
        return session.get(Category.class,id);
    }

    public List<Category> getAll(){
        Session session = HibernateUtil.getSessionFactory().openSession();
        return session.createQuery("SELECT p FROM Category  p", Category.class).getResultList();
    }

    public List<Category> getAll(boolean active){
        Session session = HibernateUtil.getSessionFactory().openSession();
        return session.createQuery("SELECT p FROM Category  p WHERE p.active=:active", Category.class)
                .setParameter("active",active)
                .getResultList();
    }

    public static void save(Category category){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.persist(category);
        transaction.commit();
        session.close();
    }

    public static void update(Category category){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.merge(category);
        transaction.commit();
        session.close();
    }

    public void delete(Category category){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.remove(category);
        transaction.commit();
        session.close();
    }

    public void delete(Long id){
        Session session = HibernateUtil.getSessionFactory().openSession();
       Category category = session.get(Category.class, id);
        Transaction transaction = session.beginTransaction();
        session.remove(category);
        transaction.commit();
        session.close();
    }

}
