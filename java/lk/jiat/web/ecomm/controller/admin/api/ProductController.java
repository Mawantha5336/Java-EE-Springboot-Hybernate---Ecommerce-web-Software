package lk.jiat.web.ecomm.controller.admin.api;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ObjectNode;
import jakarta.servlet.ServletContext;
import jakarta.ws.rs.*;
import jakarta.ws.rs.core.Context;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;
import lk.jiat.web.ecomm.dto.ProductDTO;
import lk.jiat.web.ecomm.entity.Product;
import lk.jiat.web.ecomm.service.FileUploadService;
import lk.jiat.web.ecomm.service.ProductService;
import org.glassfish.jersey.media.multipart.ContentDisposition;
import org.glassfish.jersey.media.multipart.FormDataBodyPart;
import org.glassfish.jersey.media.multipart.FormDataParam;

import java.io.InputStream;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

@Path("/admin/api/v1/product")
public class ProductController {

    @Context
    private ServletContext context;

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public Response getAll(){
        List<ProductDTO> list = new ArrayList<>();
        ProductService productService = new ProductService();
        productService.getAll().forEach(product -> {
            ProductDTO dto = new ProductDTO();
            dto.setId(product.getId());
            dto.setName(product.getName());
            dto.setPrice(product.getPrice());
            dto.setDiscountPrice(product.getDiscount_price());
            dto.setDescription(product.getDescription());
            dto.setImages(product.getImages());
            dto.setCreatedAt(DateTimeFormatter.ofPattern("yyyy-MM-dd").format(product.getCreatedAt()));
            list.add(dto);
        });
        return Response.ok().entity(list).build();
    }

    @GET
    @Path("/{id}")
    @Produces(MediaType.APPLICATION_JSON)
    public Response getById(@PathParam("id") Long id){
        ProductService productService = new ProductService();
        Product product = productService.getById(id);
        ProductDTO dto = new ProductDTO();
        dto.setId(product.getId());
        dto.setName(product.getName());
        dto.setPrice(product.getPrice());
        dto.setDiscountPrice(product.getDiscount_price());
        dto.setImages(product.getImages());
        dto.setCreatedAt(DateTimeFormatter.ofPattern("yyyy-MM-dd").format(product.getCreatedAt()));
        return Response.ok().entity(dto).build();
    }

    @POST
    @Path("/{id}/upload-image")
    @Consumes(MediaType.MULTIPART_FORM_DATA)
    @Produces(MediaType.APPLICATION_JSON)
    public Response upload(@PathParam("id") Long id, @FormDataParam("file[]")FormDataBodyPart body){
        List<FileUploadService.FileItem> items = new ArrayList<>();
        FileUploadService uploadService = new FileUploadService(context);
        ProductService productService = new ProductService();
        Product product = productService.getById(id);

        body.getParent().getBodyParts().forEach(part -> {
            InputStream is = part.getEntityAs(InputStream.class);
            ContentDisposition meta = part.getContentDisposition();
            FileUploadService.FileItem fileItem = uploadService.upload("product/" + id, is, meta);
            items.add(fileItem);
            product.getImages().add(fileItem.getPath());
            product.setActive(true);
        });

        productService.update(product);
        return Response.ok().entity(items).build();
    }

    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public Response save(ProductDTO productDTO){
        ProductService productService = new ProductService();
        Product product = new Product();
        product.setName(productDTO.getName());
        product.setPrice(productDTO.getPrice());
        product.setDiscount_price(productDTO.getDiscountPrice());
        product.setDescription(productDTO.getDescription());
        product.setActive(false);

        productService.save(product);
        ObjectNode jsonNodes = new ObjectMapper().createObjectNode();
        jsonNodes.put("pid",product.getId());
        jsonNodes.put("name",product.getName());
        jsonNodes.put("price",product.getPrice());
        jsonNodes.put("discountPrice",product.getDiscount_price());

        return Response.ok().entity(jsonNodes).build();
    }

    @PUT
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public Response update(ProductDTO productDTO){
        ProductService productService = new ProductService();
        Product product = productService.getById(productDTO.getId());
        product.setName(productDTO.getName());
        product.setPrice(productDTO.getPrice());
        product.setDiscount_price(productDTO.getDiscountPrice());
        product.setDescription(product.getDescription());

        productService.update(product);

        ObjectNode jsonNodes = new ObjectMapper().createObjectNode();
        jsonNodes.put("pid",product.getId());
        jsonNodes.put("name",product.getName());
        jsonNodes.put("price",product.getPrice());
        jsonNodes.put("discountPrice",product.getDiscount_price());

        return Response.ok().entity(jsonNodes).build();
    }

    @DELETE
    @Path("/{id}")
    public Response delete(@PathParam("id") Long id){
        ProductService productService = new ProductService();
        productService.delete(id);
        return Response.ok().build();
    }


}
