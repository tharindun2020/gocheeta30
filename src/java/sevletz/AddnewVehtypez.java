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

public class AddnewVehtypez extends HttpServlet {

   @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {

            System.out.println("Login Ekata Awa");

            String vehtypname = request.getParameter("vtype");
            String vehcostz = request.getParameter("costz");

            PrintWriter out = response.getWriter();

            Session ses = Utill.NewHibernateUtil.getSessionFactory().openSession();
            Criteria cc = ses.createCriteria(POJO.Vehicletypez.class);
            cc.add(Restrictions.eq("vehtype", vehtypname));

            POJO.Vehicletypez user_single = (POJO.Vehicletypez) cc.uniqueResult();
            if (user_single == null) {
                Transaction tc = ses.beginTransaction();
                POJO.Vehicletypez new_user = new POJO.Vehicletypez();
                new_user.setVehtype(vehtypname);
                new_user.setCosta(vehcostz);
                new_user.setStatuz("Active");
                
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
