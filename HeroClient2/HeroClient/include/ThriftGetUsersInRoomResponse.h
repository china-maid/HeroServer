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
#import "ThriftUserListEntry.h"
#import "ThriftUserVariable.h"

@interface ThriftGetUsersInRoomResponse : NSObject <NSCoding> {
  int32_t __zoneId;
  int32_t __roomId;
  NSArray * __users;

  BOOL __zoneId_isset;
  BOOL __roomId_isset;
  BOOL __users_isset;
}

#if TARGET_OS_IPHONE || (MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5)
@property (nonatomic, getter=zoneId, setter=setZoneId:) int32_t zoneId;
@property (nonatomic, getter=roomId, setter=setRoomId:) int32_t roomId;
@property (nonatomic, strong, getter=users, setter=setUsers:) NSArray * users;
#endif

- (id) initWithZoneId: (int32_t) zoneId roomId: (int32_t) roomId users: (NSArray *) users;

- (void) read: (id <TProtocol>) inProtocol;
- (void) write: (id <TProtocol>) outProtocol;

- (int32_t) zoneId;
- (void) setZoneId: (int32_t) zoneId;
- (BOOL) zoneIdIsSet;

- (int32_t) roomId;
- (void) setRoomId: (int32_t) roomId;
- (BOOL) roomIdIsSet;

- (NSArray *) users;
- (void) setUsers: (NSArray *) users;
- (BOOL) usersIsSet;

@end

@interface ThriftGetUsersInRoomResponseConstants : NSObject {
}
@end