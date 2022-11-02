#import "OAIStructsFileUpload.h"

@implementation OAIStructsFileUpload

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"directPath": @"direct_path", @"fileEncSha256": @"file_enc_sha256", @"fileLength": @"file_length", @"fileSha256": @"file_sha256", @"mediaKey": @"media_key", @"mimeType": @"mime_type", @"url": @"url" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[];
  return [optionalProperties containsObject:propertyName];
}

@end
