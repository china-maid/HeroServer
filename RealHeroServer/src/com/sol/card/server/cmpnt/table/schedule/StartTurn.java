package com.sol.card.server.cmpnt.table.schedule;

import com.electrotank.electroserver5.extensions.api.ScheduledCallback;
import com.sol.card.server.cmpnt.TableModel;
import com.sol.card.server.util.l;

public class StartTurn implements ScheduledCallback {
    final String tag = "==> Starting turn count down ==> ";
    TableModel table;
    int tickCounter;
    
    public StartTurn(TableModel inputTable, int waitTime) {
    
        this.table = inputTable;
        this.tickCounter = waitTime;
    }
    
    
    @Override
    public void scheduledCallback() {
    
        tick();
    }
    
    
    public void tick() {
    
        l.logger().d(tag, "start turn count down " + tickCounter);
        if (tickCounter < 1) {
            table.startTurn(table.players.turnHolder.userName);
            table.cancelScheduledExecution();
            return;
        } else {
            tickCounter -= 1;
        }
    }
}
