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
    private String image = "";
    private int rndNumber = 0;
    private Random generator = null;
    
    public Wuerfel() {
        this.generator = new Random();
    }
    
    public int wuerfeln() {
        rndNumber = generator.nextInt(6) + 1;
        
        return rndNumber;
    }
}
