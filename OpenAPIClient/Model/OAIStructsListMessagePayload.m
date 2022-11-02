#import "OAIStructsListMessagePayload.h"

@implementation OAIStructsListMessagePayload

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"buttonText": @"button_text", @"_description": @"description", @"multiSelect": @"multi_select", @"sections": @"sections", @"text": @"text", @"title": @"title", @"to": @"to" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"buttonText", @"_description", @"multiSelect", @"text", @"title", ];
  return [optionalProperties containsObject:propertyName];
}

@end
