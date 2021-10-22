/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import Bean.Avatar;
import Dao.AvatarDao;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FilenameUtils;


/**
 *
 * @author Marcos
 */
@WebServlet(name = "uploadAvatar_Cloud", urlPatterns = {"/uploadAvatar_Cloud"})
public class uploadAvatar_Cloud extends HttpServlet {

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        
        AvatarDao adao = new AvatarDao();
        
        try {
        List<FileItem> items = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
        for (FileItem item : items) {
            if (item.isFormField()) {
                // Process regular form field (input type="text|radio|checkbox|etc", select, etc).
                String fieldName = item.getFieldName();
                String fieldValue = item.getString();
                // ... (do your job here)
               // System.out.println("1 URL PATH: "+ fieldValue + "IO: "+fieldName);
            } else {
                // Process form file field (input type="file").
                String fieldName = item.getFieldName();
                String fileName = FilenameUtils.getName(item.getName());
                InputStream fileContent = item.getInputStream();
                
                Avatar a = new Avatar();
                a.setImage(fileContent);
                a.setPerson_ID(String.valueOf(request.getSession().getAttribute("UserId")));
                
                if(AvatarDao.save(a)){
                    request.getSession().setAttribute("Message","Atualizado com sucesso!");
                    response.sendRedirect("http://localhost:8080/ASA/UI/Profile_Cinefilo.jsp");
                }else{
                    request.getSession().setAttribute("Message","Atualizado com sucesso!");
                    response.sendRedirect("http://localhost:8080/ASA/UI/Profile/Profile_Img_Cfg.jsp");
                }
                
            }
        }
    } catch (Exception e) {
        throw new ServletException("Cannot parse multipart request.", e);
    }
        
        
    }

    

}
