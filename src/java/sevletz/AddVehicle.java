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


public class AddVehicle extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {

            String vehname = request.getParameter("vehname");
            String vehtype = request.getParameter("vehtype");
            String vehnumber = request.getParameter("vehnumber");
            String dnamez = request.getParameter("dnamez");
            String chassienumber = request.getParameter("chassienumber");
            String dregnumber = request.getParameter("dregnumber");
            String branchz = request.getParameter("branchz");
            String cityz = request.getParameter("cityz");

            PrintWriter out = response.getWriter();

            Session ses = Utill.NewHibernateUtil.getSessionFactory().openSession();
            Criteria cc = ses.createCriteria(POJO.Vehicle.class);
            cc.add(Restrictions.eq("vehumber", vehnumber));

            POJO.Vehicle user_single = (POJO.Vehicle) cc.uniqueResult();
            if (user_single == null) {

                Criteria cc2 = ses.createCriteria(POJO.Vehicle.class);
                cc2.add(Restrictions.eq("chassienumber", chassienumber));
                POJO.Vehicle user_single2 = (POJO.Vehicle) cc2.uniqueResult();
                if (user_single == null) {
                    String stat = "Active";
                    String avaib = "ok";
                    Transaction tc = ses.beginTransaction();
                    POJO.Vehicle new_user = new POJO.Vehicle();
                    new_user.setVehiclename(vehname);
                    new_user.setType(vehtype);
                    new_user.setVehumber(vehnumber);
                    new_user.setStatusz(stat);
                    new_user.setCity(cityz);
                    new_user.setBranchz(branchz);
                    new_user.setAvailablez(avaib);
                    new_user.setDname(dnamez);
                    new_user.setDregno(dregnumber);
                    new_user.setChassienumber(chassienumber);
                    ses.save(new_user);
                    tc.commit();
                    ses.close();
                    out.write("ok");
                } else {
                    out.write("alread");
                }

            } else {
                out.write("alread");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
