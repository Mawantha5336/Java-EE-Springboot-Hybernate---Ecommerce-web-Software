package lk.jiat.web.ecomm.controller.admin;

import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import org.glassfish.jersey.server.mvc.Viewable;

@Path("/admin")
public class DashboardController {
    @GET
    public Viewable index(){
        return new Viewable("/backend/dashboard");
    }
}
