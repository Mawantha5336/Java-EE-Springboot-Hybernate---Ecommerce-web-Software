package lk.jiat.web.ecomm.config;

import lk.jiat.web.ecomm.middleware.JwtValidationFilter;
import org.glassfish.jersey.media.multipart.MultiPartFeature;
import org.glassfish.jersey.server.ResourceConfig;
import org.glassfish.jersey.server.ServerProperties;
import org.glassfish.jersey.server.mvc.jsp.JspMvcFeature;

public class AppConfig extends ResourceConfig {
    public AppConfig(){
        packages("lk.jiat.web.ecomm.controller");
        packages("lk.jiat.web.ecomm.middleware");

        register(JspMvcFeature.class);
        register(MultiPartFeature.class);
        register(DependencyBinder.class);
        property(JspMvcFeature.TEMPLATE_BASE_PATH, "/WEB-INF/views");
    }
}
