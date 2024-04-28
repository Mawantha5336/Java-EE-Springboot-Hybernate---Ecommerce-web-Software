package lk.jiat.web.ecomm.controller;

import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.QueryParam;
import jakarta.ws.rs.core.Response;
import lk.jiat.web.ecomm.entity.User;
import lk.jiat.web.ecomm.util.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.net.URI;
import java.sql.Timestamp;
import java.util.Optional;

@Path("/verify")
public class  EmailVerificationController {
    @GET
    public Response verify(@QueryParam("token") String token){
        Session session = HibernateUtil.getSessionFactory().openSession();
        Optional<User> op = session.createQuery("SELECT u FROM User u WHERE u.verification_code=:vc", User.class)
                .setParameter("vc", token).uniqueResultOptional();
        if (op.isPresent()){
            User user = op.get();
            user.setEmail_verified_at(new Timestamp(System.currentTimeMillis()).toString());
            user.setActive(true);
            Transaction tr = session.beginTransaction();
            session.merge(user);
            tr.commit();
            session.close();
            return Response.status(Response.Status.FOUND).location(URI.create("login")).build();
        }else {
            return Response.seeOther(URI.create("")).build();
        }
    }
}
