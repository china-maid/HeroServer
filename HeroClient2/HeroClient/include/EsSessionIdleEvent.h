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
#import "ThriftSessionIdleEvent.h"

/**
 * This event occurs if the client has been idle (not sending any messages to the server) for an amount of time that is equal to or greater than the maximum time allowed for idling. This time 
 is specified in the admin under General Settings. It is this field: Client Idle Disconnect Time.
 * 
 * This shows how to listen for the event.
 
 <pre>
private var _es:ElectroServer;

private function initialize():void {
        _es.engine.addEventListener(MessageType.SessionIdleEvent.name, onSessionIdleEvent);

}

private function onSessionIdleEvent(e:SessionIdleEvent):void {
        trace("Client disconnected due to being idle for too long.");
}

 </pre>
 */
@interface EsSessionIdleEvent : EsEvent {
@private
}


- (id) init;
- (id) initWithThriftObject: (id) thriftObject;
- (void) fromThrift: (id) thriftObject;
- (ThriftSessionIdleEvent*) toThrift;
- (id) newThrift;
@end
