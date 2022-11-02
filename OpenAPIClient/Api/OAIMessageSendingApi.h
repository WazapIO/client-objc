#import <Foundation/Foundation.h>
#import "OAIInstancesInstanceKeySendAudioPostRequest.h"
#import "OAIInstancesInstanceKeySendDocumentPostRequest.h"
#import "OAIInstancesInstanceKeySendImagePostRequest.h"
#import "OAIInstancesInstanceKeySendUploadPostRequest.h"
#import "OAIInstancesInstanceKeySendVideoPostRequest.h"
#import "OAIMainAPIResponse.h"
#import "OAIStructsButtonMessagePayload.h"
#import "OAIStructsButtonMessageWithMediaPayload.h"
#import "OAIStructsContactMessagePayload.h"
#import "OAIStructsListMessagePayload.h"
#import "OAIStructsLocationMessagePayload.h"
#import "OAIStructsPollMessagePayload.h"
#import "OAIStructsSendMediaPayload.h"
#import "OAIStructsTemplateButtonPayload.h"
#import "OAIStructsTemplateButtonWithMediaPayload.h"
#import "OAIStructsTextMessage.h"
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



@interface OAIMessageSendingApi: NSObject <OAIApi>

extern NSString* kOAIMessageSendingApiErrorDomain;
extern NSInteger kOAIMessageSendingApiMissingParamErrorCode;

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
/// @return OAIMainAPIResponse*
-(NSURLSessionTask*) instancesInstanceKeyBusinessCatalogGetWithInstanceKey: (NSString*) instanceKey
    completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler;


/// Send raw audio.
/// Sends a audio message by uploading to the WhatsApp servers every time. This is not recommended for bulk sending.
///
/// @param instanceKey Instance key
/// @param to The recipient&#39;s number
/// @param instancesInstanceKeySendAudioPostRequest 
/// @param caption Attached caption (optional)
/// 
///  code:200 message:"Success",
///  code:400 message:"Bad Request",
///  code:401 message:"Unauthorized",
///  code:404 message:"Instance not found",
///  code:500 message:"Internal Server Error"
///
/// @return OAIMainAPIResponse*
-(NSURLSessionTask*) instancesInstanceKeySendAudioPostWithInstanceKey: (NSString*) instanceKey
    to: (NSString*) to
    instancesInstanceKeySendAudioPostRequest: (OAIInstancesInstanceKeySendAudioPostRequest*) instancesInstanceKeySendAudioPostRequest
    caption: (NSString*) caption
    completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler;


/// Send a button message with a media header.
/// Sends an interactive button message to the given user. This message also has media header with it. Make sure that all the button ids are unique
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
/// @return OAIMainAPIResponse*
-(NSURLSessionTask*) instancesInstanceKeySendButtonMediaPostWithInstanceKey: (NSString*) instanceKey
    data: (OAIStructsButtonMessageWithMediaPayload*) data
    completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler;


/// Send a button message.
/// Sends an interactive button message to the given user. Make sure that all the button ids are unique
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
/// @return OAIMainAPIResponse*
-(NSURLSessionTask*) instancesInstanceKeySendButtonsPostWithInstanceKey: (NSString*) instanceKey
    data: (OAIStructsButtonMessagePayload*) data
    completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler;


/// Send a contact message.
/// Sends a contact (vcard) message to the given user.
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
/// @return OAIMainAPIResponse*
-(NSURLSessionTask*) instancesInstanceKeySendContactPostWithInstanceKey: (NSString*) instanceKey
    data: (OAIStructsContactMessagePayload*) data
    completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler;


/// Send raw document.
/// Sends a document message by uploading to the WhatsApp servers every time. This is not recommended for bulk sending.
///
/// @param instanceKey Instance key
/// @param to The recipient&#39;s number
/// @param instancesInstanceKeySendDocumentPostRequest 
/// @param caption Attached caption (optional)
/// 
///  code:200 message:"Success",
///  code:400 message:"Bad Request",
///  code:401 message:"Unauthorized",
///  code:404 message:"Instance not found",
///  code:500 message:"Internal Server Error"
///
/// @return OAIMainAPIResponse*
-(NSURLSessionTask*) instancesInstanceKeySendDocumentPostWithInstanceKey: (NSString*) instanceKey
    to: (NSString*) to
    instancesInstanceKeySendDocumentPostRequest: (OAIInstancesInstanceKeySendDocumentPostRequest*) instancesInstanceKeySendDocumentPostRequest
    caption: (NSString*) caption
    completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler;


/// Send raw image.
/// Sends a image message by uploading to the WhatsApp servers every time. This is not recommended for bulk sending.
///
/// @param instanceKey Instance key
/// @param to The recipient&#39;s number
/// @param instancesInstanceKeySendImagePostRequest 
/// @param caption Attached caption (optional)
/// 
///  code:200 message:"Success",
///  code:400 message:"Bad Request",
///  code:401 message:"Unauthorized",
///  code:404 message:"Instance not found",
///  code:500 message:"Internal Server Error"
///
/// @return OAIMainAPIResponse*
-(NSURLSessionTask*) instancesInstanceKeySendImagePostWithInstanceKey: (NSString*) instanceKey
    to: (NSString*) to
    instancesInstanceKeySendImagePostRequest: (OAIInstancesInstanceKeySendImagePostRequest*) instancesInstanceKeySendImagePostRequest
    caption: (NSString*) caption
    completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler;


/// Send a List message.
/// Sends an interactive List message to the given user.
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
/// @return OAIMainAPIResponse*
-(NSURLSessionTask*) instancesInstanceKeySendListPostWithInstanceKey: (NSString*) instanceKey
    data: (OAIStructsListMessagePayload*) data
    completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler;


/// Send a location message.
/// Sends a location message to the given user. This is static location and does not update Note: The Address and Url fields are optional
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
/// @return OAIMainAPIResponse*
-(NSURLSessionTask*) instancesInstanceKeySendLocationPostWithInstanceKey: (NSString*) instanceKey
    data: (OAIStructsLocationMessagePayload*) data
    completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler;


/// Send a media message.
/// Sends a media message to the given user.
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
/// @return OAIMainAPIResponse*
-(NSURLSessionTask*) instancesInstanceKeySendMediaPostWithInstanceKey: (NSString*) instanceKey
    data: (OAIStructsSendMediaPayload*) data
    completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler;


/// Send a Poll message with media.
/// Sends an interactive poll message with a media header to the given user. The poll message is a new feature that is currently in beta.
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
/// @return OAIMainAPIResponse*
-(NSURLSessionTask*) instancesInstanceKeySendPollPostWithInstanceKey: (NSString*) instanceKey
    data: (OAIStructsPollMessagePayload*) data
    completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler;


/// Send a template message with media.
/// Sends an interactive template message with a media header to the given user. Note: The valid button types are \"replyButton\", \"urlButton\", \"callButton\"
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
/// @return OAIMainAPIResponse*
-(NSURLSessionTask*) instancesInstanceKeySendTemplateMediaPostWithInstanceKey: (NSString*) instanceKey
    data: (OAIStructsTemplateButtonWithMediaPayload*) data
    completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler;


/// Send a template message.
/// Sends an interactive template message to the given user. Note: The valid button types are \"replyButton\", \"urlButton\", \"callButton\"
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
/// @return OAIMainAPIResponse*
-(NSURLSessionTask*) instancesInstanceKeySendTemplatePostWithInstanceKey: (NSString*) instanceKey
    data: (OAIStructsTemplateButtonPayload*) data
    completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler;


/// Send a text message.
/// Sends a text message to the given user.
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
/// @return OAIMainAPIResponse*
-(NSURLSessionTask*) instancesInstanceKeySendTextPostWithInstanceKey: (NSString*) instanceKey
    data: (OAIStructsTextMessage*) data
    completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler;


/// Upload media.
/// Uploads media to WhatsApp servers and returns the media keys. Store the returned media keys, as you will need them to send media messages
///
/// @param instanceKey Instance key
/// @param type Media type
/// @param instancesInstanceKeySendUploadPostRequest 
/// 
///  code:200 message:"Success",
///  code:400 message:"Bad Request",
///  code:401 message:"Unauthorized",
///  code:404 message:"Instance not found",
///  code:500 message:"Internal Server Error"
///
/// @return OAIMainAPIResponse*
-(NSURLSessionTask*) instancesInstanceKeySendUploadPostWithInstanceKey: (NSString*) instanceKey
    type: (NSString*) type
    instancesInstanceKeySendUploadPostRequest: (OAIInstancesInstanceKeySendUploadPostRequest*) instancesInstanceKeySendUploadPostRequest
    completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler;


/// Send raw video.
/// Sends a video message by uploading to the WhatsApp servers every time. This is not recommended for bulk sending.
///
/// @param instanceKey Instance key
/// @param to The recipient&#39;s number
/// @param instancesInstanceKeySendVideoPostRequest 
/// @param caption Attached caption (optional)
/// 
///  code:200 message:"Success",
///  code:400 message:"Bad Request",
///  code:401 message:"Unauthorized",
///  code:404 message:"Instance not found",
///  code:500 message:"Internal Server Error"
///
/// @return OAIMainAPIResponse*
-(NSURLSessionTask*) instancesInstanceKeySendVideoPostWithInstanceKey: (NSString*) instanceKey
    to: (NSString*) to
    instancesInstanceKeySendVideoPostRequest: (OAIInstancesInstanceKeySendVideoPostRequest*) instancesInstanceKeySendVideoPostRequest
    caption: (NSString*) caption
    completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler;



@end
