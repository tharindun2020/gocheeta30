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
import org.hibernate.criterion.Restrictions;

public class LoadKilometerdistance extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String droingcity = request.getParameter("dropinloc");
            String drooffcity = request.getParameter("dropoffcity");
            String vehid = request.getParameter("vehicleid");

            

            Session ss = Utill.NewHibernateUtil.getSessionFactory().openSession();
            Criteria c1 = ss.createCriteria(POJO.Cities.class);
            c1.add(Restrictions.eq("city", droingcity));

            Criteria c2 = ss.createCriteria(POJO.Cities.class);
            c2.add(Restrictions.eq("city", drooffcity));

            POJO.Cities dro_in_city = (POJO.Cities) c1.uniqueResult();
            POJO.Cities dro_off_city = (POJO.Cities) c2.uniqueResult();

            int city1 = Integer.parseInt(dro_in_city.getDiliverycost());
            int city2 = Integer.parseInt(dro_off_city.getDiliverycost());
            String total = "";
            
            Criteria procri = ss.createCriteria(POJO.Vehicle.class);
            procri.add(Restrictions.eq("id", Integer.parseInt(vehid)));
            POJO.Vehicle single_vehicle = (POJO.Vehicle) procri.uniqueResult();
            String typez = single_vehicle.getType();
            
            Criteria procri2 = ss.createCriteria(POJO.Vehicletypez.class);
            procri2.add(Restrictions.eq("vehtype", typez));
            POJO.Vehicletypez single_vehicle_type = (POJO.Vehicletypez) procri.uniqueResult();
            
            double priceperkm = Double.parseDouble(single_vehicle_type.getCosta());
            if (city1 > city2) {

                int dis = city1 - city2;
                double ttz = priceperkm * dis;
                total = "" + ttz;
            } else if (city2 > city1) {

                int dis = city2 - city1;
                double ttz = priceperkm * dis;
                total = "" + ttz;
            } else if (city1 == city2) {
                double ttz = 150;
                total = "" + ttz;
            }

            PrintWriter out = response.getWriter();
            out.write(total);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
