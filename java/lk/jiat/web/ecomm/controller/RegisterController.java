package lk.jiat.web.ecomm.controller;

import jakarta.ws.rs.Consumes;
import jakarta.ws.rs.POST;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;
import lk.jiat.web.ecomm.dto.RegisterDTO;
import lk.jiat.web.ecomm.entity.User;
import lk.jiat.web.ecomm.mail.VerificationMail;
import lk.jiat.web.ecomm.provider.MailServiceProvider;
import lk.jiat.web.ecomm.service.UserService;
import lk.jiat.web.ecomm.util.Encryption;

import java.util.Optional;
import java.util.UUID;

@Path("/register")
public class RegisterController {
    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public Response register(RegisterDTO registerDTO){
        UserService userService = new UserService();
        Optional<User> byEmail = userService.getByEmail(registerDTO.getEmail());
        if (byEmail.isPresent()){
            return Response.status(Response.Status.BAD_REQUEST).entity("Email already exists.").build();
        }else {

            User user = new User();
            //user.setName(registerDTO.getName());
            user.setEmail(registerDTO.getEmail());
            user.setPassword(Encryption.encrypt(registerDTO.getPassword()));

            String verificationCode = UUID.randomUUID().toString();

            user.setVerification_code(verificationCode);
            userService.save(user);
            VerificationMail mail = new VerificationMail(user.getEmail(),verificationCode);
            MailServiceProvider.getInstance().sendMail(mail);

            return Response.ok().entity("Register Success").build();
        }

    }
}
