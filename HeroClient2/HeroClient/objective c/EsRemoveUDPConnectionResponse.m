//
//  Autogenerated by CocoaTouchApiGenerator
//
//  DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
//



#import "EsRemoveUDPConnectionResponse.h"
#import "EsThriftUtil.h"

@implementation EsRemoveUDPConnectionResponse

@synthesize successful = successful_;
@synthesize error = error_;

- (id) initWithThriftObject: (id) thriftObject {
	if ((self = [super init])) {
		self.messageType = EsMessageType_RemoveUDPConnectionResponse;
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
	ThriftRemoveUDPConnectionResponse* t = (ThriftRemoveUDPConnectionResponse*) thriftObject;
	if ([t successfulIsSet]) {
		self.successful = t.successful;
	}
	if ([t errorIsSet]) {
		self.error = t.error;
	}
}

- (ThriftRemoveUDPConnectionResponse*) toThrift {
	ThriftRemoveUDPConnectionResponse* _t = [[ThriftRemoveUDPConnectionResponse alloc] init];;
	if (successful_set_) {
		BOOL _successful;
		_successful = self.successful;
		_t.successful = _successful;
	}
	if (error_set_) {
		int _error;
		_error = self.error;
		_t.error = _error;
	}
	return _t;
}

- (id) newThrift {
	return [[ThriftRemoveUDPConnectionResponse alloc] init];
}

- (void) setSuccessful: (BOOL) successful {
	successful_ = successful;
	successful_set_ = true;
}

- (void) setError: (int) error {
	error_ = error;
	error_set_ = true;
}


@end
