//
//  Autogenerated by CocoaTouchApiGenerator
//
//  DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
//



#import "EsGetUsersInRoomResponse.h"
#import "EsThriftUtil.h"

@implementation EsGetUsersInRoomResponse

@synthesize zoneId = zoneId_;
@synthesize roomId = roomId_;
@synthesize users = users_;

- (id) initWithThriftObject: (id) thriftObject {
	if ((self = [super init])) {
		self.messageType = EsMessageType_GetUsersInRoomResponse;
		self.users = [NSMutableArray array];
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
	ThriftGetUsersInRoomResponse* t = (ThriftGetUsersInRoomResponse*) thriftObject;
	if ([t zoneIdIsSet]) {
		self.zoneId = t.zoneId;
	}
	if ([t roomIdIsSet]) {
		self.roomId = t.roomId;
	}
	if ([t usersIsSet] && t.users != nil) {
		self.users = [[NSMutableArray alloc] init];
		for (ThriftUserListEntry* _tValVar_0 in t.users) {
			EsUserListEntry* _listDestVar_0;
			_listDestVar_0 = [[EsUserListEntry alloc] initWithThriftObject:_tValVar_0];
			[self.users addObject: _listDestVar_0];
		}
	}
}

- (ThriftGetUsersInRoomResponse*) toThrift {
	ThriftGetUsersInRoomResponse* _t = [[ThriftGetUsersInRoomResponse alloc] init];;
	if (zoneId_set_) {
		int32_t _zoneId;
		_zoneId = self.zoneId;
		_t.zoneId = _zoneId;
	}
	if (roomId_set_) {
		int32_t _roomId;
		_roomId = self.roomId;
		_t.roomId = _roomId;
	}
	if (users_set_ && users_ != nil) {
		NSMutableArray* _users;
		_users = [[NSMutableArray alloc] init];
		for (EsUserListEntry* _tValVar_0 in self.users) {
			ThriftUserListEntry* _listDestVar_0;
			_listDestVar_0 = [_tValVar_0 toThrift];
			[_users addObject: _listDestVar_0];
		}
		_t.users = _users;
	}
	return _t;
}

- (id) newThrift {
	return [[ThriftGetUsersInRoomResponse alloc] init];
}

- (void) setZoneId: (int32_t) zoneId {
	zoneId_ = zoneId;
	zoneId_set_ = true;
}

- (void) setRoomId: (int32_t) roomId {
	roomId_ = roomId;
	roomId_set_ = true;
}

- (void) setUsers: (NSMutableArray*) users {
	users_ = users;
	users_set_ = true;
}

- (void) dealloc {
	self.users = nil;
}

@end