package lk.jiat.web.ecomm.mail;

import io.rocketbase.mail.EmailTemplateBuilder;
import jakarta.mail.Message;
import jakarta.mail.MessagingException;
import jakarta.mail.Session;
import jakarta.mail.Transport;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;
import lk.jiat.web.ecomm.provider.MailServiceProvider;
import lk.jiat.web.ecomm.util.Env;

public abstract class Mailable implements Runnable{
    private MailServiceProvider mailServiceProvider;
    private EmailTemplateBuilder.EmailTemplateConfigBuilder emailTemplateBuilder;

    public Mailable(){
        mailServiceProvider = MailServiceProvider.getInstance();
        emailTemplateBuilder = EmailTemplateBuilder.builder();
    }

    @Override
    public void run() {
        try {
            Session session = Session.getInstance(mailServiceProvider.getProperties(),
                    mailServiceProvider.getAuthenticator());
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(Env.get("app.mail")));
            build(message);
            if (message.getRecipients(Message.RecipientType.TO).length > 0){
                Transport.send(message);
                System.out.println("Email Sent Successfully...");
            }else {
                throw new RuntimeException("Email Recipient must not be empty!.");
            }
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    public abstract void build(Message message) throws MessagingException;

    public EmailTemplateBuilder.EmailTemplateConfigBuilder getEmailTemplateBuilder(){
        return emailTemplateBuilder;
    }
}
