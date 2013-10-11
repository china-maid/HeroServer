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
#import "ThriftLeaveZoneEvent.h"

/**
 * When a user leaves all rooms in a zone this event occurs. 
 After a user leaves a zone, ZoneManager can no longer provide
 a list of rooms in that zone.
 * 
 * This shows how to leave a room and capture the LeaveRoomEvent and LeaveZoneEvent. The LeaveZoneEvent will only occur if the user has left all rooms in that zone.
<pre>
                private function leaveRoom():void {
                        _es.engine.addEventListener(MessageType.LeaveRoomEvent.name, onLeaveRoomEvent);
                        _es.engine.addEventListener(MessageType.LeaveZoneEvent.name, onLeaveZoneEvent);

                        var lr:LeaveRoomRequest = new LeaveRoomRequest();
                        lr.roomId = _myRoom.id;
                        lr.zoneId = _myRoom.zoneId;

                        _es.engine.send(lr);
                }

                private function onLeaveZoneEvent(e:Event):void {
                        trace("zone left");
                }

                private function onLeaveRoomEvent(e:LeaveRoomEvent):void {
                        trace("room left");
                }


</pre>
 */
@interface EsLeaveZoneEvent : EsEvent {
@private
	BOOL zoneId_set_;
	int32_t zoneId_;
}

/**
 * Id of the zone just left.
 */
@property(nonatomic) int32_t zoneId;

- (id) init;
- (id) initWithThriftObject: (id) thriftObject;
- (void) fromThrift: (id) thriftObject;
- (ThriftLeaveZoneEvent*) toThrift;
- (id) newThrift;
@end
