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
#import "ThriftLogOutRequest.h"

@interface EsLogOutRequest : EsRequest {
@private
	BOOL dropConnection_set_;
	BOOL dropConnection_;
	BOOL dropAllConnections_set_;
	BOOL dropAllConnections_;
}

@property(nonatomic) BOOL dropConnection;
@property(nonatomic) BOOL dropAllConnections;

- (id) init;
- (id) initWithThriftObject: (id) thriftObject;
- (void) fromThrift: (id) thriftObject;
- (ThriftLogOutRequest*) toThrift;
- (id) newThrift;
@end
