/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author rainer
 */
public class Field {
    private String id = "";
    private String src = "";
    private String alt = "";
    private String title = "";
    
    public Field() {
        
    }
    
    public void setID(String id) {
        this.id = id;
    }
    
    public String getID() {
        return this.id;
    }
    
    public void setSrc(String src) {
        this.src = src;
    }
    
    public String getSrc() {
        return this.src;
    }
    
    public void setAlt(String alt) {
        this.alt = alt;
    }
    
    public String getAlt() {
        return this.alt;
    }
    
    public void setTitle(String title) {
        this.title = title;
    }
    
    public String getTitle() {
        return this.title;
    }
}