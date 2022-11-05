#import <Foundation/Foundation.h>
#import "OAIAPIResponse.h"
#import "OAIWebhookPayload.h"
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



@interface OAIInstanceApi: NSObject <OAIApi>

extern NSString* kOAIInstanceApiErrorDomain;
extern NSInteger kOAIInstanceApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(OAIApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Creates a new instance key.
/// This endpoint is used to create a new WhatsApp Web instance.
///
/// @param instanceKey Insert instance key if you want to provide custom key (optional)
/// 
///  code:200 message:"Success",
///  code:400 message:"Bad Request",
///  code:401 message:"Unauthorized",
///  code:404 message:"Instance not found",
///  code:500 message:"Internal Server Error"
///
/// @return OAIAPIResponse*
-(NSURLSessionTask*) instancesCreateGetWithInstanceKey: (NSString*) instanceKey
    completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;


/// Get contacts.
/// Fetches the list of contacts in the instance.
///
/// @param instanceKey Instance key
/// 
///  code:200 message:"Success",
///  code:400 message:"Bad Request",
///  code:401 message:"Unauthorized",
///  code:404 message:"Instance not found",
///  code:500 message:"Internal Server Error"
///
/// @return OAIAPIResponse*
-(NSURLSessionTask*) instancesInstanceKeyContactsGetWithInstanceKey: (NSString*) instanceKey
    completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;


/// Delete Instance.
/// Deletes the instance with the provided key.
///
/// @param instanceKey Instance key
/// 
///  code:200 message:"Success",
///  code:400 message:"Bad Request",
///  code:401 message:"Unauthorized",
///  code:404 message:"Instance not found",
///  code:500 message:"Internal Server Error"
///
/// @return OAIAPIResponse*
-(NSURLSessionTask*) instancesInstanceKeyDeleteDeleteWithInstanceKey: (NSString*) instanceKey
    completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;


/// Get Instance.
/// Returns the instance data of single instance with connection status.
///
/// @param instanceKey Instance key
/// 
///  code:200 message:"Success",
///  code:400 message:"Bad Request",
///  code:401 message:"Unauthorized",
///  code:404 message:"Instance not found",
///  code:500 message:"Internal Server Error"
///
/// @return OAIAPIResponse*
-(NSURLSessionTask*) instancesInstanceKeyGetWithInstanceKey: (NSString*) instanceKey
    completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;


/// Logout Instance.
/// Logouts of the instance with the provided key.
///
/// @param instanceKey Instance key
/// 
///  code:200 message:"Success",
///  code:400 message:"Bad Request",
///  code:401 message:"Unauthorized",
///  code:404 message:"Instance not found",
///  code:500 message:"Internal Server Error"
///
/// @return OAIAPIResponse*
-(NSURLSessionTask*) instancesInstanceKeyLogoutDeleteWithInstanceKey: (NSString*) instanceKey
    completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;


/// Get QrCode.
/// Returns the qrcode in the base64 format.
///
/// @param instanceKey Instance key
/// 
///  code:200 message:"Success",
///  code:400 message:"Bad Request",
///  code:401 message:"Unauthorized",
///  code:404 message:"Instance not found",
///  code:500 message:"Internal Server Error"
///
/// @return OAIAPIResponse*
-(NSURLSessionTask*) instancesInstanceKeyQrcodeGetWithInstanceKey: (NSString*) instanceKey
    completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;


/// Change Webhook url.
/// Changes the webhook url of an instance.
///
/// @param instanceKey Instance key
/// @param data Message data
/// 
///  code:200 message:"Success",
///  code:400 message:"Bad Request",
///  code:401 message:"Unauthorized",
///  code:404 message:"Instance not found",
///  code:500 message:"Internal Server Error"
///
/// @return OAIAPIResponse*
-(NSURLSessionTask*) instancesInstanceKeyWebhookPutWithInstanceKey: (NSString*) instanceKey
    data: (OAIWebhookPayload*) data
    completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;


/// Get all instances.
/// Fetches the list of all Instances with login status.
///
/// 
///  code:200 message:"Success",
///  code:400 message:"Bad Request",
///  code:401 message:"Unauthorized",
///  code:404 message:"Instance not found",
///  code:500 message:"Internal Server Error"
///
/// @return OAIAPIResponse*
-(NSURLSessionTask*) instancesListGetWithCompletionHandler: 
    (void (^)(OAIAPIResponse* output, NSError* error)) handler;



@end
