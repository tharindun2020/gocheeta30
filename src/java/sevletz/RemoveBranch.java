/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package sevletz;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import org.hibernate.Transaction;


public class RemoveBranch extends HttpServlet {

   @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        
        Session ses = Utill.NewHibernateUtil.getSessionFactory().openSession();
        Transaction tc = ses.beginTransaction();
        
        int vehid = Integer.parseInt(request.getParameter("vehid"));
        POJO.Branches user_single = (POJO.Branches) ses.load(POJO.Branches.class, vehid);

        ses.delete(user_single);
        
        tc.commit();
        ses.close();
        out.write("ok");

    }
}
