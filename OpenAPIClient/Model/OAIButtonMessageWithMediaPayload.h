#import <Foundation/Foundation.h>
#import "OAIObject.h"

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


#import "OAIFileUpload.h"
#import "OAIReplyButton.h"
@protocol OAIFileUpload;
@class OAIFileUpload;
@protocol OAIReplyButton;
@class OAIReplyButton;



@protocol OAIButtonMessageWithMediaPayload
@end

@interface OAIButtonMessageWithMediaPayload : OAIObject


@property(nonatomic) NSArray<OAIReplyButton>* buttons;

@property(nonatomic) NSString* footerText;

@property(nonatomic) OAIFileUpload* mediaData;

@property(nonatomic) NSString* text;

@property(nonatomic) NSString* to;

@end