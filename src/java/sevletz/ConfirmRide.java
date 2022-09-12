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


public class ConfirmRide extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {

            String vehid = request.getParameter("vehicleid");
            String dropingaddress = request.getParameter("dropinaddress");
            String dropoffaddress = request.getParameter("dropoffaddress");
            String dropincity = request.getParameter("dropinloc");
            String dropoffcity = request.getParameter("dropoffcity");
            String pricez = request.getParameter("price");

            SimpleDateFormat format1 = new SimpleDateFormat("yyyy/MM/dd");
            SimpleDateFormat format2 = new SimpleDateFormat("HH:mm:ss");
            java.util.Date today = new Date();
            String today_date = format1.format(today);
            String today_date2 = format2.format(today);

            Session ses = Utill.NewHibernateUtil.getSessionFactory().openSession();
            POJO.Vehicle veh_details = (POJO.Vehicle) ses.load(POJO.Vehicle.class, Integer.parseInt(vehid));
            POJO.Users current_user = (POJO.Users) request.getSession().getAttribute("user1");

            Transaction tc = ses.beginTransaction();

            veh_details.setAvailablez("Booked");
            ses.update(veh_details);

            POJO.Ridedetailz new_user = new POJO.Ridedetailz();
            new_user.setContact(current_user.getContacttz());
            new_user.setDatez(today_date);
            new_user.setDrivername(veh_details.getDname());
            new_user.setDriverregni(veh_details.getDregno());
            new_user.setNicz(current_user.getNicz());
            new_user.setTimez(today_date2);
            new_user.setUsernamez(current_user.getNamez());
            new_user.setVehicletype(veh_details.getType());
            new_user.setVehnumber(veh_details.getVehumber());
            new_user.setStatusz("Pending");
            new_user.setDropincity(dropincity);
            new_user.setDropoffcity(dropincity);
            new_user.setDropinaddress(dropingaddress);
            new_user.setDropoffadress(dropoffaddress);
            new_user.setCost(pricez);
            
            
            PrintWriter out = response.getWriter();
            ses.update(veh_details);
            ses.save(new_user);
            tc.commit();
            ses.close();
            out.write("ok");
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

}
