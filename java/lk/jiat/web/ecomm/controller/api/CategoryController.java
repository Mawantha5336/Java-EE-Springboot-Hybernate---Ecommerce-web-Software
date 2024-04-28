package lk.jiat.web.ecomm.controller.api;

import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.core.Response;
import lk.jiat.web.ecomm.annotation.ApiSecure;

@ApiSecure
@Path("/api/v1/category")
public class CategoryController {
    @GET
    public Response get(){
        return Response.ok().entity("Test").build();
    }
}
