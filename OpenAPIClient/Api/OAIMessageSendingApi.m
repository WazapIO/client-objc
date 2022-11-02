#import "OAIMessageSendingApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
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
/// Fetches the catlog.
/// Gets list of all products registered by you.
///  @param instanceKey Instance key 
///
///  @returns OAIMainAPIResponse*
///
-(NSURLSessionTask*) instancesInstanceKeyBusinessCatalogGetWithInstanceKey: (NSString*) instanceKey
    completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler {
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

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/instances/{instance_key}/business/catalog"];

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
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"ApiKeyAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIMainAPIResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIMainAPIResponse*)data, error);
                                }
                            }];
}

///
/// Send raw audio.
/// Sends a audio message by uploading to the WhatsApp servers every time. This is not recommended for bulk sending.
///  @param instanceKey Instance key 
///
///  @param to The recipient's number 
///
///  @param instancesInstanceKeySendAudioPostRequest  
///
///  @param caption Attached caption (optional)
///
///  @returns OAIMainAPIResponse*
///
-(NSURLSessionTask*) instancesInstanceKeySendAudioPostWithInstanceKey: (NSString*) instanceKey
    to: (NSString*) to
    instancesInstanceKeySendAudioPostRequest: (OAIInstancesInstanceKeySendAudioPostRequest*) instancesInstanceKeySendAudioPostRequest
    caption: (NSString*) caption
    completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler {
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

    // verify the required parameter 'instancesInstanceKeySendAudioPostRequest' is set
    if (instancesInstanceKeySendAudioPostRequest == nil) {
        NSParameterAssert(instancesInstanceKeySendAudioPostRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"instancesInstanceKeySendAudioPostRequest"] };
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
    bodyParam = instancesInstanceKeySendAudioPostRequest;

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
                              responseType: @"OAIMainAPIResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIMainAPIResponse*)data, error);
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
///  @returns OAIMainAPIResponse*
///
-(NSURLSessionTask*) instancesInstanceKeySendButtonMediaPostWithInstanceKey: (NSString*) instanceKey
    data: (OAIStructsButtonMessageWithMediaPayload*) data
    completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler {
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
                              responseType: @"OAIMainAPIResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIMainAPIResponse*)data, error);
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
///  @returns OAIMainAPIResponse*
///
-(NSURLSessionTask*) instancesInstanceKeySendButtonsPostWithInstanceKey: (NSString*) instanceKey
    data: (OAIStructsButtonMessagePayload*) data
    completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler {
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
                              responseType: @"OAIMainAPIResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIMainAPIResponse*)data, error);
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
///  @returns OAIMainAPIResponse*
///
-(NSURLSessionTask*) instancesInstanceKeySendContactPostWithInstanceKey: (NSString*) instanceKey
    data: (OAIStructsContactMessagePayload*) data
    completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler {
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
                              responseType: @"OAIMainAPIResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIMainAPIResponse*)data, error);
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
///  @param instancesInstanceKeySendDocumentPostRequest  
///
///  @param caption Attached caption (optional)
///
///  @returns OAIMainAPIResponse*
///
-(NSURLSessionTask*) instancesInstanceKeySendDocumentPostWithInstanceKey: (NSString*) instanceKey
    to: (NSString*) to
    instancesInstanceKeySendDocumentPostRequest: (OAIInstancesInstanceKeySendDocumentPostRequest*) instancesInstanceKeySendDocumentPostRequest
    caption: (NSString*) caption
    completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler {
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

    // verify the required parameter 'instancesInstanceKeySendDocumentPostRequest' is set
    if (instancesInstanceKeySendDocumentPostRequest == nil) {
        NSParameterAssert(instancesInstanceKeySendDocumentPostRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"instancesInstanceKeySendDocumentPostRequest"] };
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
    bodyParam = instancesInstanceKeySendDocumentPostRequest;

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
                              responseType: @"OAIMainAPIResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIMainAPIResponse*)data, error);
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
///  @param instancesInstanceKeySendImagePostRequest  
///
///  @param caption Attached caption (optional)
///
///  @returns OAIMainAPIResponse*
///
-(NSURLSessionTask*) instancesInstanceKeySendImagePostWithInstanceKey: (NSString*) instanceKey
    to: (NSString*) to
    instancesInstanceKeySendImagePostRequest: (OAIInstancesInstanceKeySendImagePostRequest*) instancesInstanceKeySendImagePostRequest
    caption: (NSString*) caption
    completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler {
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

    // verify the required parameter 'instancesInstanceKeySendImagePostRequest' is set
    if (instancesInstanceKeySendImagePostRequest == nil) {
        NSParameterAssert(instancesInstanceKeySendImagePostRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"instancesInstanceKeySendImagePostRequest"] };
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
    bodyParam = instancesInstanceKeySendImagePostRequest;

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
                              responseType: @"OAIMainAPIResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIMainAPIResponse*)data, error);
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
///  @returns OAIMainAPIResponse*
///
-(NSURLSessionTask*) instancesInstanceKeySendListPostWithInstanceKey: (NSString*) instanceKey
    data: (OAIStructsListMessagePayload*) data
    completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler {
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
                              responseType: @"OAIMainAPIResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIMainAPIResponse*)data, error);
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
///  @returns OAIMainAPIResponse*
///
-(NSURLSessionTask*) instancesInstanceKeySendLocationPostWithInstanceKey: (NSString*) instanceKey
    data: (OAIStructsLocationMessagePayload*) data
    completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler {
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
                              responseType: @"OAIMainAPIResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIMainAPIResponse*)data, error);
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
///  @returns OAIMainAPIResponse*
///
-(NSURLSessionTask*) instancesInstanceKeySendMediaPostWithInstanceKey: (NSString*) instanceKey
    data: (OAIStructsSendMediaPayload*) data
    completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler {
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
                              responseType: @"OAIMainAPIResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIMainAPIResponse*)data, error);
                                }
                            }];
}

///
/// Send a Poll message with media.
/// Sends an interactive poll message with a media header to the given user. The poll message is a new feature that is currently in beta.
///  @param instanceKey Instance key 
///
///  @param data Message data 
///
///  @returns OAIMainAPIResponse*
///
-(NSURLSessionTask*) instancesInstanceKeySendPollPostWithInstanceKey: (NSString*) instanceKey
    data: (OAIStructsPollMessagePayload*) data
    completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler {
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
                              responseType: @"OAIMainAPIResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIMainAPIResponse*)data, error);
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
///  @returns OAIMainAPIResponse*
///
-(NSURLSessionTask*) instancesInstanceKeySendTemplateMediaPostWithInstanceKey: (NSString*) instanceKey
    data: (OAIStructsTemplateButtonWithMediaPayload*) data
    completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler {
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
                              responseType: @"OAIMainAPIResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIMainAPIResponse*)data, error);
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
///  @returns OAIMainAPIResponse*
///
-(NSURLSessionTask*) instancesInstanceKeySendTemplatePostWithInstanceKey: (NSString*) instanceKey
    data: (OAIStructsTemplateButtonPayload*) data
    completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler {
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
                              responseType: @"OAIMainAPIResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIMainAPIResponse*)data, error);
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
///  @returns OAIMainAPIResponse*
///
-(NSURLSessionTask*) instancesInstanceKeySendTextPostWithInstanceKey: (NSString*) instanceKey
    data: (OAIStructsTextMessage*) data
    completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler {
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
                              responseType: @"OAIMainAPIResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIMainAPIResponse*)data, error);
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
///  @param instancesInstanceKeySendUploadPostRequest  
///
///  @returns OAIMainAPIResponse*
///
-(NSURLSessionTask*) instancesInstanceKeySendUploadPostWithInstanceKey: (NSString*) instanceKey
    type: (NSString*) type
    instancesInstanceKeySendUploadPostRequest: (OAIInstancesInstanceKeySendUploadPostRequest*) instancesInstanceKeySendUploadPostRequest
    completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler {
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

    // verify the required parameter 'instancesInstanceKeySendUploadPostRequest' is set
    if (instancesInstanceKeySendUploadPostRequest == nil) {
        NSParameterAssert(instancesInstanceKeySendUploadPostRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"instancesInstanceKeySendUploadPostRequest"] };
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
    bodyParam = instancesInstanceKeySendUploadPostRequest;

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
                              responseType: @"OAIMainAPIResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIMainAPIResponse*)data, error);
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
///  @param instancesInstanceKeySendVideoPostRequest  
///
///  @param caption Attached caption (optional)
///
///  @returns OAIMainAPIResponse*
///
-(NSURLSessionTask*) instancesInstanceKeySendVideoPostWithInstanceKey: (NSString*) instanceKey
    to: (NSString*) to
    instancesInstanceKeySendVideoPostRequest: (OAIInstancesInstanceKeySendVideoPostRequest*) instancesInstanceKeySendVideoPostRequest
    caption: (NSString*) caption
    completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler {
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

    // verify the required parameter 'instancesInstanceKeySendVideoPostRequest' is set
    if (instancesInstanceKeySendVideoPostRequest == nil) {
        NSParameterAssert(instancesInstanceKeySendVideoPostRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"instancesInstanceKeySendVideoPostRequest"] };
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
    bodyParam = instancesInstanceKeySendVideoPostRequest;

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
                              responseType: @"OAIMainAPIResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIMainAPIResponse*)data, error);
                                }
                            }];
}



@end
