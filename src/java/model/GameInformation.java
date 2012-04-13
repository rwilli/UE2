/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/**
 *
 * @author rainer
 */
public class GameInformation {
    private HashMap<String, Player> players = new HashMap<String, Player>();
    //private List<Field> fields = new ArrayList<Field>();
    private int round = 0;
    private long start = 0;
    private int sec = 0;
    private int min = 0;
    private String wuerfelImg = "";
    
    public GameInformation() {
        start = System.currentTimeMillis();
    }
    
    public List<Player> getPlayers() {
        return new ArrayList<Player>(players.values());
    }
    
    public String getPlayerById(String str) {
        return this.players.get(str).getName();
    }
    
    public int getNumberOfPlayers() {
        return this.players.size();
    }
    
    public void addPlayer(String id, Player player) {
        if(!players.containsKey(id)) {
            players.put(id, player);
        }
    }
    
    //TODO place fields
    
    public void incrementRound() {
        this.round++;
    }
    
    public int getRound() {
        return this.round;
    }
    
    public String getTime() {
        String str = "";
        
        sec = (int) ((System.currentTimeMillis() - start) / 1000);
        
        //TODO implement min and sec overflow
        
        str += this.min + " min, " + this.sec + " sec";
        
        return str;
    }
    
    //dirty :D
    public void setWuerfelImg(String str) {
        this.wuerfelImg = str;
    }
    
    public String getWuerfelImg() {
        return this.wuerfelImg;
    }
}
