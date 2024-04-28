package lk.jiat.web.ecomm.controller.admin;

import jakarta.servlet.ServletContext;
import jakarta.ws.rs.*;
import jakarta.ws.rs.core.Context;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;
import lk.jiat.web.ecomm.service.FileUploadService;
import org.glassfish.jersey.media.multipart.FormDataContentDisposition;
import org.glassfish.jersey.media.multipart.FormDataParam;
import org.glassfish.jersey.server.mvc.Viewable;

import java.io.InputStream;

@Path("/admin/category")
public class CategoryController {
    @Context
    ServletContext context;

    @GET
    public Viewable index() {
        return new Viewable("/backend/category/view");
    }

    @GET
    @Path("/add")
    public Viewable add() {
        return new Viewable("/backend/category/add");
    }

    @Path("/upload-image")
    @POST
    @Consumes(MediaType.MULTIPART_FORM_DATA)
    @Produces(MediaType.APPLICATION_JSON)
    public Response action(@FormDataParam("file") InputStream is,
                           @FormDataParam("file") FormDataContentDisposition fileMetaData) {
        FileUploadService uploadService = new FileUploadService(context);
        //FileUploadService.FileItem fileItem = uploadService.upload("slider/s1",is, fileMetaData);
        uploadService.delete("abc");

        return Response.ok().entity("").build();
    }

}
