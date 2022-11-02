#import <Foundation/Foundation.h>
#import "OAIMainAPIResponse.h"
#import "OAIStructsUserInfoPayload.h"
#import "OAIApi.h"

/**
* WhatsAPI Go
* The V2 of WhatsAPI Go
*
* The version of the OpenAPI document: 2.0
* Contact: manjit@sponsorbook.io
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/



@interface OAIMiscellaneousApi: NSObject <OAIApi>

extern NSString* kOAIMiscellaneousApiErrorDomain;
extern NSInteger kOAIMiscellaneousApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(OAIApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Get profile pic.
/// Returns the profile pic of the given user.
///
/// @param instanceKey Instance key
/// @param jid JID
/// 
///  code:200 message:"Success",
///  code:400 message:"Bad Request",
///  code:401 message:"Unauthorized",
///  code:404 message:"Instance not found",
///  code:500 message:"Internal Server Error"
///
/// @return OAIMainAPIResponse*
-(NSURLSessionTask*) instancesInstanceKeyMiscProfilePicGetWithInstanceKey: (NSString*) instanceKey
    jid: (NSString*) jid
    completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler;


/// Fetches the users info.
/// Gets the user info for the given user ids. This does not checks if user is registered or not
///
/// @param instanceKey Instance key
/// @param data Data
/// 
///  code:200 message:"Success",
///  code:400 message:"Bad Request",
///  code:401 message:"Unauthorized",
///  code:404 message:"Instance not found",
///  code:500 message:"Internal Server Error"
///
/// @return OAIMainAPIResponse*
-(NSURLSessionTask*) instancesInstanceKeyMiscUserInfoPostWithInstanceKey: (NSString*) instanceKey
    data: (OAIStructsUserInfoPayload*) data
    completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler;



@end
