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
import javax.servlet.http.HttpSession;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;


public class LoadDrireg extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {

            
            System.out.println("calling bro");
            String dname = request.getParameter("districtname");

            PrintWriter out = response.getWriter();

            Session ses = Utill.NewHibernateUtil.getSessionFactory().openSession();
            Criteria cc = ses.createCriteria(POJO.Driverdetails.class);
            cc.add(Restrictions.eq("drivername", dname));

            POJO.Driverdetails user_single = (POJO.Driverdetails) cc.uniqueResult();
            if (user_single == null) {
                
                out.write("ok");
            } else {
                out.write(user_single.getDregno());
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

}
