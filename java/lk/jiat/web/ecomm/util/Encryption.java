package lk.jiat.web.ecomm.util;

import java.math.BigInteger;
import java.security.MessageDigest;

public class Encryption {
    public static String encrypt(String source) {
        String md5 = "";
        try {
            MessageDigest digest = MessageDigest.getInstance("MD5");
            digest.update(source.getBytes(), 0, source.length());
            BigInteger integer = new BigInteger(1,digest.digest());
            md5 = integer.toString(16);
        } catch (Exception ex) {
            return null;
        }
        return md5;
    }
}
