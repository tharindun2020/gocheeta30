package POJO;
// Generated Sep 18, 2022 12:02:46 PM by Hibernate Tools 3.6.0



/**
 * Reviews generated by hbm2java
 */
public class Reviews  implements java.io.Serializable {


     private Integer id;
     private String vehiclenumber;
     private String reviewz;
     private String usernamez;
     private String datez;
     private String timez;
     private String statusz;

    public Reviews() {
    }

    public Reviews(String vehiclenumber, String reviewz, String usernamez, String datez, String timez, String statusz) {
       this.vehiclenumber = vehiclenumber;
       this.reviewz = reviewz;
       this.usernamez = usernamez;
       this.datez = datez;
       this.timez = timez;
       this.statusz = statusz;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public String getVehiclenumber() {
        return this.vehiclenumber;
    }
    
    public void setVehiclenumber(String vehiclenumber) {
        this.vehiclenumber = vehiclenumber;
    }
    public String getReviewz() {
        return this.reviewz;
    }
    
    public void setReviewz(String reviewz) {
        this.reviewz = reviewz;
    }
    public String getUsernamez() {
        return this.usernamez;
    }
    
    public void setUsernamez(String usernamez) {
        this.usernamez = usernamez;
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




}


