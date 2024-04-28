package lk.jiat.web.ecomm.controller;

import org.glassfish.jersey.server.mvc.Viewable;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;


@Path("/")
public class HomeController {
    @GET
    public Viewable index() {

        return new Viewable("/frontend/home");
    }

    @Path("/contact")
    public static class ContactController {
        @GET
        public Viewable index(){
            return new Viewable("/frontend/auth/contact");
        }
    }
}
