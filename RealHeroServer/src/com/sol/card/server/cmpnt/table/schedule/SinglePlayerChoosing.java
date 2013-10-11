package com.sol.card.server.cmpnt.table.schedule;

import com.electrotank.electroserver5.extensions.api.ScheduledCallback;
import com.sol.card.server.cmpnt.Player;
import com.sol.card.server.cmpnt.TableModel;
import com.sol.card.server.util.c;

public class SinglePlayerChoosing implements ScheduledCallback {
    final String tag = "==> Choosing count down ==> ";
    TableModel table;
    int tickCounter = c.default_wait_time;
    Player player;
    
    public SinglePlayerChoosing(TableModel inputTable, Player inputPlayer) {
    
        this.table = inputTable;
        this.player = inputPlayer;
    }
    
    @Override
    public void scheduledCallback() {
    
        boolean stillWaiting = stillWaiting();
        if (stillWaiting) {
            tick();
        } else {
            table.cancelScheduledExecution();
        }
        
        
    }
    
    private boolean stillWaiting() {
    
        if (player.stateAction.equals(c.action.none)) {
            return false;
        } else if (player.stateAction.equals(c.action.choosing_from_hand)) {
            return true;
        } else if (player.stateAction.equals(c.action.choosing_from_showing)) {
            return true;
        } else if (player.stateAction.equals(c.action.choosing_from_color)) {
            return true;
        } else if (player.stateAction.equals(c.action.choosing_from_suits)) { return true; }
        return false;
    }
    
    public void tick() {
    
        if (tickCounter < 1) {
            player.autoDecise();
            table.cancelScheduledExecution();
        }
        tickCounter -= 1;
    }
}
