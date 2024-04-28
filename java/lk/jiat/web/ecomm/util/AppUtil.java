package lk.jiat.web.ecomm.util;

import jakarta.servlet.ServletContext;
import org.hibernate.Session;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


public class AppUtil {
    private static final Map<String, Object> appSettings = new HashMap<>();
    private static ServletContext context;

    public AppUtil(ServletContext context){
        AppUtil.context = context;
    }

    static {
        load();
    }

    private static void load(){
        appSettings.clear();
        Session session = HibernateUtil.getSessionFactory().openSession();
        List<Object[]> list = session.createQuery("SELECT app.name, app.value FROM AppSetting app", Object[].class).list();
        list.forEach(o -> {
            appSettings.put(o[0].toString(),o[1]);
        });
        session.close();
    }

    public static void reload(){
        load();
    }

    public static String getString(String key){
        return appSettings.get(key).toString();
    }

    public static Object get(String key){
        return appSettings.get(key);
    }

    public static ServletContext getServletContext(){
        return context;
    }


}
