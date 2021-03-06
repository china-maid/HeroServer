//
//  Autogenerated by CocoaTouchApiGenerator
//
//  DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
//



#import "EsRequestDetails.h"
#import "EsThriftUtil.h"

@implementation EsRequestDetails

@synthesize pluginName = pluginName_;
@synthesize roomId = roomId_;
@synthesize zoneId = zoneId_;
@synthesize parameters = parameters_;

- (id) initWithThriftObject: (id) thriftObject {
	if ((self = [super init])) {
		self.roomId = -1;
		self.zoneId = -1;
		if (thriftObject != nil) {
			[self fromThrift: thriftObject];
		}
	}
	return self;
}

- (id) init {
	return [self initWithThriftObject: nil];
}

- (void) fromThrift: (id) thriftObject {
	ThriftRequestDetails* t = (ThriftRequestDetails*) thriftObject;
	if ([t pluginNameIsSet] && t.pluginName != nil) {
		self.pluginName = t.pluginName;
	}
	if ([t roomIdIsSet]) {
		self.roomId = t.roomId;
	}
	if ([t zoneIdIsSet]) {
		self.zoneId = t.zoneId;
	}
	if ([t parametersIsSet] && t.parameters != nil) {
		self.parameters = [EsThriftUtil unflattenEsObject:[[EsFlattenedEsObject alloc] initWithThriftObject:t.parameters]];
	}
}

- (ThriftRequestDetails*) toThrift {
	ThriftRequestDetails* _t = [[ThriftRequestDetails alloc] init];;
	if (pluginName_set_ && pluginName_ != nil) {
		NSString* _pluginName;
		_pluginName = self.pluginName;
		_t.pluginName = _pluginName;
	}
	if (roomId_set_) {
		int32_t _roomId;
		_roomId = self.roomId;
		_t.roomId = _roomId;
	}
	if (zoneId_set_) {
		int32_t _zoneId;
		_zoneId = self.zoneId;
		_t.zoneId = _zoneId;
	}
	if (parameters_set_ && parameters_ != nil) {
		ThriftFlattenedEsObject* _parameters;
		_parameters = [[EsThriftUtil flattenEsObject:self.parameters] toThrift];
		_t.parameters = _parameters;
	}
	return _t;
}

- (id) newThrift {
	return [[ThriftRequestDetails alloc] init];
}

- (void) setPluginName: (NSString*) pluginName {
	pluginName_ = pluginName;
	pluginName_set_ = true;
}

- (void) setRoomId: (int32_t) roomId {
	roomId_ = roomId;
	roomId_set_ = true;
}

- (void) setZoneId: (int32_t) zoneId {
	zoneId_ = zoneId;
	zoneId_set_ = true;
}

- (void) setParameters: (EsObject*) parameters {
	parameters_ = parameters;
	parameters_set_ = true;
}

- (void) dealloc {
	self.parameters = nil;
}

@end
