//
//  Autogenerated by CocoaTouchApiGenerator
//
//  DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
//



#import "EsServerGame.h"
#import "EsThriftUtil.h"

@implementation EsServerGame

@synthesize gameDetails = gameDetails_;
@synthesize id = id_;
@synthesize roomId = roomId_;
@synthesize zoneId = zoneId_;
@synthesize locked = locked_;
@synthesize passwordProtected = passwordProtected_;

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
	ThriftServerGame* t = (ThriftServerGame*) thriftObject;
	if ([t gameDetailsIsSet] && t.gameDetails != nil) {
		self.gameDetails = [EsThriftUtil unflattenEsObject:[[EsFlattenedEsObject alloc] initWithThriftObject:t.gameDetails]];
	}
	if ([t idIsSet]) {
		self.id = t.id;
	}
	if ([t roomIdIsSet]) {
		self.roomId = t.roomId;
	}
	if ([t zoneIdIsSet]) {
		self.zoneId = t.zoneId;
	}
	if ([t lockedIsSet]) {
		self.locked = t.locked;
	}
	if ([t passwordProtectedIsSet]) {
		self.passwordProtected = t.passwordProtected;
	}
}

- (ThriftServerGame*) toThrift {
	ThriftServerGame* _t = [[ThriftServerGame alloc] init];;
	if (gameDetails_set_ && gameDetails_ != nil) {
		ThriftFlattenedEsObject* _gameDetails;
		_gameDetails = [[EsThriftUtil flattenEsObject:self.gameDetails] toThrift];
		_t.gameDetails = _gameDetails;
	}
	if (id_set_) {
		int32_t _id;
		_id = self.id;
		_t.id = _id;
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
	if (locked_set_) {
		BOOL _locked;
		_locked = self.locked;
		_t.locked = _locked;
	}
	if (passwordProtected_set_) {
		BOOL _passwordProtected;
		_passwordProtected = self.passwordProtected;
		_t.passwordProtected = _passwordProtected;
	}
	return _t;
}

- (id) newThrift {
	return [[ThriftServerGame alloc] init];
}

- (void) setGameDetails: (EsObject*) gameDetails {
	gameDetails_ = gameDetails;
	gameDetails_set_ = true;
}

- (void) setId: (int32_t) id {
	id_ = id;
	id_set_ = true;
}

- (void) setRoomId: (int32_t) roomId {
	roomId_ = roomId;
	roomId_set_ = true;
}

- (void) setZoneId: (int32_t) zoneId {
	zoneId_ = zoneId;
	zoneId_set_ = true;
}

- (void) setLocked: (BOOL) locked {
	locked_ = locked;
	locked_set_ = true;
}

- (void) setPasswordProtected: (BOOL) passwordProtected {
	passwordProtected_ = passwordProtected;
	passwordProtected_set_ = true;
}

- (void) dealloc {
	self.gameDetails = nil;
}

@end
