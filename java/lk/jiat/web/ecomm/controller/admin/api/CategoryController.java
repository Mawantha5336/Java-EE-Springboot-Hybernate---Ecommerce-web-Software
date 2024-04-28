package lk.jiat.web.ecomm.controller.admin.api;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ObjectNode;
import jakarta.servlet.ServletContext;
import jakarta.ws.rs.*;
import jakarta.ws.rs.core.Context;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;
import lk.jiat.web.ecomm.dto.CategoryDTO;
import lk.jiat.web.ecomm.dto.ProductDTO;
import lk.jiat.web.ecomm.entity.Category;
import lk.jiat.web.ecomm.entity.Product;
import lk.jiat.web.ecomm.service.CategoryService;
import lk.jiat.web.ecomm.service.FileUploadService;
import lk.jiat.web.ecomm.service.CategoryService;
import org.glassfish.jersey.media.multipart.ContentDisposition;
import org.glassfish.jersey.media.multipart.FormDataBodyPart;
import org.glassfish.jersey.media.multipart.FormDataParam;

import java.io.InputStream;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

@Path("/admin/api/v1/category")
public class CategoryController {

    @Context
    private ServletContext context;

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public Response getAll(){
        List<CategoryDTO> list = new ArrayList<>();
        CategoryService categoryService = new CategoryService();
        categoryService.getAll().forEach(category -> {
            CategoryDTO dto = new CategoryDTO();
            dto.setId(category.getId());
            dto.setName(category.getName());
            dto.setCreatedAt(DateTimeFormatter.ofPattern("yyyy-MM-dd").format(category.getCreatedAt()));
            list.add(dto);
        });
        return Response.ok().entity(list).build();
    }

    @GET
    @Path("/{id}")
    @Produces(MediaType.APPLICATION_JSON)
    public Response getById(@PathParam("id") Long id){
        CategoryService categoryService = new CategoryService();
        Category category = categoryService.getById(id);
        CategoryDTO dto = new CategoryDTO();
        dto.setId(category.getId());
        dto.setName(category.getName());
        dto.setCreatedAt(DateTimeFormatter.ofPattern("yyyy-MM-dd").format(category.getCreatedAt()));
        return Response.ok().entity(dto).build();
    }



    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public Response save(CategoryDTO categoryDTO){
        CategoryService categoryService = new CategoryService();
        Category category = new Category();
        category.setName(categoryDTO.getName());
        category.setActive(false);

        categoryService.save(category);
        ObjectNode jsonNodes = new ObjectMapper().createObjectNode();
        jsonNodes.put("pid",category.getId());
        jsonNodes.put("name",category.getName());

        return Response.ok().entity(jsonNodes).build();
    }

    @PUT
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public Response update(CategoryDTO categoryDTO){
        CategoryService categoryService = new CategoryService();
        Category category = categoryService.getById(categoryDTO.getId());
        category.setName(categoryDTO.getName());

        CategoryService.update(category);

        ObjectNode jsonNodes = new ObjectMapper().createObjectNode();
        jsonNodes.put("pid",category.getId());
        jsonNodes.put("name",category.getName());

        return Response.ok().entity(jsonNodes).build();
    }

    @DELETE
    @Path("/{id}")
    public Response delete(@PathParam("id") Long id){
        CategoryService categoryService = new CategoryService();
        categoryService.delete(id);
        return Response.ok().build();
    }


}
