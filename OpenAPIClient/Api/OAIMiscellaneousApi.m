#import "OAIMiscellaneousApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIAPIResponse.h"
#import "OAIUserInfoPayload.h"


@interface OAIMiscellaneousApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIMiscellaneousApi

NSString* kOAIMiscellaneousApiErrorDomain = @"OAIMiscellaneousApiErrorDomain";
NSInteger kOAIMiscellaneousApiMissingParamErrorCode = 234513;

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
/// Get profile pic.
/// Returns the profile pic of the given user.
///  @param instanceKey Instance key 
///
///  @param jid JID 
///
///  @returns OAIAPIResponse*
///
-(NSURLSessionTask*) instancesInstanceKeyMiscProfilePicGetWithInstanceKey: (NSString*) instanceKey
    jid: (NSString*) jid
    completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler {
    // verify the required parameter 'instanceKey' is set
    if (instanceKey == nil) {
        NSParameterAssert(instanceKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"instanceKey"] };
            NSError* error = [NSError errorWithDomain:kOAIMiscellaneousApiErrorDomain code:kOAIMiscellaneousApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'jid' is set
    if (jid == nil) {
        NSParameterAssert(jid);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"jid"] };
            NSError* error = [NSError errorWithDomain:kOAIMiscellaneousApiErrorDomain code:kOAIMiscellaneousApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/instances/{instance_key}/misc/profile-pic"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (instanceKey != nil) {
        pathParams[@"instance_key"] = instanceKey;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (jid != nil) {
        queryParams[@"jid"] = jid;
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
                              responseType: @"OAIAPIResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAPIResponse*)data, error);
                                }
                            }];
}

///
/// Fetches the users info.
/// Gets the user info for the given user ids. This does not checks if user is registered or not
///  @param instanceKey Instance key 
///
///  @param data Data 
///
///  @returns OAIAPIResponse*
///
-(NSURLSessionTask*) instancesInstanceKeyMiscUserInfoPostWithInstanceKey: (NSString*) instanceKey
    data: (OAIUserInfoPayload*) data
    completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler {
    // verify the required parameter 'instanceKey' is set
    if (instanceKey == nil) {
        NSParameterAssert(instanceKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"instanceKey"] };
            NSError* error = [NSError errorWithDomain:kOAIMiscellaneousApiErrorDomain code:kOAIMiscellaneousApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'data' is set
    if (data == nil) {
        NSParameterAssert(data);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"data"] };
            NSError* error = [NSError errorWithDomain:kOAIMiscellaneousApiErrorDomain code:kOAIMiscellaneousApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/instances/{instance_key}/misc/user-info"];

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



@end
