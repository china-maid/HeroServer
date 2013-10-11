package com.sol.card.server.cmpnt.table.schedule;

import com.electrotank.electroserver5.extensions.api.ScheduledCallback;
import com.sol.card.server.cmpnt.TableModel;
import com.sol.card.server.util.c;

public class FreePlay implements ScheduledCallback {
    final String tag = "==> FreePlay counting down ==> ";
    TableModel table;
    int tickCounter = c.default_wait_time;
    
    public FreePlay(TableModel inputTable, int inputWaitTime) {
    
        this.table = inputTable;
        this.tickCounter = inputWaitTime;
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
    
    
    private void tick() {
    
        if (tickCounter < 1) {
            table.players.turnHolder.cancel();
            table.cancelScheduledExecution();
        }
        tickCounter -= 1;
        
    }
    
    
    private boolean stillWaiting() {
    
        return table.players.turnHolder.stateAction.equals(c.action.free_play);
    }
    
}
