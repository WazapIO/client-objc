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


#import "OAIStructsReplyButton.h"
@protocol OAIStructsReplyButton;
@class OAIStructsReplyButton;



@protocol OAIStructsButtonMessagePayload
@end

@interface OAIStructsButtonMessagePayload : OAIObject


@property(nonatomic) NSArray<OAIStructsReplyButton>* buttons;

@property(nonatomic) NSString* footerText;

@property(nonatomic) NSString* headerText;

@property(nonatomic) NSString* text;

@property(nonatomic) NSString* to;

@end