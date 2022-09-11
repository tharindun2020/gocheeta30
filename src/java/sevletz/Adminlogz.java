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
import org.hibernate.criterion.Restrictions;


public class Adminlogz extends HttpServlet {

     @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String unamez = request.getParameter("uname");
            String pwz = request.getParameter("passwordz");
            System.out.println("----"+unamez);
            System.out.println("----"+pwz);

            PrintWriter out = response.getWriter();

            Session ses = Utill.NewHibernateUtil.getSessionFactory().openSession();
            Criteria cc = ses.createCriteria(POJO.Adminlogz.class);
            cc.add(Restrictions.eq("unamez", unamez));
            cc.add(Restrictions.eq("pwz", pwz));

            POJO.Adminlogz userz = (POJO.Adminlogz) cc.uniqueResult();
            if (userz == null) {
                out.write("Invalid");
            } else {
                

                out.write("Done");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}
