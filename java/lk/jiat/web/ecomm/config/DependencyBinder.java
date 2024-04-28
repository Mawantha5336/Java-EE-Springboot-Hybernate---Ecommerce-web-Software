package lk.jiat.web.ecomm.config;

import jakarta.inject.Singleton;
import lk.jiat.web.ecomm.util.Encryption;
import lk.jiat.web.ecomm.util.JwtTokenUtil;
import org.glassfish.hk2.utilities.binding.AbstractBinder;

public class DependencyBinder extends AbstractBinder {
    @Override
    protected void configure() {
        System.out.println("DependencyBinder...");
        bind(Encryption.class).to(Encryption.class).in(Singleton.class);
        bind(JwtTokenUtil.class).to(JwtTokenUtil.class).in(Singleton.class);
    }
}
