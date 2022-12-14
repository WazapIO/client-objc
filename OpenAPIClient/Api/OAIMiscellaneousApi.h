#import <Foundation/Foundation.h>
#import "OAIAPIResponse.h"
#import "OAIFileUpload.h"
#import "OAIUpdateProfilePicRequest.h"
#import "OAIUserInfoPayload.h"
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

/// Download media
/// Downloads the media from the given media keys.
///
/// @param instanceKey Instance key
/// @param fileType File type
/// @param data Media data
/// @param responseType Response type (file, base64) (optional)
/// 
///  code:200 message:"Success",
///  code:400 message:"Bad Request",
///  code:401 message:"Unauthorized",
///  code:404 message:"Instance not found",
///  code:500 message:"Internal Server Error"
///
/// @return OAIAPIResponse*
-(NSURLSessionTask*) downloadMediaWithInstanceKey: (NSString*) instanceKey
    fileType: (NSString*) fileType
    data: (OAIFileUpload*) data
    responseType: (NSString*) responseType
    completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;


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
/// @return OAIAPIResponse*
-(NSURLSessionTask*) getProfilePicWithInstanceKey: (NSString*) instanceKey
    jid: (NSString*) jid
    completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;


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
/// @return OAIAPIResponse*
-(NSURLSessionTask*) getUsersInfoWithInstanceKey: (NSString*) instanceKey
    data: (OAIUserInfoPayload*) data
    completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;


/// Set chat presence
/// Sets the presence of the given chat. (Typing, Recording, Paused) Options: typing, recording, paused
///
/// @param instanceKey Instance key
/// @param jid JID
/// @param presence Presence
/// 
///  code:200 message:"Success",
///  code:400 message:"Bad Request",
///  code:401 message:"Unauthorized",
///  code:404 message:"Instance not found",
///  code:500 message:"Internal Server Error"
///
/// @return OAIAPIResponse*
-(NSURLSessionTask*) setChatPresenceWithInstanceKey: (NSString*) instanceKey
    jid: (NSString*) jid
    presence: (NSString*) presence
    completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;


/// Update profile picture
/// Changes the profile pic of the current logged in user.
///
/// @param instanceKey Instance key
/// @param updateProfilePicRequest 
/// 
///  code:200 message:"Success",
///  code:400 message:"Bad Request",
///  code:401 message:"Unauthorized",
///  code:404 message:"Instance not found",
///  code:500 message:"Internal Server Error"
///
/// @return OAIAPIResponse*
-(NSURLSessionTask*) updateProfilePicWithInstanceKey: (NSString*) instanceKey
    updateProfilePicRequest: (OAIUpdateProfilePicRequest*) updateProfilePicRequest
    completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;



@end
