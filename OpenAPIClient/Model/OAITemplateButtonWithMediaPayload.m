#import "OAITemplateButtonWithMediaPayload.h"

@implementation OAITemplateButtonWithMediaPayload

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"buttons": @"buttons", @"contentText": @"content_text", @"footer": @"footer", @"media": @"media", @"to": @"to" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"contentText", @"footer", ];
  return [optionalProperties containsObject:propertyName];
}

@end
