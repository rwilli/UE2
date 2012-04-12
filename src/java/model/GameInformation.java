/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author rainer
 */
public class GameInformation {
    private List<Player> players = new ArrayList<Player>();
    
    public GameInformation() {
        
    }
    
    public List<Player> getPlayers() {
        return this.players;
    }
    
    public int getNumberOfPlayers() {
        return this.players.size();
    }
    
    public void addPlayer(Player player) {
        this.players.add(player);
    }
}
