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
    
    public GameInformation() {
        
    }
    
    public List<Player> getPlayers() {
        return new ArrayList<Player>(players.values());
    }
    
    public int getNumberOfPlayers() {
        return this.players.size();
    }
    
    public void addPlayer(String id, Player player) {
        if(!players.containsKey(id)) {
            players.put(id, player);
        }
    }
}
