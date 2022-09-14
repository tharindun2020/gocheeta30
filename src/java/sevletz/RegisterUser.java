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
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Tharindu
 */
public class RegisterUser extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {

            System.out.println("Login Ekata Awa");

            String dname = request.getParameter("driver_name");
            String dnic = request.getParameter("driver_nic");
            String emialz = request.getParameter("email");
            String contact = request.getParameter("contact");
            String pwz = request.getParameter("pw1");

            PrintWriter out = response.getWriter();

            Session ses = Utill.NewHibernateUtil.getSessionFactory().openSession();
            Criteria cc = ses.createCriteria(POJO.Users.class);
            cc.add(Restrictions.eq("nicz", dnic));

            POJO.Users user_single = (POJO.Users) cc.uniqueResult();
            if (user_single == null) {
                Transaction tc = ses.beginTransaction();
                POJO.Users new_user = new POJO.Users();
                new_user.setNamez(dname);
                new_user.setEmailz(emialz);
                new_user.setNicz(dnic);
                new_user.setContacttz(contact);
                new_user.setPasswrdz(pwz);
                new_user.setStatusz("Active");

                ses.save(new_user);
                tc.commit();
                ses.close();
                out.write("ok");
            } else {
                out.write("alread");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}
