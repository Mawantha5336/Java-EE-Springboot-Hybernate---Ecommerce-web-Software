package lk.jiat.web.ecomm.controller.admin.api;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ObjectNode;
import jakarta.servlet.ServletContext;
import jakarta.ws.rs.*;
import jakarta.ws.rs.core.Context;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;
import lk.jiat.web.ecomm.dto.ProductDTO;
import lk.jiat.web.ecomm.dto.UsersDTO;
import lk.jiat.web.ecomm.entity.Product;
import lk.jiat.web.ecomm.entity.User;
import lk.jiat.web.ecomm.service.FileUploadService;
import lk.jiat.web.ecomm.service.ProductService;
import lk.jiat.web.ecomm.service.UserService;
import lk.jiat.web.ecomm.service.UsersService;
import org.glassfish.jersey.media.multipart.ContentDisposition;
import org.glassfish.jersey.media.multipart.FormDataBodyPart;
import org.glassfish.jersey.media.multipart.FormDataParam;

import java.io.InputStream;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

@Path("/admin/api/v1/user")
public class UserController {

    @Context
    private ServletContext context;

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public Response getAll(){
        List<UsersDTO> list = new ArrayList<>();
        UsersService usersService = new UsersService();
        usersService.getAll().forEach(user -> {
            UsersDTO dto = new UsersDTO();
            dto.setId(user.getId());
            dto.setName(user.getName());
            dto.setPost_code(user.getPost_code());
            dto.setPhone(user.getPhone());
            dto.setCity(user.getCity());
            dto.setAddress(user.getAddress());
            dto.setEmail(user.getEmail());
            dto.setImages(user.getImages());
            dto.setCreatedAt(DateTimeFormatter.ofPattern("yyyy-MM-dd").format(user.getCreatedAt()));
            list.add(dto);
        });
        return Response.ok().entity(list).build();
    }

    @GET
    @Path("/{id}")
    @Produces(MediaType.APPLICATION_JSON)
    public Response getById(@PathParam("id") Long id){
        UsersService usersService = new UsersService();
        User user = usersService.getById(id);
        UsersDTO dto = new UsersDTO();
        dto.setId(user.getId());
        dto.setName(user.getName());
        dto.setPost_code(user.getPost_code());
        dto.setPhone(user.getPhone());
        dto.setCity(user.getCity());
        dto.setAddress(user.getAddress());
        dto.setEmail(user.getEmail());
        dto.setImages(user.getImages());
        dto.setCreatedAt(DateTimeFormatter.ofPattern("yyyy-MM-dd").format(user.getCreatedAt()));
        return Response.ok().entity(dto).build();
    }

    @POST
    @Path("/{id}/upload-image")
    @Consumes(MediaType.MULTIPART_FORM_DATA)
    @Produces(MediaType.APPLICATION_JSON)
    public Response upload(@PathParam("id") Long id, @FormDataParam("file[]")FormDataBodyPart body){
        List<FileUploadService.FileItem> items = new ArrayList<>();
        FileUploadService uploadService = new FileUploadService(context);
        UsersService usersService = new UsersService();
        User user = usersService.getById(id);

        body.getParent().getBodyParts().forEach(part -> {
            InputStream is = part.getEntityAs(InputStream.class);
            ContentDisposition meta = part.getContentDisposition();
            FileUploadService.FileItem fileItem = uploadService.upload("user/" + id, is, meta);
            items.add(fileItem);
            user.getImages().add(fileItem.getPath());
            user.setActive(true);
        });

        usersService.update(user);
        return Response.ok().entity(items).build();
    }

    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public Response save(ProductDTO productDTO){
        UsersService usersService = new UsersService();
        User user = new User();
        user.setName(productDTO.getName());
        user.setPost_code(user.getPost_code());
        user.setPhone(user.getPhone());
        user.setCity(user.getCity());
        user.setAddress(user.getAddress());
        user.setEmail(user.getEmail());
        user.setActive(false);

        usersService.save(user);
        ObjectNode jsonNodes = new ObjectMapper().createObjectNode();
        jsonNodes.put("pid",user.getId());
        jsonNodes.put("email",user.getEmail());
        jsonNodes.put("name",user.getName());
        jsonNodes.put("address",user.getAddress());
        jsonNodes.put("city",user.getCity());
        jsonNodes.put("postcode",user.getPost_code());
        jsonNodes.put("phone",user.getPhone());
//        jsonNodes.put("price",user.getPrice());
//        jsonNodes.put("discountPrice",product.getDiscount_price());

        return Response.ok().entity(jsonNodes).build();
    }

    @PUT
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public Response update(UsersDTO usersDTO){
        UsersService usersService = new UsersService();
        User user = usersService.getById(usersDTO.getId());
        user.setName(usersDTO.getName());
        user.setPost_code(user.getPost_code());
        user.setPhone(user.getPhone());
        user.setCity(user.getCity());
        user.setAddress(user.getAddress());
        user.setEmail(user.getEmail());

        usersService.update(user);

        ObjectNode jsonNodes = new ObjectMapper().createObjectNode();
        jsonNodes.put("pid",user.getId());
        jsonNodes.put("email",user.getEmail());
        jsonNodes.put("name",user.getName());
        jsonNodes.put("address",user.getAddress());
        jsonNodes.put("city",user.getCity());
        jsonNodes.put("postcode",user.getPost_code());
        jsonNodes.put("phone",user.getPhone());
//        jsonNodes.put("price",product.getPrice());
//        jsonNodes.put("discountPrice",product.getDiscount_price());

        return Response.ok().entity(jsonNodes).build();
    }

    @DELETE
    @Path("/{id}")
    public Response delete(@PathParam("id") Long id){
        UsersService usersService = new UsersService();
        usersService.delete(id);
        return Response.ok().build();
    }


}
