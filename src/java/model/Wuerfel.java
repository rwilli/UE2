/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.Random;

/**
 *
 * @author rainer
 */
public class Wuerfel {
    private String title = "";
    private String image = "";
    private String alt = "";
    private int rndNumber = 0;
    private Random generator = null;
    
    public Wuerfel() {
        this.generator = new Random();
    }
    
    public void setTitle(String title) {
        this.title = title;
    }
    
    public String getTitle() {
        return this.title;
    }
    
    public void setImage(String image) {
        this.image = image;
    }
    
    public String getImage() {
        return this.image;
    }
    
    public void setAlt(String alt) {
        this.alt = alt;
    }
    
    public String getAlt() {
        return this.alt;
    }
    
    public void wuerfeln() {
        rndNumber = generator.nextInt(6) + 1;
        
        if (rndNumber == 1) {
            setTitle("W&uuml;rfel Zahl 1");
            setImage("img/wuerfel1.png");
            setAlt("W&uuml;rfel Zahl 1");
        }
        if (rndNumber == 2) {
            setTitle("W&uuml;rfel Zahl 2");
            setImage("img/wuerfel2.png");
            setAlt("W&uuml;rfel Zahl 2");
        }
        if (rndNumber == 3) {
            setTitle("W&uuml;rfel Zahl 3");
            setImage("img/wuerfel3.png");
            setAlt("W&uuml;rfel Zahl 3");
        }
        if (rndNumber == 4) {
            setTitle("W&uuml;rfel Zahl 4");
            setImage("img/wuerfel4.png");
            setAlt("W&uuml;rfel Zahl 4");
        }
        if (rndNumber == 5) {
            setTitle("W&uuml;rfel Zahl 5");
            setImage("img/wuerfel5.png");
            setAlt("W&uuml;rfel Zahl 5");
        }
        if (rndNumber == 6) {
            setTitle("W&uuml;rfel Zahl 6");
            setImage("img/wuerfel6.png");
            setAlt("W&uuml;rfel Zahl 6");
        }
    }
    
}
