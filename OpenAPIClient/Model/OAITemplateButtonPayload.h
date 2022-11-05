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


#import "OAITemplateButton.h"
@protocol OAITemplateButton;
@class OAITemplateButton;



@protocol OAITemplateButtonPayload
@end

@interface OAITemplateButtonPayload : OAIObject


@property(nonatomic) NSArray<OAITemplateButton>* buttons;

@property(nonatomic) NSString* contentText;

@property(nonatomic) NSString* footer;

@property(nonatomic) NSString* header;

@property(nonatomic) NSString* to;

@end
