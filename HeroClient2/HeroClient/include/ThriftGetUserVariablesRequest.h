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


@interface ThriftGetUserVariablesRequest : NSObject <NSCoding> {
  NSString * __userName;
  NSSet * __userVariableNames;

  BOOL __userName_isset;
  BOOL __userVariableNames_isset;
}

#if TARGET_OS_IPHONE || (MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5)
@property (nonatomic, strong, getter=userName, setter=setUserName:) NSString * userName;
@property (nonatomic, strong, getter=userVariableNames, setter=setUserVariableNames:) NSSet * userVariableNames;
#endif

- (id) initWithUserName: (NSString *) userName userVariableNames: (NSSet *) userVariableNames;

- (void) read: (id <TProtocol>) inProtocol;
- (void) write: (id <TProtocol>) outProtocol;

- (NSString *) userName;
- (void) setUserName: (NSString *) userName;
- (BOOL) userNameIsSet;

- (NSSet *) userVariableNames;
- (void) setUserVariableNames: (NSSet *) userVariableNames;
- (BOOL) userVariableNamesIsSet;

@end

@interface ThriftGetUserVariablesRequestConstants : NSObject {
}
@end
