package lk.jiat.web.ecomm.util;

import java.io.InputStream;
import java.util.Properties;

public class Env {
    private static Properties properties = new Properties();
    static {
        try {
            InputStream is = Env.class.getClassLoader().getResourceAsStream("application.properties");
            properties.load(is);
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    public static String get(String key){
        return properties.getProperty(key);
    }

    public static Properties getProperties(){
        return properties;
    }
}
