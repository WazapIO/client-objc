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





@protocol OAIAPIResponse
@end

@interface OAIAPIResponse : OAIObject


@property(nonatomic) NSObject* data;

@property(nonatomic) NSNumber* error;

@property(nonatomic) NSString* message;

@property(nonatomic) NSNumber* status;

@end
