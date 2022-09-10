/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sevletz;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

public class AddreviewUser extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {

            System.out.println("Login Ekata Awa");

            String dname = request.getParameter("revw");
            String vehnumb = request.getParameter("vehz");

            PrintWriter out = response.getWriter();

            Session ses = Utill.NewHibernateUtil.getSessionFactory().openSession();

            Transaction tc = ses.beginTransaction();
            POJO.Reviews new_user = new POJO.Reviews();

            SimpleDateFormat format1 = new SimpleDateFormat("yyyy/MM/dd");
            SimpleDateFormat format2 = new SimpleDateFormat("HH:mm:ss");
            java.util.Date today = new Date();
            String today_date = format1.format(today);
            String today_date2 = format2.format(today);

            new_user.setReviewz(dname);
            new_user.setStatusz("Active");
            new_user.setVehiclenumber(vehnumb);
            new_user.setDatez(today_date);
            new_user.setTimez(today_date2);
            POJO.Users userz = (POJO.Users) request.getSession().getAttribute("user1");
            new_user.setUsernamez(userz.getNamez());
            ses.save(new_user);
            tc.commit();
            ses.close();
            out.write("ok");

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

}
