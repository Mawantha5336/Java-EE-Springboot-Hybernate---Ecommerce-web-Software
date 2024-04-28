package lk.jiat.web.ecomm.service;

import lk.jiat.web.ecomm.entity.Product;
import lk.jiat.web.ecomm.util.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.List;

public class ProductService {
    public Product getById(Long id){
        Session session = HibernateUtil.getSessionFactory().openSession();
        return session.get(Product.class,id);
    }

    public List<Product> getAll(){
        Session session = HibernateUtil.getSessionFactory().openSession();
        return session.createQuery("SELECT p FROM Product  p", Product.class).getResultList();
    }

    public List<Product> getAll(boolean active){
        Session session = HibernateUtil.getSessionFactory().openSession();
        return session.createQuery("SELECT p FROM Product  p WHERE p.active=:active", Product.class)
                .setParameter("active",active)
                .getResultList();
    }

    public void save(Product product){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.persist(product);
        transaction.commit();
        session.close();
    }

    public void update(Product product){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.merge(product);
        transaction.commit();
        session.close();
    }

    public void delete(Product product){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.remove(product);
        transaction.commit();
        session.close();
    }

    public void delete(Long id){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Product product = session.get(Product.class, id);
        Transaction transaction = session.beginTransaction();
        session.remove(product);
        transaction.commit();
        session.close();
    }

}
