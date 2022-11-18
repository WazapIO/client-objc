# OAIGroupManagementApi

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addParticipant**](OAIGroupManagementApi.md#addparticipant) | **POST** /instances/{instance_key}/groups/{group_id}/participants/add | Add participant.
[**createGroup**](OAIGroupManagementApi.md#creategroup) | **POST** /instances/{instance_key}/groups/create | Create group.
[**demoteParticipant**](OAIGroupManagementApi.md#demoteparticipant) | **PUT** /instances/{instance_key}/groups/{group_id}/participants/demote | Demote participant.
[**getAdminGroups**](OAIGroupManagementApi.md#getadmingroups) | **GET** /instances/{instance_key}/groups/admin | Get admin groups.
[**getAllGroups**](OAIGroupManagementApi.md#getallgroups) | **GET** /instances/{instance_key}/groups/ | Get all groups.
[**getAllParticipants**](OAIGroupManagementApi.md#getallparticipants) | **GET** /instances/{instance_key}/groups/{group_id}/participants | Get all participants.
[**getGroup**](OAIGroupManagementApi.md#getgroup) | **GET** /instances/{instance_key}/groups/{group_id} | Get group.
[**getGroupFromInviteLink**](OAIGroupManagementApi.md#getgroupfrominvitelink) | **GET** /instances/{instance_key}/groups/invite-info | Get group from invite link.
[**getGroupInviteCode**](OAIGroupManagementApi.md#getgroupinvitecode) | **GET** /instances/{instance_key}/groups/{group_id}/invite-code | Get group invite code.
[**joinGroupWithLink**](OAIGroupManagementApi.md#joingroupwithlink) | **GET** /instances/{instance_key}/groups/join | Join group with invite code.
[**leaveGroup**](OAIGroupManagementApi.md#leavegroup) | **DELETE** /instances/{instance_key}/groups/{group_id}/ | Leaves the group.
[**promoteParticipant**](OAIGroupManagementApi.md#promoteparticipant) | **PUT** /instances/{instance_key}/groups/{group_id}/participants/promote | Promote participant.
[**removeParticipant**](OAIGroupManagementApi.md#removeparticipant) | **DELETE** /instances/{instance_key}/groups/{group_id}/participants/remove | Remove participant.
[**setGroupAnnounce**](OAIGroupManagementApi.md#setgroupannounce) | **PUT** /instances/{instance_key}/groups/{group_id}/announce | Set group announce.
[**setGroupDescription**](OAIGroupManagementApi.md#setgroupdescription) | **PUT** /instances/{instance_key}/groups/{group_id}/description | Set group description.
[**setGroupLocked**](OAIGroupManagementApi.md#setgrouplocked) | **PUT** /instances/{instance_key}/groups/{group_id}/lock | Set group locked.
[**setGroupName**](OAIGroupManagementApi.md#setgroupname) | **PUT** /instances/{instance_key}/groups/{group_id}/name | Set group name.
[**setGroupPicture**](OAIGroupManagementApi.md#setgrouppicture) | **PUT** /instances/{instance_key}/groups/{group_id}/profile-pic | Set group picture.


# **addParticipant**
```objc
-(NSURLSessionTask*) addParticipantWithInstanceKey: (NSString*) instanceKey
    groupId: (NSString*) groupId
    data: (OAIGroupUpdateParticipantsPayload*) data
        completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;
```

Add participant.

Handles adding participants to a group. You must be admin in the group or the query will fail.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* instanceKey = @"instanceKey_example"; // Instance key
NSString* groupId = @"groupId_example"; // Group id of the group
OAIGroupUpdateParticipantsPayload* data = [[OAIGroupUpdateParticipantsPayload alloc] init]; // Group update payload

OAIGroupManagementApi*apiInstance = [[OAIGroupManagementApi alloc] init];

// Add participant.
[apiInstance addParticipantWithInstanceKey:instanceKey
              groupId:groupId
              data:data
          completionHandler: ^(OAIAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGroupManagementApi->addParticipant: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **groupId** | **NSString***| Group id of the group | 
 **data** | [**OAIGroupUpdateParticipantsPayload***](OAIGroupUpdateParticipantsPayload.md)| Group update payload | 

### Return type

[**OAIAPIResponse***](OAIAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createGroup**
```objc
-(NSURLSessionTask*) createGroupWithInstanceKey: (NSString*) instanceKey
    data: (OAIGroupCreatePayload*) data
        completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;
```

Create group.

Creates a group with the participant data. The creator is automatically added to the group.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* instanceKey = @"instanceKey_example"; // Instance key
OAIGroupCreatePayload* data = [[OAIGroupCreatePayload alloc] init]; // Group create payload

OAIGroupManagementApi*apiInstance = [[OAIGroupManagementApi alloc] init];

// Create group.
[apiInstance createGroupWithInstanceKey:instanceKey
              data:data
          completionHandler: ^(OAIAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGroupManagementApi->createGroup: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **data** | [**OAIGroupCreatePayload***](OAIGroupCreatePayload.md)| Group create payload | 

### Return type

[**OAIAPIResponse***](OAIAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **demoteParticipant**
```objc
-(NSURLSessionTask*) demoteParticipantWithInstanceKey: (NSString*) instanceKey
    groupId: (NSString*) groupId
    data: (OAIGroupUpdateParticipantsPayload*) data
        completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;
```

Demote participant.

Demotes admins in groups. You must be admin in the group or the query will fail.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* instanceKey = @"instanceKey_example"; // Instance key
NSString* groupId = @"groupId_example"; // Group id of the group
OAIGroupUpdateParticipantsPayload* data = [[OAIGroupUpdateParticipantsPayload alloc] init]; // Group update payload

OAIGroupManagementApi*apiInstance = [[OAIGroupManagementApi alloc] init];

// Demote participant.
[apiInstance demoteParticipantWithInstanceKey:instanceKey
              groupId:groupId
              data:data
          completionHandler: ^(OAIAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGroupManagementApi->demoteParticipant: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **groupId** | **NSString***| Group id of the group | 
 **data** | [**OAIGroupUpdateParticipantsPayload***](OAIGroupUpdateParticipantsPayload.md)| Group update payload | 

### Return type

[**OAIAPIResponse***](OAIAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAdminGroups**
```objc
-(NSURLSessionTask*) getAdminGroupsWithInstanceKey: (NSString*) instanceKey
        completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;
```

Get admin groups.

Returns list of all groups in which you are admin.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* instanceKey = @"instanceKey_example"; // Instance key

OAIGroupManagementApi*apiInstance = [[OAIGroupManagementApi alloc] init];

// Get admin groups.
[apiInstance getAdminGroupsWithInstanceKey:instanceKey
          completionHandler: ^(OAIAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGroupManagementApi->getAdminGroups: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 

### Return type

[**OAIAPIResponse***](OAIAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllGroups**
```objc
-(NSURLSessionTask*) getAllGroupsWithInstanceKey: (NSString*) instanceKey
    includeParticipants: (NSString*) includeParticipants
        completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;
```

Get all groups.

Returns list of all groups with participants data. Set include_participants to false to exclude participants data.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* instanceKey = @"instanceKey_example"; // Instance key
NSString* includeParticipants = @"true"; // Include participants data (optional) (default to @"true")

OAIGroupManagementApi*apiInstance = [[OAIGroupManagementApi alloc] init];

// Get all groups.
[apiInstance getAllGroupsWithInstanceKey:instanceKey
              includeParticipants:includeParticipants
          completionHandler: ^(OAIAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGroupManagementApi->getAllGroups: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **includeParticipants** | **NSString***| Include participants data | [optional] [default to @&quot;true&quot;]

### Return type

[**OAIAPIResponse***](OAIAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllParticipants**
```objc
-(NSURLSessionTask*) getAllParticipantsWithInstanceKey: (NSString*) instanceKey
    groupId: (NSString*) groupId
        completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;
```

Get all participants.

Returns all participants of the group.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* instanceKey = @"instanceKey_example"; // Instance key
NSString* groupId = @"groupId_example"; // Group id of the group

OAIGroupManagementApi*apiInstance = [[OAIGroupManagementApi alloc] init];

// Get all participants.
[apiInstance getAllParticipantsWithInstanceKey:instanceKey
              groupId:groupId
          completionHandler: ^(OAIAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGroupManagementApi->getAllParticipants: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **groupId** | **NSString***| Group id of the group | 

### Return type

[**OAIAPIResponse***](OAIAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroup**
```objc
-(NSURLSessionTask*) getGroupWithInstanceKey: (NSString*) instanceKey
    groupId: (NSString*) groupId
        completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;
```

Get group.

Fetches the group data.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* instanceKey = @"instanceKey_example"; // Instance key
NSString* groupId = @"groupId_example"; // Group id of the group

OAIGroupManagementApi*apiInstance = [[OAIGroupManagementApi alloc] init];

// Get group.
[apiInstance getGroupWithInstanceKey:instanceKey
              groupId:groupId
          completionHandler: ^(OAIAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGroupManagementApi->getGroup: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **groupId** | **NSString***| Group id of the group | 

### Return type

[**OAIAPIResponse***](OAIAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroupFromInviteLink**
```objc
-(NSURLSessionTask*) getGroupFromInviteLinkWithInstanceKey: (NSString*) instanceKey
    inviteLink: (NSString*) inviteLink
        completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;
```

Get group from invite link.

Gets a group info from an invite link. An invite link is a link that can be used to join a group. It is usually in the format https://chat.whatsapp.com/{invitecode}

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* instanceKey = @"instanceKey_example"; // Instance key
NSString* inviteLink = @"inviteLink_example"; // The invite link to check

OAIGroupManagementApi*apiInstance = [[OAIGroupManagementApi alloc] init];

// Get group from invite link.
[apiInstance getGroupFromInviteLinkWithInstanceKey:instanceKey
              inviteLink:inviteLink
          completionHandler: ^(OAIAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGroupManagementApi->getGroupFromInviteLink: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **inviteLink** | **NSString***| The invite link to check | 

### Return type

[**OAIAPIResponse***](OAIAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroupInviteCode**
```objc
-(NSURLSessionTask*) getGroupInviteCodeWithInstanceKey: (NSString*) instanceKey
    groupId: (NSString*) groupId
        completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;
```

Get group invite code.

Gets the invite code of the group.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* instanceKey = @"instanceKey_example"; // Instance key
NSString* groupId = @"groupId_example"; // Group id of the group

OAIGroupManagementApi*apiInstance = [[OAIGroupManagementApi alloc] init];

// Get group invite code.
[apiInstance getGroupInviteCodeWithInstanceKey:instanceKey
              groupId:groupId
          completionHandler: ^(OAIAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGroupManagementApi->getGroupInviteCode: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **groupId** | **NSString***| Group id of the group | 

### Return type

[**OAIAPIResponse***](OAIAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **joinGroupWithLink**
```objc
-(NSURLSessionTask*) joinGroupWithLinkWithInstanceKey: (NSString*) instanceKey
    inviteCode: (NSString*) inviteCode
        completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;
```

Join group with invite code.

Joins a group with group invite link. An invite link is a link that can be used to join a group. It is usually in the format https://chat.whatsapp.com/{invitecode} You have to put invite_code in the url of the request. The invite code is the part after https://chat.whatsapp.com/ For example, if the invite link is https://chat.whatsapp.com/dsfsf34r3d3dsds, then the invite code is `dsfsf34r3d3dsds“

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* instanceKey = @"instanceKey_example"; // Instance key
NSString* inviteCode = @"inviteCode_example"; // The invite code of group you want to join

OAIGroupManagementApi*apiInstance = [[OAIGroupManagementApi alloc] init];

// Join group with invite code.
[apiInstance joinGroupWithLinkWithInstanceKey:instanceKey
              inviteCode:inviteCode
          completionHandler: ^(OAIAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGroupManagementApi->joinGroupWithLink: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **inviteCode** | **NSString***| The invite code of group you want to join | 

### Return type

[**OAIAPIResponse***](OAIAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **leaveGroup**
```objc
-(NSURLSessionTask*) leaveGroupWithInstanceKey: (NSString*) instanceKey
    groupId: (NSString*) groupId
        completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;
```

Leaves the group.

Leaves the specified group.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* instanceKey = @"instanceKey_example"; // Instance key
NSString* groupId = @"groupId_example"; // Group id of the group

OAIGroupManagementApi*apiInstance = [[OAIGroupManagementApi alloc] init];

// Leaves the group.
[apiInstance leaveGroupWithInstanceKey:instanceKey
              groupId:groupId
          completionHandler: ^(OAIAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGroupManagementApi->leaveGroup: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **groupId** | **NSString***| Group id of the group | 

### Return type

[**OAIAPIResponse***](OAIAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **promoteParticipant**
```objc
-(NSURLSessionTask*) promoteParticipantWithInstanceKey: (NSString*) instanceKey
    groupId: (NSString*) groupId
    data: (OAIGroupUpdateParticipantsPayload*) data
        completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;
```

Promote participant.

Promotes participants to admin. You must be admin in the group or the query will fail.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* instanceKey = @"instanceKey_example"; // Instance key
NSString* groupId = @"groupId_example"; // Group id of the group
OAIGroupUpdateParticipantsPayload* data = [[OAIGroupUpdateParticipantsPayload alloc] init]; // Group update payload

OAIGroupManagementApi*apiInstance = [[OAIGroupManagementApi alloc] init];

// Promote participant.
[apiInstance promoteParticipantWithInstanceKey:instanceKey
              groupId:groupId
              data:data
          completionHandler: ^(OAIAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGroupManagementApi->promoteParticipant: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **groupId** | **NSString***| Group id of the group | 
 **data** | [**OAIGroupUpdateParticipantsPayload***](OAIGroupUpdateParticipantsPayload.md)| Group update payload | 

### Return type

[**OAIAPIResponse***](OAIAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeParticipant**
```objc
-(NSURLSessionTask*) removeParticipantWithInstanceKey: (NSString*) instanceKey
    groupId: (NSString*) groupId
    data: (OAIGroupUpdateParticipantsPayload*) data
        completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;
```

Remove participant.

Handles removing participants from a group. You must be admin in the group or the query will fail.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* instanceKey = @"instanceKey_example"; // Instance key
NSString* groupId = @"groupId_example"; // Group id of the group
OAIGroupUpdateParticipantsPayload* data = [[OAIGroupUpdateParticipantsPayload alloc] init]; // Group update payload

OAIGroupManagementApi*apiInstance = [[OAIGroupManagementApi alloc] init];

// Remove participant.
[apiInstance removeParticipantWithInstanceKey:instanceKey
              groupId:groupId
              data:data
          completionHandler: ^(OAIAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGroupManagementApi->removeParticipant: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **groupId** | **NSString***| Group id of the group | 
 **data** | [**OAIGroupUpdateParticipantsPayload***](OAIGroupUpdateParticipantsPayload.md)| Group update payload | 

### Return type

[**OAIAPIResponse***](OAIAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setGroupAnnounce**
```objc
-(NSURLSessionTask*) setGroupAnnounceWithInstanceKey: (NSString*) instanceKey
    announce: (NSNumber*) announce
    groupId: (NSString*) groupId
        completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;
```

Set group announce.

Set if non-admins are allowed to send messages in groups

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* instanceKey = @"instanceKey_example"; // Instance key
NSNumber* announce = @(NO); // Announce status (default to @(NO))
NSString* groupId = @"groupId_example"; // Group id of the group

OAIGroupManagementApi*apiInstance = [[OAIGroupManagementApi alloc] init];

// Set group announce.
[apiInstance setGroupAnnounceWithInstanceKey:instanceKey
              announce:announce
              groupId:groupId
          completionHandler: ^(OAIAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGroupManagementApi->setGroupAnnounce: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **announce** | **NSNumber***| Announce status | [default to @(NO)]
 **groupId** | **NSString***| Group id of the group | 

### Return type

[**OAIAPIResponse***](OAIAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setGroupDescription**
```objc
-(NSURLSessionTask*) setGroupDescriptionWithInstanceKey: (NSString*) instanceKey
    groupId: (NSString*) groupId
    data: (OAIGroupUpdateDescriptionPayload*) data
        completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;
```

Set group description.

Changes the group description

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* instanceKey = @"instanceKey_example"; // Instance key
NSString* groupId = @"groupId_example"; // Group id of the group
OAIGroupUpdateDescriptionPayload* data = [[OAIGroupUpdateDescriptionPayload alloc] init]; // Group description data

OAIGroupManagementApi*apiInstance = [[OAIGroupManagementApi alloc] init];

// Set group description.
[apiInstance setGroupDescriptionWithInstanceKey:instanceKey
              groupId:groupId
              data:data
          completionHandler: ^(OAIAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGroupManagementApi->setGroupDescription: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **groupId** | **NSString***| Group id of the group | 
 **data** | [**OAIGroupUpdateDescriptionPayload***](OAIGroupUpdateDescriptionPayload.md)| Group description data | 

### Return type

[**OAIAPIResponse***](OAIAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setGroupLocked**
```objc
-(NSURLSessionTask*) setGroupLockedWithInstanceKey: (NSString*) instanceKey
    locked: (NSNumber*) locked
    groupId: (NSString*) groupId
        completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;
```

Set group locked.

Set if non-admins are allowed to change the group dp and other stuff

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* instanceKey = @"instanceKey_example"; // Instance key
NSNumber* locked = @(NO); // Locked status (default to @(NO))
NSString* groupId = @"groupId_example"; // Group id of the group

OAIGroupManagementApi*apiInstance = [[OAIGroupManagementApi alloc] init];

// Set group locked.
[apiInstance setGroupLockedWithInstanceKey:instanceKey
              locked:locked
              groupId:groupId
          completionHandler: ^(OAIAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGroupManagementApi->setGroupLocked: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **locked** | **NSNumber***| Locked status | [default to @(NO)]
 **groupId** | **NSString***| Group id of the group | 

### Return type

[**OAIAPIResponse***](OAIAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setGroupName**
```objc
-(NSURLSessionTask*) setGroupNameWithInstanceKey: (NSString*) instanceKey
    groupId: (NSString*) groupId
    data: (OAIGroupUpdateNamePayload*) data
        completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;
```

Set group name.

Changes the group name. The max limit is 22 chars

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* instanceKey = @"instanceKey_example"; // Instance key
NSString* groupId = @"groupId_example"; // Group id of the group
OAIGroupUpdateNamePayload* data = [[OAIGroupUpdateNamePayload alloc] init]; // Group name data

OAIGroupManagementApi*apiInstance = [[OAIGroupManagementApi alloc] init];

// Set group name.
[apiInstance setGroupNameWithInstanceKey:instanceKey
              groupId:groupId
              data:data
          completionHandler: ^(OAIAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGroupManagementApi->setGroupName: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **groupId** | **NSString***| Group id of the group | 
 **data** | [**OAIGroupUpdateNamePayload***](OAIGroupUpdateNamePayload.md)| Group name data | 

### Return type

[**OAIAPIResponse***](OAIAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setGroupPicture**
```objc
-(NSURLSessionTask*) setGroupPictureWithInstanceKey: (NSString*) instanceKey
    groupId: (NSString*) groupId
    setGroupPictureRequest: (OAISetGroupPictureRequest*) setGroupPictureRequest
        completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;
```

Set group picture.

Changes the group profile picture. Currently it only seems to accept JPEG images only

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* instanceKey = @"instanceKey_example"; // Instance key
NSString* groupId = @"groupId_example"; // Group id of the group
OAISetGroupPictureRequest* setGroupPictureRequest = [[OAISetGroupPictureRequest alloc] init]; // 

OAIGroupManagementApi*apiInstance = [[OAIGroupManagementApi alloc] init];

// Set group picture.
[apiInstance setGroupPictureWithInstanceKey:instanceKey
              groupId:groupId
              setGroupPictureRequest:setGroupPictureRequest
          completionHandler: ^(OAIAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGroupManagementApi->setGroupPicture: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **groupId** | **NSString***| Group id of the group | 
 **setGroupPictureRequest** | [**OAISetGroupPictureRequest***](OAISetGroupPictureRequest.md)|  | 

### Return type

[**OAIAPIResponse***](OAIAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

