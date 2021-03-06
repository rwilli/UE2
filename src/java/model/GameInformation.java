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
    private HashMap<String, Player> players = null;
    private int round = 0;
    private long start = 0;
    private int sec = 0;
    private int min = 0;
    private String cubeComputer = "";
    
    public GameInformation() {
        players = new HashMap<String, Player>();
        start = System.currentTimeMillis();
    }
    
    public void setPlayers(HashMap<String, Player> players) {
        this.players = players;
    }
    
    public List<Player> getPlayers() {
        return new ArrayList<Player>(players.values());
    }
    
    public Player getPlayerById(String str) {
        return this.players.get(str);
    }
    
    public int getNumberOfPlayers() {
        return this.players.size();
    }
    
    public void addPlayer(String id, Player player) {
        if(!players.containsKey(id)) {
            players.put(id, player);
        }
    }
    
    public void incrementRound() {
        this.round++;
    }
    
    public int getRound() {
        return this.round;
    }
    
    public String getTime() {
        String str = "";
        
        sec = (int) ((System.currentTimeMillis() - start) / 1000);
        
        min = sec / 60;
        sec = sec % 60;
        
        str += this.min + " min, " + this.sec + " sec";
        
        return str;
    }
    
    public void setCubeComputer(String number) {
        this.cubeComputer = number;
    }
    
    public String getCubeComputer() {
        return this.cubeComputer;
    }
}
