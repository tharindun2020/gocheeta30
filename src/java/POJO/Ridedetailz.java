package POJO;
// Generated Sep 18, 2022 12:02:46 PM by Hibernate Tools 3.6.0



/**
 * Ridedetailz generated by hbm2java
 */
public class Ridedetailz  implements java.io.Serializable {


     private Integer id;
     private String vehnumber;
     private String vehicletype;
     private String drivername;
     private String driverregni;
     private String usernamez;
     private String contact;
     private String nicz;
     private String datez;
     private String timez;
     private String statusz;
     private String dropincity;
     private String dropoffcity;
     private String dropinaddress;
     private String dropoffadress;
     private String cost;

    public Ridedetailz() {
    }

    public Ridedetailz(String vehnumber, String vehicletype, String drivername, String driverregni, String usernamez, String contact, String nicz, String datez, String timez, String statusz, String dropincity, String dropoffcity, String dropinaddress, String dropoffadress, String cost) {
       this.vehnumber = vehnumber;
       this.vehicletype = vehicletype;
       this.drivername = drivername;
       this.driverregni = driverregni;
       this.usernamez = usernamez;
       this.contact = contact;
       this.nicz = nicz;
       this.datez = datez;
       this.timez = timez;
       this.statusz = statusz;
       this.dropincity = dropincity;
       this.dropoffcity = dropoffcity;
       this.dropinaddress = dropinaddress;
       this.dropoffadress = dropoffadress;
       this.cost = cost;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public String getVehnumber() {
        return this.vehnumber;
    }
    
    public void setVehnumber(String vehnumber) {
        this.vehnumber = vehnumber;
    }
    public String getVehicletype() {
        return this.vehicletype;
    }
    
    public void setVehicletype(String vehicletype) {
        this.vehicletype = vehicletype;
    }
    public String getDrivername() {
        return this.drivername;
    }
    
    public void setDrivername(String drivername) {
        this.drivername = drivername;
    }
    public String getDriverregni() {
        return this.driverregni;
    }
    
    public void setDriverregni(String driverregni) {
        this.driverregni = driverregni;
    }
    public String getUsernamez() {
        return this.usernamez;
    }
    
    public void setUsernamez(String usernamez) {
        this.usernamez = usernamez;
    }
    public String getContact() {
        return this.contact;
    }
    
    public void setContact(String contact) {
        this.contact = contact;
    }
    public String getNicz() {
        return this.nicz;
    }
    
    public void setNicz(String nicz) {
        this.nicz = nicz;
    }
    public String getDatez() {
        return this.datez;
    }
    
    public void setDatez(String datez) {
        this.datez = datez;
    }
    public String getTimez() {
        return this.timez;
    }
    
    public void setTimez(String timez) {
        this.timez = timez;
    }
    public String getStatusz() {
        return this.statusz;
    }
    
    public void setStatusz(String statusz) {
        this.statusz = statusz;
    }
    public String getDropincity() {
        return this.dropincity;
    }
    
    public void setDropincity(String dropincity) {
        this.dropincity = dropincity;
    }
    public String getDropoffcity() {
        return this.dropoffcity;
    }
    
    public void setDropoffcity(String dropoffcity) {
        this.dropoffcity = dropoffcity;
    }
    public String getDropinaddress() {
        return this.dropinaddress;
    }
    
    public void setDropinaddress(String dropinaddress) {
        this.dropinaddress = dropinaddress;
    }
    public String getDropoffadress() {
        return this.dropoffadress;
    }
    
    public void setDropoffadress(String dropoffadress) {
        this.dropoffadress = dropoffadress;
    }
    public String getCost() {
        return this.cost;
    }
    
    public void setCost(String cost) {
        this.cost = cost;
    }




}


