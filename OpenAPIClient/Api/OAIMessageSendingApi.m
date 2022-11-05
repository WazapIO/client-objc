#import "OAIMessageSendingApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIAPIResponse.h"
#import "OAIButtonMessagePayload.h"
#import "OAIButtonMessageWithMediaPayload.h"
#import "OAIContactMessagePayload.h"
#import "OAIListMessagePayload.h"
#import "OAILocationMessagePayload.h"
#import "OAIPollMessagePayload.h"
#import "OAISendAudioRequest.h"
#import "OAISendDocumentRequest.h"
#import "OAISendImageRequest.h"
#import "OAISendMediaPayload.h"
#import "OAISendVideoRequest.h"
#import "OAITemplateButtonPayload.h"
#import "OAITemplateButtonWithMediaPayload.h"
#import "OAITextMessage.h"
#import "OAIUploadMediaRequest.h"


@interface OAIMessageSendingApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIMessageSendingApi

NSString* kOAIMessageSendingApiErrorDomain = @"OAIMessageSendingApiErrorDomain";
NSInteger kOAIMessageSendingApiMissingParamErrorCode = 234513;

@synthesize apiClient = _apiClient;

#pragma mark - Initialize methods

- (instancetype) init {
    return [self initWithApiClient:[OAIApiClient sharedClient]];
}


-(instancetype) initWithApiClient:(OAIApiClient *)apiClient {
    self = [super init];
    if (self) {
        _apiClient = apiClient;
        _mutableDefaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

-(NSString*) defaultHeaderForKey:(NSString*)key {
    return self.mutableDefaultHeaders[key];
}

-(void) setDefaultHeaderValue:(NSString*) value forKey:(NSString*)key {
    [self.mutableDefaultHeaders setValue:value forKey:key];
}

-(NSDictionary *)defaultHeaders {
    return self.mutableDefaultHeaders;
}

#pragma mark - Api Methods

///
/// Send raw audio.
/// Sends a audio message by uploading to the WhatsApp servers every time. This is not recommended for bulk sending.
///  @param instanceKey Instance key 
///
///  @param to The recipient's number 
///
///  @param sendAudioRequest  
///
///  @param caption Attached caption (optional)
///
///  @returns OAIAPIResponse*
///
-(NSURLSessionTask*) sendAudioWithInstanceKey: (NSString*) instanceKey
    to: (NSString*) to
    sendAudioRequest: (OAISendAudioRequest*) sendAudioRequest
    caption: (NSString*) caption
    completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler {
    // verify the required parameter 'instanceKey' is set
    if (instanceKey == nil) {
        NSParameterAssert(instanceKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"instanceKey"] };
            NSError* error = [NSError errorWithDomain:kOAIMessageSendingApiErrorDomain code:kOAIMessageSendingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'to' is set
    if (to == nil) {
        NSParameterAssert(to);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"to"] };
            NSError* error = [NSError errorWithDomain:kOAIMessageSendingApiErrorDomain code:kOAIMessageSendingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'sendAudioRequest' is set
    if (sendAudioRequest == nil) {
        NSParameterAssert(sendAudioRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"sendAudioRequest"] };
            NSError* error = [NSError errorWithDomain:kOAIMessageSendingApiErrorDomain code:kOAIMessageSendingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/instances/{instance_key}/send/audio"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (instanceKey != nil) {
        pathParams[@"instance_key"] = instanceKey;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (to != nil) {
        queryParams[@"to"] = to;
    }
    if (caption != nil) {
        queryParams[@"caption"] = caption;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"*/*"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"ApiKeyAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = sendAudioRequest;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIAPIResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAPIResponse*)data, error);
                                }
                            }];
}

///
/// Send a button message.
/// Sends an interactive button message to the given user. Make sure that all the button ids are unique
///  @param instanceKey Instance key 
///
///  @param data Message data 
///
///  @returns OAIAPIResponse*
///
-(NSURLSessionTask*) sendButtonMessageWithInstanceKey: (NSString*) instanceKey
    data: (OAIButtonMessagePayload*) data
    completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler {
    // verify the required parameter 'instanceKey' is set
    if (instanceKey == nil) {
        NSParameterAssert(instanceKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"instanceKey"] };
            NSError* error = [NSError errorWithDomain:kOAIMessageSendingApiErrorDomain code:kOAIMessageSendingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'data' is set
    if (data == nil) {
        NSParameterAssert(data);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"data"] };
            NSError* error = [NSError errorWithDomain:kOAIMessageSendingApiErrorDomain code:kOAIMessageSendingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/instances/{instance_key}/send/buttons"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (instanceKey != nil) {
        pathParams[@"instance_key"] = instanceKey;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"*/*"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"ApiKeyAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = data;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIAPIResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAPIResponse*)data, error);
                                }
                            }];
}

///
/// Send a button message with a media header.
/// Sends an interactive button message to the given user. This message also has media header with it. Make sure that all the button ids are unique
///  @param instanceKey Instance key 
///
///  @param data Message data 
///
///  @returns OAIAPIResponse*
///
-(NSURLSessionTask*) sendButtonWithMediaWithInstanceKey: (NSString*) instanceKey
    data: (OAIButtonMessageWithMediaPayload*) data
    completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler {
    // verify the required parameter 'instanceKey' is set
    if (instanceKey == nil) {
        NSParameterAssert(instanceKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"instanceKey"] };
            NSError* error = [NSError errorWithDomain:kOAIMessageSendingApiErrorDomain code:kOAIMessageSendingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'data' is set
    if (data == nil) {
        NSParameterAssert(data);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"data"] };
            NSError* error = [NSError errorWithDomain:kOAIMessageSendingApiErrorDomain code:kOAIMessageSendingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/instances/{instance_key}/send/button-media"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (instanceKey != nil) {
        pathParams[@"instance_key"] = instanceKey;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"*/*"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"ApiKeyAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = data;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIAPIResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAPIResponse*)data, error);
                                }
                            }];
}

///
/// Send a contact message.
/// Sends a contact (vcard) message to the given user.
///  @param instanceKey Instance key 
///
///  @param data Message data 
///
///  @returns OAIAPIResponse*
///
-(NSURLSessionTask*) sendContactWithInstanceKey: (NSString*) instanceKey
    data: (OAIContactMessagePayload*) data
    completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler {
    // verify the required parameter 'instanceKey' is set
    if (instanceKey == nil) {
        NSParameterAssert(instanceKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"instanceKey"] };
            NSError* error = [NSError errorWithDomain:kOAIMessageSendingApiErrorDomain code:kOAIMessageSendingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'data' is set
    if (data == nil) {
        NSParameterAssert(data);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"data"] };
            NSError* error = [NSError errorWithDomain:kOAIMessageSendingApiErrorDomain code:kOAIMessageSendingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/instances/{instance_key}/send/contact"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (instanceKey != nil) {
        pathParams[@"instance_key"] = instanceKey;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"*/*"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"ApiKeyAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = data;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIAPIResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAPIResponse*)data, error);
                                }
                            }];
}

///
/// Send raw document.
/// Sends a document message by uploading to the WhatsApp servers every time. This is not recommended for bulk sending.
///  @param instanceKey Instance key 
///
///  @param to The recipient's number 
///
///  @param sendDocumentRequest  
///
///  @param caption Attached caption (optional)
///
///  @returns OAIAPIResponse*
///
-(NSURLSessionTask*) sendDocumentWithInstanceKey: (NSString*) instanceKey
    to: (NSString*) to
    sendDocumentRequest: (OAISendDocumentRequest*) sendDocumentRequest
    caption: (NSString*) caption
    completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler {
    // verify the required parameter 'instanceKey' is set
    if (instanceKey == nil) {
        NSParameterAssert(instanceKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"instanceKey"] };
            NSError* error = [NSError errorWithDomain:kOAIMessageSendingApiErrorDomain code:kOAIMessageSendingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'to' is set
    if (to == nil) {
        NSParameterAssert(to);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"to"] };
            NSError* error = [NSError errorWithDomain:kOAIMessageSendingApiErrorDomain code:kOAIMessageSendingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'sendDocumentRequest' is set
    if (sendDocumentRequest == nil) {
        NSParameterAssert(sendDocumentRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"sendDocumentRequest"] };
            NSError* error = [NSError errorWithDomain:kOAIMessageSendingApiErrorDomain code:kOAIMessageSendingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/instances/{instance_key}/send/document"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (instanceKey != nil) {
        pathParams[@"instance_key"] = instanceKey;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (to != nil) {
        queryParams[@"to"] = to;
    }
    if (caption != nil) {
        queryParams[@"caption"] = caption;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"*/*"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"ApiKeyAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = sendDocumentRequest;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIAPIResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAPIResponse*)data, error);
                                }
                            }];
}

///
/// Send raw image.
/// Sends a image message by uploading to the WhatsApp servers every time. This is not recommended for bulk sending.
///  @param instanceKey Instance key 
///
///  @param to The recipient's number 
///
///  @param sendImageRequest  
///
///  @param caption Attached caption (optional)
///
///  @returns OAIAPIResponse*
///
-(NSURLSessionTask*) sendImageWithInstanceKey: (NSString*) instanceKey
    to: (NSString*) to
    sendImageRequest: (OAISendImageRequest*) sendImageRequest
    caption: (NSString*) caption
    completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler {
    // verify the required parameter 'instanceKey' is set
    if (instanceKey == nil) {
        NSParameterAssert(instanceKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"instanceKey"] };
            NSError* error = [NSError errorWithDomain:kOAIMessageSendingApiErrorDomain code:kOAIMessageSendingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'to' is set
    if (to == nil) {
        NSParameterAssert(to);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"to"] };
            NSError* error = [NSError errorWithDomain:kOAIMessageSendingApiErrorDomain code:kOAIMessageSendingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'sendImageRequest' is set
    if (sendImageRequest == nil) {
        NSParameterAssert(sendImageRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"sendImageRequest"] };
            NSError* error = [NSError errorWithDomain:kOAIMessageSendingApiErrorDomain code:kOAIMessageSendingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/instances/{instance_key}/send/image"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (instanceKey != nil) {
        pathParams[@"instance_key"] = instanceKey;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (to != nil) {
        queryParams[@"to"] = to;
    }
    if (caption != nil) {
        queryParams[@"caption"] = caption;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"*/*"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"ApiKeyAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = sendImageRequest;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIAPIResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAPIResponse*)data, error);
                                }
                            }];
}

///
/// Send a List message.
/// Sends an interactive List message to the given user.
///  @param instanceKey Instance key 
///
///  @param data Message data 
///
///  @returns OAIAPIResponse*
///
-(NSURLSessionTask*) sendListMessageWithInstanceKey: (NSString*) instanceKey
    data: (OAIListMessagePayload*) data
    completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler {
    // verify the required parameter 'instanceKey' is set
    if (instanceKey == nil) {
        NSParameterAssert(instanceKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"instanceKey"] };
            NSError* error = [NSError errorWithDomain:kOAIMessageSendingApiErrorDomain code:kOAIMessageSendingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'data' is set
    if (data == nil) {
        NSParameterAssert(data);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"data"] };
            NSError* error = [NSError errorWithDomain:kOAIMessageSendingApiErrorDomain code:kOAIMessageSendingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/instances/{instance_key}/send/list"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (instanceKey != nil) {
        pathParams[@"instance_key"] = instanceKey;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"*/*"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"ApiKeyAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = data;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIAPIResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAPIResponse*)data, error);
                                }
                            }];
}

///
/// Send a location message.
/// Sends a location message to the given user. This is static location and does not update Note: The Address and Url fields are optional
///  @param instanceKey Instance key 
///
///  @param data Message data 
///
///  @returns OAIAPIResponse*
///
-(NSURLSessionTask*) sendLocationWithInstanceKey: (NSString*) instanceKey
    data: (OAILocationMessagePayload*) data
    completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler {
    // verify the required parameter 'instanceKey' is set
    if (instanceKey == nil) {
        NSParameterAssert(instanceKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"instanceKey"] };
            NSError* error = [NSError errorWithDomain:kOAIMessageSendingApiErrorDomain code:kOAIMessageSendingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'data' is set
    if (data == nil) {
        NSParameterAssert(data);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"data"] };
            NSError* error = [NSError errorWithDomain:kOAIMessageSendingApiErrorDomain code:kOAIMessageSendingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/instances/{instance_key}/send/location"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (instanceKey != nil) {
        pathParams[@"instance_key"] = instanceKey;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"*/*"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"ApiKeyAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = data;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIAPIResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAPIResponse*)data, error);
                                }
                            }];
}

///
/// Send a media message.
/// Sends a media message to the given user.
///  @param instanceKey Instance key 
///
///  @param data Message data 
///
///  @returns OAIAPIResponse*
///
-(NSURLSessionTask*) sendMediaMessageWithInstanceKey: (NSString*) instanceKey
    data: (OAISendMediaPayload*) data
    completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler {
    // verify the required parameter 'instanceKey' is set
    if (instanceKey == nil) {
        NSParameterAssert(instanceKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"instanceKey"] };
            NSError* error = [NSError errorWithDomain:kOAIMessageSendingApiErrorDomain code:kOAIMessageSendingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'data' is set
    if (data == nil) {
        NSParameterAssert(data);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"data"] };
            NSError* error = [NSError errorWithDomain:kOAIMessageSendingApiErrorDomain code:kOAIMessageSendingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/instances/{instance_key}/send/media"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (instanceKey != nil) {
        pathParams[@"instance_key"] = instanceKey;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"*/*"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"ApiKeyAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = data;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIAPIResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAPIResponse*)data, error);
                                }
                            }];
}

///
/// Send a Poll message.
/// Sends an interactive poll message to the given user. The poll message is a new feature that is currently in beta.
///  @param instanceKey Instance key 
///
///  @param data Message data 
///
///  @returns OAIAPIResponse*
///
-(NSURLSessionTask*) sendPollMessageWithInstanceKey: (NSString*) instanceKey
    data: (OAIPollMessagePayload*) data
    completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler {
    // verify the required parameter 'instanceKey' is set
    if (instanceKey == nil) {
        NSParameterAssert(instanceKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"instanceKey"] };
            NSError* error = [NSError errorWithDomain:kOAIMessageSendingApiErrorDomain code:kOAIMessageSendingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'data' is set
    if (data == nil) {
        NSParameterAssert(data);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"data"] };
            NSError* error = [NSError errorWithDomain:kOAIMessageSendingApiErrorDomain code:kOAIMessageSendingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/instances/{instance_key}/send/poll"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (instanceKey != nil) {
        pathParams[@"instance_key"] = instanceKey;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"*/*"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"ApiKeyAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = data;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIAPIResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAPIResponse*)data, error);
                                }
                            }];
}

///
/// Send a template message.
/// Sends an interactive template message to the given user. Note: The valid button types are \"replyButton\", \"urlButton\", \"callButton\"
///  @param instanceKey Instance key 
///
///  @param data Message data 
///
///  @returns OAIAPIResponse*
///
-(NSURLSessionTask*) sendTemplateWithInstanceKey: (NSString*) instanceKey
    data: (OAITemplateButtonPayload*) data
    completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler {
    // verify the required parameter 'instanceKey' is set
    if (instanceKey == nil) {
        NSParameterAssert(instanceKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"instanceKey"] };
            NSError* error = [NSError errorWithDomain:kOAIMessageSendingApiErrorDomain code:kOAIMessageSendingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'data' is set
    if (data == nil) {
        NSParameterAssert(data);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"data"] };
            NSError* error = [NSError errorWithDomain:kOAIMessageSendingApiErrorDomain code:kOAIMessageSendingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/instances/{instance_key}/send/template"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (instanceKey != nil) {
        pathParams[@"instance_key"] = instanceKey;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"*/*"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"ApiKeyAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = data;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIAPIResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAPIResponse*)data, error);
                                }
                            }];
}

///
/// Send a template message with media.
/// Sends an interactive template message with a media header to the given user. Note: The valid button types are \"replyButton\", \"urlButton\", \"callButton\"
///  @param instanceKey Instance key 
///
///  @param data Message data 
///
///  @returns OAIAPIResponse*
///
-(NSURLSessionTask*) sendTemplateWithMediaWithInstanceKey: (NSString*) instanceKey
    data: (OAITemplateButtonWithMediaPayload*) data
    completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler {
    // verify the required parameter 'instanceKey' is set
    if (instanceKey == nil) {
        NSParameterAssert(instanceKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"instanceKey"] };
            NSError* error = [NSError errorWithDomain:kOAIMessageSendingApiErrorDomain code:kOAIMessageSendingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'data' is set
    if (data == nil) {
        NSParameterAssert(data);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"data"] };
            NSError* error = [NSError errorWithDomain:kOAIMessageSendingApiErrorDomain code:kOAIMessageSendingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/instances/{instance_key}/send/template-media"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (instanceKey != nil) {
        pathParams[@"instance_key"] = instanceKey;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"*/*"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"ApiKeyAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = data;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIAPIResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAPIResponse*)data, error);
                                }
                            }];
}

///
/// Send a text message.
/// Sends a text message to the given user.
///  @param instanceKey Instance key 
///
///  @param data Message data 
///
///  @returns OAIAPIResponse*
///
-(NSURLSessionTask*) sendTextMessageWithInstanceKey: (NSString*) instanceKey
    data: (OAITextMessage*) data
    completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler {
    // verify the required parameter 'instanceKey' is set
    if (instanceKey == nil) {
        NSParameterAssert(instanceKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"instanceKey"] };
            NSError* error = [NSError errorWithDomain:kOAIMessageSendingApiErrorDomain code:kOAIMessageSendingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'data' is set
    if (data == nil) {
        NSParameterAssert(data);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"data"] };
            NSError* error = [NSError errorWithDomain:kOAIMessageSendingApiErrorDomain code:kOAIMessageSendingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/instances/{instance_key}/send/text"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (instanceKey != nil) {
        pathParams[@"instance_key"] = instanceKey;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"*/*"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"ApiKeyAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = data;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIAPIResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAPIResponse*)data, error);
                                }
                            }];
}

///
/// Send raw video.
/// Sends a video message by uploading to the WhatsApp servers every time. This is not recommended for bulk sending.
///  @param instanceKey Instance key 
///
///  @param to The recipient's number 
///
///  @param sendVideoRequest  
///
///  @param caption Attached caption (optional)
///
///  @returns OAIAPIResponse*
///
-(NSURLSessionTask*) sendVideoWithInstanceKey: (NSString*) instanceKey
    to: (NSString*) to
    sendVideoRequest: (OAISendVideoRequest*) sendVideoRequest
    caption: (NSString*) caption
    completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler {
    // verify the required parameter 'instanceKey' is set
    if (instanceKey == nil) {
        NSParameterAssert(instanceKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"instanceKey"] };
            NSError* error = [NSError errorWithDomain:kOAIMessageSendingApiErrorDomain code:kOAIMessageSendingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'to' is set
    if (to == nil) {
        NSParameterAssert(to);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"to"] };
            NSError* error = [NSError errorWithDomain:kOAIMessageSendingApiErrorDomain code:kOAIMessageSendingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'sendVideoRequest' is set
    if (sendVideoRequest == nil) {
        NSParameterAssert(sendVideoRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"sendVideoRequest"] };
            NSError* error = [NSError errorWithDomain:kOAIMessageSendingApiErrorDomain code:kOAIMessageSendingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/instances/{instance_key}/send/video"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (instanceKey != nil) {
        pathParams[@"instance_key"] = instanceKey;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (to != nil) {
        queryParams[@"to"] = to;
    }
    if (caption != nil) {
        queryParams[@"caption"] = caption;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"*/*"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"ApiKeyAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = sendVideoRequest;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIAPIResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAPIResponse*)data, error);
                                }
                            }];
}

///
/// Upload media.
/// Uploads media to WhatsApp servers and returns the media keys. Store the returned media keys, as you will need them to send media messages
///  @param instanceKey Instance key 
///
///  @param type Media type 
///
///  @param uploadMediaRequest  
///
///  @returns OAIAPIResponse*
///
-(NSURLSessionTask*) uploadMediaWithInstanceKey: (NSString*) instanceKey
    type: (NSString*) type
    uploadMediaRequest: (OAIUploadMediaRequest*) uploadMediaRequest
    completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler {
    // verify the required parameter 'instanceKey' is set
    if (instanceKey == nil) {
        NSParameterAssert(instanceKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"instanceKey"] };
            NSError* error = [NSError errorWithDomain:kOAIMessageSendingApiErrorDomain code:kOAIMessageSendingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'type' is set
    if (type == nil) {
        NSParameterAssert(type);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"type"] };
            NSError* error = [NSError errorWithDomain:kOAIMessageSendingApiErrorDomain code:kOAIMessageSendingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'uploadMediaRequest' is set
    if (uploadMediaRequest == nil) {
        NSParameterAssert(uploadMediaRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"uploadMediaRequest"] };
            NSError* error = [NSError errorWithDomain:kOAIMessageSendingApiErrorDomain code:kOAIMessageSendingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/instances/{instance_key}/send/upload"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (instanceKey != nil) {
        pathParams[@"instance_key"] = instanceKey;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (type != nil) {
        queryParams[@"type"] = type;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"*/*"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"ApiKeyAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = uploadMediaRequest;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIAPIResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAPIResponse*)data, error);
                                }
                            }];
}



@end
