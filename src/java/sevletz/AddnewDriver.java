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


public class AddnewDriver extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {

            System.out.println("Login Ekata Awa");

            String dname = request.getParameter("driver_name");
            String dnic = request.getParameter("driver_nic");
            String dcontact = request.getParameter("driver_contact");
            String dpwz = request.getParameter("driver_password");
            String dbrnch = request.getParameter("driver_branch");
            String cityz = request.getParameter("driver_city");

            PrintWriter out = response.getWriter();

            Session ses = Utill.NewHibernateUtil.getSessionFactory().openSession();
            Criteria cc = ses.createCriteria(POJO.Driverdetails.class);
            cc.add(Restrictions.eq("dnicz", dnic));

            POJO.Driverdetails user_single = (POJO.Driverdetails) cc.uniqueResult();
            if (user_single == null) {
                Transaction tc = ses.beginTransaction();
                POJO.Driverdetails new_user = new POJO.Driverdetails();
                String dn = "DRE"+Math.random();
                new_user.setDrivername(dname);
                new_user.setDnicz(dnic);
                new_user.setDcontactz(dcontact);
                new_user.setDpasswordz(dpwz);
                new_user.setBranchz(dbrnch);
                new_user.setStatusz("Active");
                new_user.setDregno(dn);

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
