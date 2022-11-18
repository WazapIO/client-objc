#import <Foundation/Foundation.h>
#import "OAIAPIResponse.h"
#import "OAIPaymentRequestPayload.h"
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



@interface OAIBusinessManagementApi: NSObject <OAIApi>

extern NSString* kOAIBusinessManagementApiErrorDomain;
extern NSInteger kOAIBusinessManagementApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(OAIApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Fetches the catlog.
/// Gets list of all products registered by you.
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
-(NSURLSessionTask*) fetchCatlogWithInstanceKey: (NSString*) instanceKey
    completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;


/// Send a payment request.
/// Sends an payment request to a user. Feature is still in beta.
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
-(NSURLSessionTask*) sendPaymentRequestWithInstanceKey: (NSString*) instanceKey
    data: (OAIPaymentRequestPayload*) data
    completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;



@end
