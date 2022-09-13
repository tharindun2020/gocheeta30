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


public class LoginUser extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String unamez = request.getParameter("uname");
            String pwz = request.getParameter("passwordz");

            PrintWriter out = response.getWriter();

            Session ses = Utill.NewHibernateUtil.getSessionFactory().openSession();
            Criteria cc = ses.createCriteria(POJO.Users.class);
            cc.add(Restrictions.eq("nicz", unamez));
            cc.add(Restrictions.eq("passwrdz", pwz));

            POJO.Users userz = (POJO.Users) cc.uniqueResult();
            if (userz == null) {
                out.write("Invalid");
            } else {
                HttpSession hs = request.getSession();
                hs.setAttribute("user1", userz);

                out.write("Done");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

}
