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


public class FinishRide extends HttpServlet {

 @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {

            String vehid = request.getParameter("vehicleid");

            Session ses = Utill.NewHibernateUtil.getSessionFactory().openSession();
            POJO.Ridedetailz veh_details = (POJO.Ridedetailz) ses.load(POJO.Ridedetailz.class, Integer.parseInt(vehid));
            POJO.Driverdetails current_user = (POJO.Driverdetails) request.getSession().getAttribute("driver1");
            
            
            Criteria cr = ses.createCriteria(POJO.Vehicle.class);
            cr.add(Restrictions.eq("availablez","Booked"));
            cr.add(Restrictions.eq("dregno", current_user.getDregno()));
            
            POJO.Vehicle singveh = (POJO.Vehicle) cr.uniqueResult();

            Transaction tc = ses.beginTransaction();

            veh_details.setStatusz("Done");
            singveh.setAvailablez("ok");
            ses.update(veh_details);
            ses.update(singveh);

            
            
            
            PrintWriter out = response.getWriter();
            ses.update(veh_details);
            tc.commit();
            ses.close();
            out.write("ok");
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}
