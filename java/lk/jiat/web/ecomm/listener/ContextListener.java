package lk.jiat.web.ecomm.listener;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.annotation.WebListener;
import lk.jiat.web.ecomm.provider.MailServiceProvider;
import lk.jiat.web.ecomm.util.AppUtil;
import lk.jiat.web.ecomm.util.Env;

@WebListener
public class ContextListener implements ServletContextListener {
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        ServletContext context = sce.getServletContext();
        context.setAttribute("BASE_URL", context.getContextPath()+"/");
        context.setAttribute("assets", context.getContextPath()+"/assets");
        context.setAttribute("admin_assets", context.getContextPath()+"/admin/assets");
        context.setAttribute("App", new AppUtil(context));
        Env.getProperties().put("app_url","http://localhost:8080"+context.getContextPath());
        System.out.println("contextInitialized...");
        MailServiceProvider.getInstance().start();
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        MailServiceProvider.getInstance().shutdown();
    }
}
