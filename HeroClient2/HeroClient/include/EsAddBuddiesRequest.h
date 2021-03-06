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
#import "ThriftAddBuddiesRequest.h"
#import "EsFlattenedEsObject.h"
#import "ThriftFlattenedEsObject.h"

/**
 * This request adds an array of users to your buddy list. 
 You can access your buddy list through the user manager (see example below). 
 When a user is in your buddy list you receive events if 
 the buddy logs into the server or logs out. Buddies can also be added by the server. 
 Buddies are not persisted by default, so if you logout and then login again, 
 you have no buddies. It is common to add buddies to a user on the server 
 in the LoginEventHandler.
 * 
 * This example shows how to add a buddy and how to capture the BuddyStatusUpdateEvent.
 
 <pre>
private var _es:ElectroServer;

private function initialize():void {
        _es.engine.addEventListener(MessageType.BuddyStatusUpdatedEvent.name, onBuddyStatusUpdatedEvent);

        testAddBuddy();
}

private function testAddBuddy():void {
        //create the request and configure it
        var abr:AddBuddiesRequest = new AddBuddiesRequest();
        abr.buddyNames = ["mike"];

        //send it
        _es.engine.send(abr);
}

private function onBuddyStatusUpdatedEvent(e:BuddyStatusUpdateEvent):void {
        //buddies are managed by the user manager
        var user:User = _es.managerHelper.userManager.userByName(e.userName);

        switch (e.updateType) {
                case BuddyStatusUpdateUpdateAction.LoggedIn:
                        trace(user.userName +" just logged in :)");
                        break;
                case BuddyStatusUpdateUpdateAction.LoggedOut:
                        trace(user.userName +" just logged out :(");
                        break;
        }
}
</pre>
 */
@interface EsAddBuddiesRequest : EsRequest {
@private
	BOOL buddyNames_set_;
	NSMutableArray* buddyNames_;
	BOOL esObject_set_;
	EsObject* esObject_;
	BOOL skipInitialLoggedOutEvents_set_;
	BOOL skipInitialLoggedOutEvents_;
}

/**
 * Name of the users to add as buddies.
 */
@property(strong,nonatomic) NSMutableArray* buddyNames;
/**
 * This associates an optional EsObject with your buddy. Event handlers on the server can use this EsObject to perform custom logic to make more intricate buddy behaviors.
 */
@property(strong,nonatomic) EsObject* esObject;
/**
 * Normally, when you add a buddy to your buddy list, the server immediately sends back the status
 of that buddy whether they are online or offline. Setting this property to true tells the server
 to only send back notifications for buddies that are online and to skip the ones that are offline.
 */
@property(nonatomic) BOOL skipInitialLoggedOutEvents;

- (id) init;
- (id) initWithThriftObject: (id) thriftObject;
- (void) fromThrift: (id) thriftObject;
- (ThriftAddBuddiesRequest*) toThrift;
- (id) newThrift;
@end
