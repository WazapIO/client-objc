#import "OAIGroupManagementApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIAPIResponse.h"
#import "OAIGroupCreatePayload.h"
#import "OAIGroupUpdateDescriptionPayload.h"
#import "OAIGroupUpdateNamePayload.h"
#import "OAIGroupUpdateParticipantsPayload.h"
#import "OAISetGroupPictureRequest.h"


@interface OAIGroupManagementApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIGroupManagementApi

NSString* kOAIGroupManagementApiErrorDomain = @"OAIGroupManagementApiErrorDomain";
NSInteger kOAIGroupManagementApiMissingParamErrorCode = 234513;

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
/// Add participant.
/// Handles adding participants to a group. You must be admin in the group or the query will fail.
///  @param instanceKey Instance key 
///
///  @param groupId Group id of the group 
///
///  @param data Group update payload 
///
///  @returns OAIAPIResponse*
///
-(NSURLSessionTask*) addParticipantWithInstanceKey: (NSString*) instanceKey
    groupId: (NSString*) groupId
    data: (OAIGroupUpdateParticipantsPayload*) data
    completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler {
    // verify the required parameter 'instanceKey' is set
    if (instanceKey == nil) {
        NSParameterAssert(instanceKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"instanceKey"] };
            NSError* error = [NSError errorWithDomain:kOAIGroupManagementApiErrorDomain code:kOAIGroupManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'groupId' is set
    if (groupId == nil) {
        NSParameterAssert(groupId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"groupId"] };
            NSError* error = [NSError errorWithDomain:kOAIGroupManagementApiErrorDomain code:kOAIGroupManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'data' is set
    if (data == nil) {
        NSParameterAssert(data);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"data"] };
            NSError* error = [NSError errorWithDomain:kOAIGroupManagementApiErrorDomain code:kOAIGroupManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/instances/{instance_key}/groups/{group_id}/participants/add"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (instanceKey != nil) {
        pathParams[@"instance_key"] = instanceKey;
    }
    if (groupId != nil) {
        pathParams[@"group_id"] = groupId;
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
/// Create group.
/// Creates a group with the participant data. The creator is automatically added to the group.
///  @param instanceKey Instance key 
///
///  @param data Group create payload 
///
///  @returns OAIAPIResponse*
///
-(NSURLSessionTask*) createGroupWithInstanceKey: (NSString*) instanceKey
    data: (OAIGroupCreatePayload*) data
    completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler {
    // verify the required parameter 'instanceKey' is set
    if (instanceKey == nil) {
        NSParameterAssert(instanceKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"instanceKey"] };
            NSError* error = [NSError errorWithDomain:kOAIGroupManagementApiErrorDomain code:kOAIGroupManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'data' is set
    if (data == nil) {
        NSParameterAssert(data);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"data"] };
            NSError* error = [NSError errorWithDomain:kOAIGroupManagementApiErrorDomain code:kOAIGroupManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/instances/{instance_key}/groups/create"];

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
/// Demote participant.
/// Demotes admins in groups. You must be admin in the group or the query will fail.
///  @param instanceKey Instance key 
///
///  @param groupId Group id of the group 
///
///  @param data Group update payload 
///
///  @returns OAIAPIResponse*
///
-(NSURLSessionTask*) demoteParticipantWithInstanceKey: (NSString*) instanceKey
    groupId: (NSString*) groupId
    data: (OAIGroupUpdateParticipantsPayload*) data
    completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler {
    // verify the required parameter 'instanceKey' is set
    if (instanceKey == nil) {
        NSParameterAssert(instanceKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"instanceKey"] };
            NSError* error = [NSError errorWithDomain:kOAIGroupManagementApiErrorDomain code:kOAIGroupManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'groupId' is set
    if (groupId == nil) {
        NSParameterAssert(groupId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"groupId"] };
            NSError* error = [NSError errorWithDomain:kOAIGroupManagementApiErrorDomain code:kOAIGroupManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'data' is set
    if (data == nil) {
        NSParameterAssert(data);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"data"] };
            NSError* error = [NSError errorWithDomain:kOAIGroupManagementApiErrorDomain code:kOAIGroupManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/instances/{instance_key}/groups/{group_id}/participants/demote"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (instanceKey != nil) {
        pathParams[@"instance_key"] = instanceKey;
    }
    if (groupId != nil) {
        pathParams[@"group_id"] = groupId;
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
                                    method: @"PUT"
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
/// Get admin groups.
/// Returns list of all groups in which you are admin.
///  @param instanceKey Instance key 
///
///  @returns OAIAPIResponse*
///
-(NSURLSessionTask*) getAdminGroupsWithInstanceKey: (NSString*) instanceKey
    completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler {
    // verify the required parameter 'instanceKey' is set
    if (instanceKey == nil) {
        NSParameterAssert(instanceKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"instanceKey"] };
            NSError* error = [NSError errorWithDomain:kOAIGroupManagementApiErrorDomain code:kOAIGroupManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/instances/{instance_key}/groups/admin"];

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
                              responseType: @"OAIAPIResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAPIResponse*)data, error);
                                }
                            }];
}

///
/// Get all groups.
/// Returns list of all groups with participants data. Set include_participants to false to exclude participants data.
///  @param instanceKey Instance key 
///
///  @param includeParticipants Include participants data (optional, default to @"true")
///
///  @returns OAIAPIResponse*
///
-(NSURLSessionTask*) getAllGroupsWithInstanceKey: (NSString*) instanceKey
    includeParticipants: (NSString*) includeParticipants
    completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler {
    // verify the required parameter 'instanceKey' is set
    if (instanceKey == nil) {
        NSParameterAssert(instanceKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"instanceKey"] };
            NSError* error = [NSError errorWithDomain:kOAIGroupManagementApiErrorDomain code:kOAIGroupManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/instances/{instance_key}/groups/"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (instanceKey != nil) {
        pathParams[@"instance_key"] = instanceKey;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (includeParticipants != nil) {
        queryParams[@"include_participants"] = includeParticipants;
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
/// Get all participants.
/// Returns all participants of the group.
///  @param instanceKey Instance key 
///
///  @param groupId Group id of the group 
///
///  @returns OAIAPIResponse*
///
-(NSURLSessionTask*) getAllParticipantsWithInstanceKey: (NSString*) instanceKey
    groupId: (NSString*) groupId
    completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler {
    // verify the required parameter 'instanceKey' is set
    if (instanceKey == nil) {
        NSParameterAssert(instanceKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"instanceKey"] };
            NSError* error = [NSError errorWithDomain:kOAIGroupManagementApiErrorDomain code:kOAIGroupManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'groupId' is set
    if (groupId == nil) {
        NSParameterAssert(groupId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"groupId"] };
            NSError* error = [NSError errorWithDomain:kOAIGroupManagementApiErrorDomain code:kOAIGroupManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/instances/{instance_key}/groups/{group_id}/participants"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (instanceKey != nil) {
        pathParams[@"instance_key"] = instanceKey;
    }
    if (groupId != nil) {
        pathParams[@"group_id"] = groupId;
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
                              responseType: @"OAIAPIResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAPIResponse*)data, error);
                                }
                            }];
}

///
/// Get group.
/// Fetches the group data.
///  @param instanceKey Instance key 
///
///  @param groupId Group id of the group 
///
///  @returns OAIAPIResponse*
///
-(NSURLSessionTask*) getGroupWithInstanceKey: (NSString*) instanceKey
    groupId: (NSString*) groupId
    completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler {
    // verify the required parameter 'instanceKey' is set
    if (instanceKey == nil) {
        NSParameterAssert(instanceKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"instanceKey"] };
            NSError* error = [NSError errorWithDomain:kOAIGroupManagementApiErrorDomain code:kOAIGroupManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'groupId' is set
    if (groupId == nil) {
        NSParameterAssert(groupId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"groupId"] };
            NSError* error = [NSError errorWithDomain:kOAIGroupManagementApiErrorDomain code:kOAIGroupManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/instances/{instance_key}/groups/{group_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (instanceKey != nil) {
        pathParams[@"instance_key"] = instanceKey;
    }
    if (groupId != nil) {
        pathParams[@"group_id"] = groupId;
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
                              responseType: @"OAIAPIResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAPIResponse*)data, error);
                                }
                            }];
}

///
/// Get group from invite link.
/// Gets a group info from an invite link. An invite link is a link that can be used to join a group. It is usually in the format https://chat.whatsapp.com/{invitecode}
///  @param instanceKey Instance key 
///
///  @param inviteLink The invite link to check 
///
///  @returns OAIAPIResponse*
///
-(NSURLSessionTask*) getGroupFromInviteLinkWithInstanceKey: (NSString*) instanceKey
    inviteLink: (NSString*) inviteLink
    completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler {
    // verify the required parameter 'instanceKey' is set
    if (instanceKey == nil) {
        NSParameterAssert(instanceKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"instanceKey"] };
            NSError* error = [NSError errorWithDomain:kOAIGroupManagementApiErrorDomain code:kOAIGroupManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'inviteLink' is set
    if (inviteLink == nil) {
        NSParameterAssert(inviteLink);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inviteLink"] };
            NSError* error = [NSError errorWithDomain:kOAIGroupManagementApiErrorDomain code:kOAIGroupManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/instances/{instance_key}/groups/invite-info"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (instanceKey != nil) {
        pathParams[@"instance_key"] = instanceKey;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (inviteLink != nil) {
        queryParams[@"invite_link"] = inviteLink;
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
/// Get group invite code.
/// Gets the invite code of the group.
///  @param instanceKey Instance key 
///
///  @param groupId Group id of the group 
///
///  @returns OAIAPIResponse*
///
-(NSURLSessionTask*) getGroupInviteCodeWithInstanceKey: (NSString*) instanceKey
    groupId: (NSString*) groupId
    completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler {
    // verify the required parameter 'instanceKey' is set
    if (instanceKey == nil) {
        NSParameterAssert(instanceKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"instanceKey"] };
            NSError* error = [NSError errorWithDomain:kOAIGroupManagementApiErrorDomain code:kOAIGroupManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'groupId' is set
    if (groupId == nil) {
        NSParameterAssert(groupId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"groupId"] };
            NSError* error = [NSError errorWithDomain:kOAIGroupManagementApiErrorDomain code:kOAIGroupManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/instances/{instance_key}/groups/{group_id}/invite-code"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (instanceKey != nil) {
        pathParams[@"instance_key"] = instanceKey;
    }
    if (groupId != nil) {
        pathParams[@"group_id"] = groupId;
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
                              responseType: @"OAIAPIResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAPIResponse*)data, error);
                                }
                            }];
}

///
/// Join group with invite code.
/// Joins a group with group invite link. An invite link is a link that can be used to join a group. It is usually in the format https://chat.whatsapp.com/{invitecode} You have to put invite_code in the url of the request. The invite code is the part after https://chat.whatsapp.com/ For example, if the invite link is https://chat.whatsapp.com/dsfsf34r3d3dsds, then the invite code is `dsfsf34r3d3dsds“
///  @param instanceKey Instance key 
///
///  @param inviteCode The invite code of group you want to join 
///
///  @returns OAIAPIResponse*
///
-(NSURLSessionTask*) joinGroupWithLinkWithInstanceKey: (NSString*) instanceKey
    inviteCode: (NSString*) inviteCode
    completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler {
    // verify the required parameter 'instanceKey' is set
    if (instanceKey == nil) {
        NSParameterAssert(instanceKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"instanceKey"] };
            NSError* error = [NSError errorWithDomain:kOAIGroupManagementApiErrorDomain code:kOAIGroupManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'inviteCode' is set
    if (inviteCode == nil) {
        NSParameterAssert(inviteCode);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inviteCode"] };
            NSError* error = [NSError errorWithDomain:kOAIGroupManagementApiErrorDomain code:kOAIGroupManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/instances/{instance_key}/groups/join"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (instanceKey != nil) {
        pathParams[@"instance_key"] = instanceKey;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (inviteCode != nil) {
        queryParams[@"invite_code"] = inviteCode;
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
/// Leaves the group.
/// Leaves the specified group.
///  @param instanceKey Instance key 
///
///  @param groupId Group id of the group 
///
///  @returns OAIAPIResponse*
///
-(NSURLSessionTask*) leaveGroupWithInstanceKey: (NSString*) instanceKey
    groupId: (NSString*) groupId
    completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler {
    // verify the required parameter 'instanceKey' is set
    if (instanceKey == nil) {
        NSParameterAssert(instanceKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"instanceKey"] };
            NSError* error = [NSError errorWithDomain:kOAIGroupManagementApiErrorDomain code:kOAIGroupManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'groupId' is set
    if (groupId == nil) {
        NSParameterAssert(groupId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"groupId"] };
            NSError* error = [NSError errorWithDomain:kOAIGroupManagementApiErrorDomain code:kOAIGroupManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/instances/{instance_key}/groups/{group_id}/"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (instanceKey != nil) {
        pathParams[@"instance_key"] = instanceKey;
    }
    if (groupId != nil) {
        pathParams[@"group_id"] = groupId;
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
                                    method: @"DELETE"
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
/// Promote participant.
/// Promotes participants to admin. You must be admin in the group or the query will fail.
///  @param instanceKey Instance key 
///
///  @param groupId Group id of the group 
///
///  @param data Group update payload 
///
///  @returns OAIAPIResponse*
///
-(NSURLSessionTask*) promoteParticipantWithInstanceKey: (NSString*) instanceKey
    groupId: (NSString*) groupId
    data: (OAIGroupUpdateParticipantsPayload*) data
    completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler {
    // verify the required parameter 'instanceKey' is set
    if (instanceKey == nil) {
        NSParameterAssert(instanceKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"instanceKey"] };
            NSError* error = [NSError errorWithDomain:kOAIGroupManagementApiErrorDomain code:kOAIGroupManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'groupId' is set
    if (groupId == nil) {
        NSParameterAssert(groupId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"groupId"] };
            NSError* error = [NSError errorWithDomain:kOAIGroupManagementApiErrorDomain code:kOAIGroupManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'data' is set
    if (data == nil) {
        NSParameterAssert(data);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"data"] };
            NSError* error = [NSError errorWithDomain:kOAIGroupManagementApiErrorDomain code:kOAIGroupManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/instances/{instance_key}/groups/{group_id}/participants/promote"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (instanceKey != nil) {
        pathParams[@"instance_key"] = instanceKey;
    }
    if (groupId != nil) {
        pathParams[@"group_id"] = groupId;
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
                                    method: @"PUT"
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
/// Remove participant.
/// Handles removing participants from a group. You must be admin in the group or the query will fail.
///  @param instanceKey Instance key 
///
///  @param groupId Group id of the group 
///
///  @param data Group update payload 
///
///  @returns OAIAPIResponse*
///
-(NSURLSessionTask*) removeParticipantWithInstanceKey: (NSString*) instanceKey
    groupId: (NSString*) groupId
    data: (OAIGroupUpdateParticipantsPayload*) data
    completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler {
    // verify the required parameter 'instanceKey' is set
    if (instanceKey == nil) {
        NSParameterAssert(instanceKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"instanceKey"] };
            NSError* error = [NSError errorWithDomain:kOAIGroupManagementApiErrorDomain code:kOAIGroupManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'groupId' is set
    if (groupId == nil) {
        NSParameterAssert(groupId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"groupId"] };
            NSError* error = [NSError errorWithDomain:kOAIGroupManagementApiErrorDomain code:kOAIGroupManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'data' is set
    if (data == nil) {
        NSParameterAssert(data);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"data"] };
            NSError* error = [NSError errorWithDomain:kOAIGroupManagementApiErrorDomain code:kOAIGroupManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/instances/{instance_key}/groups/{group_id}/participants/remove"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (instanceKey != nil) {
        pathParams[@"instance_key"] = instanceKey;
    }
    if (groupId != nil) {
        pathParams[@"group_id"] = groupId;
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
                                    method: @"DELETE"
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
/// Set group announce.
/// Set if non-admins are allowed to send messages in groups
///  @param instanceKey Instance key 
///
///  @param announce Announce status 
///
///  @param groupId Group id of the group 
///
///  @returns OAIAPIResponse*
///
-(NSURLSessionTask*) setGroupAnnounceWithInstanceKey: (NSString*) instanceKey
    announce: (NSNumber*) announce
    groupId: (NSString*) groupId
    completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler {
    // verify the required parameter 'instanceKey' is set
    if (instanceKey == nil) {
        NSParameterAssert(instanceKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"instanceKey"] };
            NSError* error = [NSError errorWithDomain:kOAIGroupManagementApiErrorDomain code:kOAIGroupManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'announce' is set
    if (announce == nil) {
        NSParameterAssert(announce);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"announce"] };
            NSError* error = [NSError errorWithDomain:kOAIGroupManagementApiErrorDomain code:kOAIGroupManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'groupId' is set
    if (groupId == nil) {
        NSParameterAssert(groupId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"groupId"] };
            NSError* error = [NSError errorWithDomain:kOAIGroupManagementApiErrorDomain code:kOAIGroupManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/instances/{instance_key}/groups/{group_id}/announce"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (instanceKey != nil) {
        pathParams[@"instance_key"] = instanceKey;
    }
    if (announce != nil) {
        pathParams[@"announce"] = announce;
    }
    if (groupId != nil) {
        pathParams[@"group_id"] = groupId;
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
                                    method: @"PUT"
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
/// Set group description.
/// Changes the group description
///  @param instanceKey Instance key 
///
///  @param groupId Group id of the group 
///
///  @param data Group description data 
///
///  @returns OAIAPIResponse*
///
-(NSURLSessionTask*) setGroupDescriptionWithInstanceKey: (NSString*) instanceKey
    groupId: (NSString*) groupId
    data: (OAIGroupUpdateDescriptionPayload*) data
    completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler {
    // verify the required parameter 'instanceKey' is set
    if (instanceKey == nil) {
        NSParameterAssert(instanceKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"instanceKey"] };
            NSError* error = [NSError errorWithDomain:kOAIGroupManagementApiErrorDomain code:kOAIGroupManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'groupId' is set
    if (groupId == nil) {
        NSParameterAssert(groupId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"groupId"] };
            NSError* error = [NSError errorWithDomain:kOAIGroupManagementApiErrorDomain code:kOAIGroupManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'data' is set
    if (data == nil) {
        NSParameterAssert(data);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"data"] };
            NSError* error = [NSError errorWithDomain:kOAIGroupManagementApiErrorDomain code:kOAIGroupManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/instances/{instance_key}/groups/{group_id}/description"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (instanceKey != nil) {
        pathParams[@"instance_key"] = instanceKey;
    }
    if (groupId != nil) {
        pathParams[@"group_id"] = groupId;
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
                                    method: @"PUT"
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
/// Set group locked.
/// Set if non-admins are allowed to change the group dp and other stuff
///  @param instanceKey Instance key 
///
///  @param locked Locked status 
///
///  @param groupId Group id of the group 
///
///  @returns OAIAPIResponse*
///
-(NSURLSessionTask*) setGroupLockedWithInstanceKey: (NSString*) instanceKey
    locked: (NSNumber*) locked
    groupId: (NSString*) groupId
    completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler {
    // verify the required parameter 'instanceKey' is set
    if (instanceKey == nil) {
        NSParameterAssert(instanceKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"instanceKey"] };
            NSError* error = [NSError errorWithDomain:kOAIGroupManagementApiErrorDomain code:kOAIGroupManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'locked' is set
    if (locked == nil) {
        NSParameterAssert(locked);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"locked"] };
            NSError* error = [NSError errorWithDomain:kOAIGroupManagementApiErrorDomain code:kOAIGroupManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'groupId' is set
    if (groupId == nil) {
        NSParameterAssert(groupId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"groupId"] };
            NSError* error = [NSError errorWithDomain:kOAIGroupManagementApiErrorDomain code:kOAIGroupManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/instances/{instance_key}/groups/{group_id}/lock"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (instanceKey != nil) {
        pathParams[@"instance_key"] = instanceKey;
    }
    if (locked != nil) {
        pathParams[@"locked"] = locked;
    }
    if (groupId != nil) {
        pathParams[@"group_id"] = groupId;
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
                                    method: @"PUT"
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
/// Set group name.
/// Changes the group name. The max limit is 22 chars
///  @param instanceKey Instance key 
///
///  @param groupId Group id of the group 
///
///  @param data Group name data 
///
///  @returns OAIAPIResponse*
///
-(NSURLSessionTask*) setGroupNameWithInstanceKey: (NSString*) instanceKey
    groupId: (NSString*) groupId
    data: (OAIGroupUpdateNamePayload*) data
    completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler {
    // verify the required parameter 'instanceKey' is set
    if (instanceKey == nil) {
        NSParameterAssert(instanceKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"instanceKey"] };
            NSError* error = [NSError errorWithDomain:kOAIGroupManagementApiErrorDomain code:kOAIGroupManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'groupId' is set
    if (groupId == nil) {
        NSParameterAssert(groupId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"groupId"] };
            NSError* error = [NSError errorWithDomain:kOAIGroupManagementApiErrorDomain code:kOAIGroupManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'data' is set
    if (data == nil) {
        NSParameterAssert(data);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"data"] };
            NSError* error = [NSError errorWithDomain:kOAIGroupManagementApiErrorDomain code:kOAIGroupManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/instances/{instance_key}/groups/{group_id}/name"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (instanceKey != nil) {
        pathParams[@"instance_key"] = instanceKey;
    }
    if (groupId != nil) {
        pathParams[@"group_id"] = groupId;
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
                                    method: @"PUT"
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
/// Set group picture.
/// Changes the group profile picture. Currently it only seems to accept JPEG images only
///  @param instanceKey Instance key 
///
///  @param groupId Group id of the group 
///
///  @param setGroupPictureRequest  
///
///  @returns OAIAPIResponse*
///
-(NSURLSessionTask*) setGroupPictureWithInstanceKey: (NSString*) instanceKey
    groupId: (NSString*) groupId
    setGroupPictureRequest: (OAISetGroupPictureRequest*) setGroupPictureRequest
    completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler {
    // verify the required parameter 'instanceKey' is set
    if (instanceKey == nil) {
        NSParameterAssert(instanceKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"instanceKey"] };
            NSError* error = [NSError errorWithDomain:kOAIGroupManagementApiErrorDomain code:kOAIGroupManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'groupId' is set
    if (groupId == nil) {
        NSParameterAssert(groupId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"groupId"] };
            NSError* error = [NSError errorWithDomain:kOAIGroupManagementApiErrorDomain code:kOAIGroupManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'setGroupPictureRequest' is set
    if (setGroupPictureRequest == nil) {
        NSParameterAssert(setGroupPictureRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"setGroupPictureRequest"] };
            NSError* error = [NSError errorWithDomain:kOAIGroupManagementApiErrorDomain code:kOAIGroupManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/instances/{instance_key}/groups/{group_id}/profile-pic"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (instanceKey != nil) {
        pathParams[@"instance_key"] = instanceKey;
    }
    if (groupId != nil) {
        pathParams[@"group_id"] = groupId;
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
    bodyParam = setGroupPictureRequest;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"PUT"
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
