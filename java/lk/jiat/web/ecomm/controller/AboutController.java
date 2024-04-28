package lk.jiat.web.ecomm.controller;

import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import org.glassfish.jersey.server.mvc.Viewable;

@Path("/about")
public class AboutController {
    @GET
    public Viewable index(){
        return new Viewable("/frontend/auth/about");
    }
}
