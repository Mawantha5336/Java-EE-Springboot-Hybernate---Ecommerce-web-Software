package lk.jiat.web.ecomm.service;

import java.io.*;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Comparator;

import jakarta.ws.rs.WebApplicationException;
import org.apache.commons.io.FilenameUtils;
import jakarta.servlet.ServletContext;
import org.glassfish.jersey.media.multipart.ContentDisposition;

public class FileUploadService {
    private static final String UPLOAD_DIR_NAME = "/upload";
    private ServletContext context;
    public FileUploadService(ServletContext context){
        this.context = context;
    }

    public FileItem upload(InputStream in, ContentDisposition fileMetaData){
        Path UPLOAD_PATH = Paths.get(context.getRealPath(UPLOAD_DIR_NAME));
        String extension = FilenameUtils.getExtension(fileMetaData.getFileName());
        String fileName = System.currentTimeMillis()+"."+extension;

        if (!Files.exists(UPLOAD_PATH)){
            try{
                Files.createDirectory(UPLOAD_PATH);
            }catch (IOException e){
                e.printStackTrace();
            }
        }

        try{
            int read = 0;
            byte[] bytes = new byte[1024];

            OutputStream out = new FileOutputStream(new File(UPLOAD_PATH+"/"+fileName));
            while ((read = in.read(bytes)) != -1){
                out.write(bytes,0,read);
            }
            out.flush();
            out.close();
        }catch (IOException e){
            throw new WebApplicationException("Error while uploading file. Please try again");
        }

        String app_url = String.format("http://%s:%s%s","localhost",8080,context.getContextPath());
        String url = context.getContextPath()+UPLOAD_DIR_NAME+"/"+fileName;
        String path = UPLOAD_DIR_NAME+"/"+fileName;
        String fullUrl = app_url+UPLOAD_DIR_NAME+"/"+fileName;

        return new FileItem(fileName,fileMetaData.getFileName(),path,url,fullUrl);
    }

    public FileItem upload(String directoryName, InputStream is,ContentDisposition fileMetaData){
        Path UPLOAD_PATH = Paths.get(context.getRealPath(UPLOAD_DIR_NAME+"/"+directoryName));
        String extension = FilenameUtils.getExtension(fileMetaData.getFileName());
        String fileName = System.currentTimeMillis()+"."+extension;

        if (!Files.exists(UPLOAD_PATH)){
            try {
                Files.createDirectories(UPLOAD_PATH);
            }catch (IOException ex){
                throw new RuntimeException(ex);
            }
        }

        try {
            int read = 0;
            byte[] bytes = new byte[1024];

            OutputStream out = new FileOutputStream(new File(UPLOAD_PATH+"/"+fileName));
            while ((read = is.read(bytes)) != -1){
                out.write(bytes,0,read);
            }
            out.flush();
            out.close();
        }catch (IOException e){
            throw new WebApplicationException("Error while uploading file. Please try again");
        }

        String app_url = String.format("http://%s:%s%s","localhost",8080,context.getContextPath());

        String url = context.getContextPath()+UPLOAD_DIR_NAME+"/"+directoryName+"/"+fileName;
        String path = UPLOAD_DIR_NAME+"/"+directoryName+"/"+fileName;
        String fullUrl = app_url+UPLOAD_DIR_NAME+"/"+directoryName+"/"+fileName;

        return new FileItem(fileName,fileMetaData.getFileName(),path,url,fullUrl);
    }

    public boolean delete(String file){
        Path UPLOAD_PATH = Paths.get(context.getRealPath(UPLOAD_DIR_NAME));
        final boolean[] delete  = new boolean[1];
        try {
            Files.walk(UPLOAD_PATH).sorted(Comparator.reverseOrder())
                    .forEach(path -> {
                        File f = path.toFile();
                        if (f.getName().equals(file)){
                            delete[0] = f.delete();
                        }
                    });
        }catch (IOException e){
            e.printStackTrace();
        }
        return delete[0];
    }

    public void deleteDirectory(String directory){
        Path UPLOAD_PATH = Paths.get(context.getRealPath(UPLOAD_DIR_NAME));
        try {
            Files.walk(UPLOAD_PATH).sorted(Comparator.reverseOrder())
                    .forEach(path -> {
                        try {
                            System.out.println("Deleting: "+path);
                            Files.delete(path);
                        }catch (IOException e){
                            e.printStackTrace();
                        }
                    });
        }catch (IOException e){
            e.printStackTrace();
        }
    }

    public static class FileItem{
        private String fileName;
        private String fileNameOriginal;
        private String path;
        private String url;
        private String fullUrl;

        public FileItem(String fileName, String fileNameOriginal, String path, String url, String fullUrl) {
            this.fileName = fileName;
            this.fileNameOriginal = fileNameOriginal;
            this.path = path;
            this.url = url;
            this.fullUrl = fullUrl;
        }

        public String getFileName() {
            return fileName;
        }

        public void setFileName(String fileName) {
            this.fileName = fileName;
        }

        public String getFileNameOriginal() {
            return fileNameOriginal;
        }

        public void setFileNameOriginal(String fileNameOriginal) {
            this.fileNameOriginal = fileNameOriginal;
        }

        public String getPath() {
            return path;
        }

        public void setPath(String path) {
            this.path = path;
        }

        public String getUrl() {
            return url;
        }

        public void setUrl(String url) {
            this.url = url;
        }

        public String getFullUrl() {
            return fullUrl;
        }

        public void setFullUrl(String fullUrl) {
            this.fullUrl = fullUrl;
        }
    }
}
