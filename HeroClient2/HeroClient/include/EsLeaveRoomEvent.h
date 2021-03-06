//
//  Autogenerated by CocoaTouchApiGenerator
//
//  DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
//



#import "EsMessage.h"
#import "EsMessageType.h"
#import "EsRequest.h"
#import "EsResponse.h"
#import "EsEvent.h"
#import "EsEntity.h"
#import "EsObject.h"
#import "ThriftLeaveRoomEvent.h"

/**
 * When a user leaves a room this event occurs. The user can leave the room voluntarily using the LeaveRoomRequest, or the server can remove the user from the room. In either case 
 this event occurs.  After leaving a room, ZoneManager can no longer give
 you the names of the users in the room, but it can still give you a count of them.
 * 
 * This shows how to leave a room and capture the LeaveRoomEvent.
<pre>
private function leaveRoom():void {
        _es.engine.addEventListener(MessageType.LeaveRoomEvent.name, onLeaveRoomEvent);

        var lr:LeaveRoomRequest = new LeaveRoomRequest();
        lr.roomId = _myRoom.id;
        lr.zoneId = _myRoom.zoneId;

        _es.engine.send(lr);
}

private function onLeaveRoomEvent(e:LeaveRoomEvent):void {
        trace("room left");
}

</pre>
 */
@interface EsLeaveRoomEvent : EsEvent {
@private
	BOOL zoneId_set_;
	int32_t zoneId_;
	BOOL roomId_set_;
	int32_t roomId_;
}

/**
 * The id of the zone just left.
 */
@property(nonatomic) int32_t zoneId;
/**
 * The id of the room just left
 */
@property(nonatomic) int32_t roomId;

- (id) init;
- (id) initWithThriftObject: (id) thriftObject;
- (void) fromThrift: (id) thriftObject;
- (ThriftLeaveRoomEvent*) toThrift;
- (id) newThrift;
@end
