/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author rainer
 */
public class Player {
    private String name = "";
    private String image = "";
    private String title = "";
    private String alt = "";
    private int actPosition = 0;
    private Wuerfel wuerfel;
    
    public Player() {
        wuerfel = new Wuerfel();
    }
    
    public void setName(String name) {
        this.name = name;
    }
    
    public String getName() {
        return this.name;
    }
    
    public void setImage(String image) {
        this.image = image;
    }
    
    public String getImage() {
        return this.image;
    }
    
    public void setTitle(String title) {
        this.title = title;
    }
    
    public String getTitle() {
        return this.title;
    }
    
    public void setAlt(String alt) {
        this.alt = alt;
    }
    
    public String getAlt() {
        return this.alt;
    }
    
    public void setActPosition(int pos) {
        this.actPosition = pos;
    }
    
    public int getActPosition() {
        return this.actPosition;
    }
    
    public Wuerfel getWuerfel() {
        return this.wuerfel;
    }
    
    public void wuerfel() {
        this.wuerfel.wuerfeln();
    }
}
