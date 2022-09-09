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


public class AddnewBranch extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {

            System.out.println("Login Ekata Awa");

            String branchname = request.getParameter("branchname");

            PrintWriter out = response.getWriter();

            Session ses = Utill.NewHibernateUtil.getSessionFactory().openSession();
            Criteria cc = ses.createCriteria(POJO.Branches.class);
            cc.add(Restrictions.eq("branchname", branchname));

            POJO.Branches user_single = (POJO.Branches) cc.uniqueResult();
            if (user_single == null) {
                Transaction tc = ses.beginTransaction();
                POJO.Branches new_user = new POJO.Branches();
                new_user.setBranchname(branchname);
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
