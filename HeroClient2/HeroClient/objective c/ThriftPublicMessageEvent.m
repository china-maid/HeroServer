/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 */

#import <Foundation/Foundation.h>

#import "TProtocol.h"
#import "TApplicationException.h"
#import "TProtocolUtil.h"
#import "TProcessor.h"

#import "ThriftFlattenedEsObject.h"

#import "ThriftPublicMessageEvent.h"


@implementation ThriftPublicMessageEventConstants
+ (void) initialize {
}
@end

@implementation ThriftPublicMessageEvent

- (id) initWithMessage: (NSString *) message userName: (NSString *) userName zoneId: (int32_t) zoneId roomId: (int32_t) roomId esObject: (ThriftFlattenedEsObject *) esObject
{
  self = [super init];
  __message = message;
  __message_isset = YES;
  __userName = userName;
  __userName_isset = YES;
  __zoneId = zoneId;
  __zoneId_isset = YES;
  __roomId = roomId;
  __roomId_isset = YES;
  __esObject = esObject;
  __esObject_isset = YES;
  return self;
}

- (id) initWithCoder: (NSCoder *) decoder
{
  self = [super init];
  if ([decoder containsValueForKey: @"message"])
  {
    __message = [decoder decodeObjectForKey: @"message"];
    __message_isset = YES;
  }
  if ([decoder containsValueForKey: @"userName"])
  {
    __userName = [decoder decodeObjectForKey: @"userName"];
    __userName_isset = YES;
  }
  if ([decoder containsValueForKey: @"zoneId"])
  {
    __zoneId = [decoder decodeInt32ForKey: @"zoneId"];
    __zoneId_isset = YES;
  }
  if ([decoder containsValueForKey: @"roomId"])
  {
    __roomId = [decoder decodeInt32ForKey: @"roomId"];
    __roomId_isset = YES;
  }
  if ([decoder containsValueForKey: @"esObject"])
  {
    __esObject = [decoder decodeObjectForKey: @"esObject"];
    __esObject_isset = YES;
  }
  return self;
}

- (void) encodeWithCoder: (NSCoder *) encoder
{
  if (__message_isset)
  {
    [encoder encodeObject: __message forKey: @"message"];
  }
  if (__userName_isset)
  {
    [encoder encodeObject: __userName forKey: @"userName"];
  }
  if (__zoneId_isset)
  {
    [encoder encodeInt32: __zoneId forKey: @"zoneId"];
  }
  if (__roomId_isset)
  {
    [encoder encodeInt32: __roomId forKey: @"roomId"];
  }
  if (__esObject_isset)
  {
    [encoder encodeObject: __esObject forKey: @"esObject"];
  }
}


- (NSString *) message {
  return __message;
}

- (void) setMessage: (NSString *) message {
  __message = message;
  __message_isset = YES;
}

- (BOOL) messageIsSet {
  return __message_isset;
}

- (void) unsetMessage {
  __message = nil;
  __message_isset = NO;
}

- (NSString *) userName {
  return __userName;
}

- (void) setUserName: (NSString *) userName {
  __userName = userName;
  __userName_isset = YES;
}

- (BOOL) userNameIsSet {
  return __userName_isset;
}

- (void) unsetUserName {
  __userName = nil;
  __userName_isset = NO;
}

- (int32_t) zoneId {
  return __zoneId;
}

- (void) setZoneId: (int32_t) zoneId {
  __zoneId = zoneId;
  __zoneId_isset = YES;
}

- (BOOL) zoneIdIsSet {
  return __zoneId_isset;
}

- (void) unsetZoneId {
  __zoneId_isset = NO;
}

- (int32_t) roomId {
  return __roomId;
}

- (void) setRoomId: (int32_t) roomId {
  __roomId = roomId;
  __roomId_isset = YES;
}

- (BOOL) roomIdIsSet {
  return __roomId_isset;
}

- (void) unsetRoomId {
  __roomId_isset = NO;
}

- (ThriftFlattenedEsObject *) esObject {
  return __esObject;
}

- (void) setEsObject: (ThriftFlattenedEsObject *) esObject {
  __esObject = esObject;
  __esObject_isset = YES;
}

- (BOOL) esObjectIsSet {
  return __esObject_isset;
}

- (void) unsetEsObject {
  __esObject = nil;
  __esObject_isset = NO;
}

- (void) read: (id <TProtocol>) inProtocol
{
  NSString * fieldName;
  int fieldType;
  int fieldID;

  [inProtocol readStructBeginReturningName: NULL];
  while (true)
  {
    [inProtocol readFieldBeginReturningName: &fieldName type: &fieldType fieldID: &fieldID];
    if (fieldType == TType_STOP) { 
      break;
    }
    switch (fieldID)
    {
      case 1:
        if (fieldType == TType_STRING) {
          NSString * fieldValue = [inProtocol readString];
          [self setMessage: fieldValue];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      case 2:
        if (fieldType == TType_STRING) {
          NSString * fieldValue = [inProtocol readString];
          [self setUserName: fieldValue];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      case 3:
        if (fieldType == TType_I32) {
          int32_t fieldValue = [inProtocol readI32];
          [self setZoneId: fieldValue];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      case 4:
        if (fieldType == TType_I32) {
          int32_t fieldValue = [inProtocol readI32];
          [self setRoomId: fieldValue];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      case 5:
        if (fieldType == TType_STRUCT) {
          ThriftFlattenedEsObject *fieldValue = [[ThriftFlattenedEsObject alloc] init];
          [fieldValue read: inProtocol];
          [self setEsObject: fieldValue];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      default:
        [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        break;
    }
    [inProtocol readFieldEnd];
  }
  [inProtocol readStructEnd];
}

- (void) write: (id <TProtocol>) outProtocol {
  [outProtocol writeStructBeginWithName: @"ThriftPublicMessageEvent"];
  if (__message_isset) {
    if (__message != nil) {
      [outProtocol writeFieldBeginWithName: @"message" type: TType_STRING fieldID: 1];
      [outProtocol writeString: __message];
      [outProtocol writeFieldEnd];
    }
  }
  if (__userName_isset) {
    if (__userName != nil) {
      [outProtocol writeFieldBeginWithName: @"userName" type: TType_STRING fieldID: 2];
      [outProtocol writeString: __userName];
      [outProtocol writeFieldEnd];
    }
  }
  if (__zoneId_isset) {
    [outProtocol writeFieldBeginWithName: @"zoneId" type: TType_I32 fieldID: 3];
    [outProtocol writeI32: __zoneId];
    [outProtocol writeFieldEnd];
  }
  if (__roomId_isset) {
    [outProtocol writeFieldBeginWithName: @"roomId" type: TType_I32 fieldID: 4];
    [outProtocol writeI32: __roomId];
    [outProtocol writeFieldEnd];
  }
  if (__esObject_isset) {
    if (__esObject != nil) {
      [outProtocol writeFieldBeginWithName: @"esObject" type: TType_STRUCT fieldID: 5];
      [__esObject write: outProtocol];
      [outProtocol writeFieldEnd];
    }
  }
  [outProtocol writeFieldStop];
  [outProtocol writeStructEnd];
}

- (NSString *) description {
  NSMutableString * ms = [NSMutableString stringWithString: @"ThriftPublicMessageEvent("];
  [ms appendString: @"message:"];
  [ms appendFormat: @"\"%@\"", __message];
  [ms appendString: @",userName:"];
  [ms appendFormat: @"\"%@\"", __userName];
  [ms appendString: @",zoneId:"];
  [ms appendFormat: @"%i", __zoneId];
  [ms appendString: @",roomId:"];
  [ms appendFormat: @"%i", __roomId];
  [ms appendString: @",esObject:"];
  [ms appendFormat: @"%@", __esObject];
  [ms appendString: @")"];
  return [NSString stringWithString: ms];
}

@end

