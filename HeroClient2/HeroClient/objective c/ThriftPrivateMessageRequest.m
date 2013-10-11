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

#import "ThriftPrivateMessageRequest.h"


@implementation ThriftPrivateMessageRequestConstants
+ (void) initialize {
}
@end

@implementation ThriftPrivateMessageRequest

- (id) initWithMessage: (NSString *) message userNames: (NSArray *) userNames esObject: (ThriftFlattenedEsObject *) esObject
{
  self = [super init];
  __message = message;
  __message_isset = YES;
  __userNames = userNames;
  __userNames_isset = YES;
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
  if ([decoder containsValueForKey: @"userNames"])
  {
    __userNames = [decoder decodeObjectForKey: @"userNames"];
    __userNames_isset = YES;
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
  if (__userNames_isset)
  {
    [encoder encodeObject: __userNames forKey: @"userNames"];
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

- (NSArray *) userNames {
  return __userNames;
}

- (void) setUserNames: (NSArray *) userNames {
  __userNames = userNames;
  __userNames_isset = YES;
}

- (BOOL) userNamesIsSet {
  return __userNames_isset;
}

- (void) unsetUserNames {
  __userNames = nil;
  __userNames_isset = NO;
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
        if (fieldType == TType_LIST) {
          int _size0;
          [inProtocol readListBeginReturningElementType: NULL size: &_size0];
          NSMutableArray * fieldValue = [[NSMutableArray alloc] initWithCapacity: _size0];
          int _i1;
          for (_i1 = 0; _i1 < _size0; ++_i1)
          {
            NSString * _elem2 = [inProtocol readString];
            [fieldValue addObject: _elem2];
          }
          [inProtocol readListEnd];
          [self setUserNames: fieldValue];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      case 3:
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
  [outProtocol writeStructBeginWithName: @"ThriftPrivateMessageRequest"];
  if (__message_isset) {
    if (__message != nil) {
      [outProtocol writeFieldBeginWithName: @"message" type: TType_STRING fieldID: 1];
      [outProtocol writeString: __message];
      [outProtocol writeFieldEnd];
    }
  }
  if (__userNames_isset) {
    if (__userNames != nil) {
      [outProtocol writeFieldBeginWithName: @"userNames" type: TType_LIST fieldID: 2];
      {
        [outProtocol writeListBeginWithElementType: TType_STRING size: [__userNames count]];
        for (NSUInteger i4 = 0; i4 < [__userNames count]; i4++)
        {
          [outProtocol writeString: [__userNames objectAtIndex: i4]];
        }
        [outProtocol writeListEnd];
      }
      [outProtocol writeFieldEnd];
    }
  }
  if (__esObject_isset) {
    if (__esObject != nil) {
      [outProtocol writeFieldBeginWithName: @"esObject" type: TType_STRUCT fieldID: 3];
      [__esObject write: outProtocol];
      [outProtocol writeFieldEnd];
    }
  }
  [outProtocol writeFieldStop];
  [outProtocol writeStructEnd];
}

- (NSString *) description {
  NSMutableString * ms = [NSMutableString stringWithString: @"ThriftPrivateMessageRequest("];
  [ms appendString: @"message:"];
  [ms appendFormat: @"\"%@\"", __message];
  [ms appendString: @",userNames:"];
  [ms appendFormat: @"%@", __userNames];
  [ms appendString: @",esObject:"];
  [ms appendFormat: @"%@", __esObject];
  [ms appendString: @")"];
  return [NSString stringWithString: ms];
}

@end

