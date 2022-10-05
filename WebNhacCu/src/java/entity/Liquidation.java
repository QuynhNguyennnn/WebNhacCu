/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.sql.Date;

/**
 *
 * @author DELL
 */
public class Liquidation {
    private String ID;
    private String title;
    private String image;
    private String description;
    private String ContactDescrip;
    private int price;
    private int sell_status;
    private int cus_id;
    private Date date;
    private int cate_id;

    public Liquidation() {
    }

    public Liquidation(String ID, String title, String image, String description, String ContactDescrip, int price, int sell_status, int cus_id, Date date, int cate_id) {
        this.ID = ID;
        this.title = title;
        this.image = image;
        this.description = description;
        this.ContactDescrip = ContactDescrip;
        this.price = price;
        this.sell_status = sell_status;
        this.cus_id = cus_id;
        this.date = date;
        this.cate_id = cate_id;
    }

    

    public String getID() {
        return ID;
    }

    public void setID(String ID) {
        this.ID = ID;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getContactDescrip() {
        return ContactDescrip;
    }

    public void setContactDescrip(String ContactDescrip) {
        this.ContactDescrip = ContactDescrip;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getSell_status() {
        return sell_status;
    }

    public void setSell_status(int sell_status) {
        this.sell_status = sell_status;
    }

    public int getCus_id() {
        return cus_id;
    }

    public void setCus_id(int cus_id) {
        this.cus_id = cus_id;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getCate_id() {
        return cate_id;
    }

    public void setCate_id(int cate_id) {
        this.cate_id = cate_id;
    }

    @Override
    public String toString() {
        return "Liquidation{" + "ID=" + ID + ", title=" + title + ", image=" + image + ", description=" + description + ", ContactDescrip=" + ContactDescrip + ", price=" + price + ", sell_status=" + sell_status + ", cus_id=" + cus_id + ", date=" + date + ", cate_id=" + cate_id + '}';
    }


    
    
}
