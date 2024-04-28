package lk.jiat.web.ecomm;

import lk.jiat.web.ecomm.entity.AppSetting;
import lk.jiat.web.ecomm.entity.User;
import lk.jiat.web.ecomm.util.Encryption;
import lk.jiat.web.ecomm.util.Env;
import lk.jiat.web.ecomm.util.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class Test {
    public static void main(String[] args) {
        Session session = HibernateUtil.getSessionFactory().openSession();
//        User user = new User();
//        user.setEmail("AAAA");
//
//        Transaction transaction = session.beginTransaction();
//        session.persist(user);
//        transaction.commit();

//        System.out.println(Env.get("mail.host"));

//        String encrypt = Encryption.encrypt("abc1234");
//        System.out.println(encrypt);


        AppSetting setting = new AppSetting();
        setting.setName("My data");
        setting.setValue("Sachintha");
        Transaction transaction = session.beginTransaction();
        session.persist(setting);
        transaction.commit();


    }
}
