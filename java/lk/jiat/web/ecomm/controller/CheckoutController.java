package lk.jiat.web.ecomm.controller;

import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import org.glassfish.jersey.server.mvc.Viewable;

@Path("/checkout")
public class CheckoutController {
    @GET
    public Viewable index(){
        return new Viewable("/frontend/auth/checkout");
    }
}
