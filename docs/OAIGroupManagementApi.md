# OAIGroupManagementApi

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**instancesInstanceKeyGroupsAdminGet**](OAIGroupManagementApi.md#instancesinstancekeygroupsadminget) | **GET** /instances/{instance_key}/groups/admin | Get admin groupss.
[**instancesInstanceKeyGroupsCreatePost**](OAIGroupManagementApi.md#instancesinstancekeygroupscreatepost) | **POST** /instances/{instance_key}/groups/create | Create group.
[**instancesInstanceKeyGroupsGet**](OAIGroupManagementApi.md#instancesinstancekeygroupsget) | **GET** /instances/{instance_key}/groups/ | Get all groups.
[**instancesInstanceKeyGroupsGroupIdAnnouncePut**](OAIGroupManagementApi.md#instancesinstancekeygroupsgroupidannounceput) | **PUT** /instances/{instance_key}/groups/{group_id}/announce | Set group announce.
[**instancesInstanceKeyGroupsGroupIdDelete**](OAIGroupManagementApi.md#instancesinstancekeygroupsgroupiddelete) | **DELETE** /instances/{instance_key}/groups/{group_id}/ | Leaves the group.
[**instancesInstanceKeyGroupsGroupIdDescriptionPut**](OAIGroupManagementApi.md#instancesinstancekeygroupsgroupiddescriptionput) | **PUT** /instances/{instance_key}/groups/{group_id}/description | Set group description.
[**instancesInstanceKeyGroupsGroupIdGet**](OAIGroupManagementApi.md#instancesinstancekeygroupsgroupidget) | **GET** /instances/{instance_key}/groups/{group_id} | Get group.
[**instancesInstanceKeyGroupsGroupIdInviteCodeGet**](OAIGroupManagementApi.md#instancesinstancekeygroupsgroupidinvitecodeget) | **GET** /instances/{instance_key}/groups/{group_id}/invite-code | Get group invite code.
[**instancesInstanceKeyGroupsGroupIdLockPut**](OAIGroupManagementApi.md#instancesinstancekeygroupsgroupidlockput) | **PUT** /instances/{instance_key}/groups/{group_id}/lock | Set group locked.
[**instancesInstanceKeyGroupsGroupIdNamePut**](OAIGroupManagementApi.md#instancesinstancekeygroupsgroupidnameput) | **PUT** /instances/{instance_key}/groups/{group_id}/name | Set group name.
[**instancesInstanceKeyGroupsGroupIdParticipantsAddPost**](OAIGroupManagementApi.md#instancesinstancekeygroupsgroupidparticipantsaddpost) | **POST** /instances/{instance_key}/groups/{group_id}/participants/add | Add participant.
[**instancesInstanceKeyGroupsGroupIdParticipantsDemotePut**](OAIGroupManagementApi.md#instancesinstancekeygroupsgroupidparticipantsdemoteput) | **PUT** /instances/{instance_key}/groups/{group_id}/participants/demote | Demote participant.
[**instancesInstanceKeyGroupsGroupIdParticipantsPromotePut**](OAIGroupManagementApi.md#instancesinstancekeygroupsgroupidparticipantspromoteput) | **PUT** /instances/{instance_key}/groups/{group_id}/participants/promote | Promote participant.
[**instancesInstanceKeyGroupsGroupIdParticipantsRemoveDelete**](OAIGroupManagementApi.md#instancesinstancekeygroupsgroupidparticipantsremovedelete) | **DELETE** /instances/{instance_key}/groups/{group_id}/participants/remove | Remove participant.
[**instancesInstanceKeyGroupsGroupIdProfilePicPut**](OAIGroupManagementApi.md#instancesinstancekeygroupsgroupidprofilepicput) | **PUT** /instances/{instance_key}/groups/{group_id}/profile-pic | Set group picture.
[**instancesInstanceKeyGroupsInviteInfoGet**](OAIGroupManagementApi.md#instancesinstancekeygroupsinviteinfoget) | **GET** /instances/{instance_key}/groups/invite-info | Get group from invite link.


# **instancesInstanceKeyGroupsAdminGet**
```objc
-(NSURLSessionTask*) instancesInstanceKeyGroupsAdminGetWithInstanceKey: (NSString*) instanceKey
        completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler;
```

Get admin groupss.

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

// Get admin groupss.
[apiInstance instancesInstanceKeyGroupsAdminGetWithInstanceKey:instanceKey
          completionHandler: ^(OAIMainAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGroupManagementApi->instancesInstanceKeyGroupsAdminGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 

### Return type

[**OAIMainAPIResponse***](OAIMainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instancesInstanceKeyGroupsCreatePost**
```objc
-(NSURLSessionTask*) instancesInstanceKeyGroupsCreatePostWithInstanceKey: (NSString*) instanceKey
    data: (OAIStructsGroupCreatePayload*) data
        completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler;
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
OAIStructsGroupCreatePayload* data = [[OAIStructsGroupCreatePayload alloc] init]; // Group create payload

OAIGroupManagementApi*apiInstance = [[OAIGroupManagementApi alloc] init];

// Create group.
[apiInstance instancesInstanceKeyGroupsCreatePostWithInstanceKey:instanceKey
              data:data
          completionHandler: ^(OAIMainAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGroupManagementApi->instancesInstanceKeyGroupsCreatePost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **data** | [**OAIStructsGroupCreatePayload***](OAIStructsGroupCreatePayload.md)| Group create payload | 

### Return type

[**OAIMainAPIResponse***](OAIMainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instancesInstanceKeyGroupsGet**
```objc
-(NSURLSessionTask*) instancesInstanceKeyGroupsGetWithInstanceKey: (NSString*) instanceKey
    includeParticipants: (NSString*) includeParticipants
        completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler;
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
[apiInstance instancesInstanceKeyGroupsGetWithInstanceKey:instanceKey
              includeParticipants:includeParticipants
          completionHandler: ^(OAIMainAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGroupManagementApi->instancesInstanceKeyGroupsGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **includeParticipants** | **NSString***| Include participants data | [optional] [default to @&quot;true&quot;]

### Return type

[**OAIMainAPIResponse***](OAIMainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instancesInstanceKeyGroupsGroupIdAnnouncePut**
```objc
-(NSURLSessionTask*) instancesInstanceKeyGroupsGroupIdAnnouncePutWithInstanceKey: (NSString*) instanceKey
    announce: (NSNumber*) announce
    groupId: (NSString*) groupId
        completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler;
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
[apiInstance instancesInstanceKeyGroupsGroupIdAnnouncePutWithInstanceKey:instanceKey
              announce:announce
              groupId:groupId
          completionHandler: ^(OAIMainAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGroupManagementApi->instancesInstanceKeyGroupsGroupIdAnnouncePut: %@", error);
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

[**OAIMainAPIResponse***](OAIMainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instancesInstanceKeyGroupsGroupIdDelete**
```objc
-(NSURLSessionTask*) instancesInstanceKeyGroupsGroupIdDeleteWithInstanceKey: (NSString*) instanceKey
    groupId: (NSString*) groupId
        completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler;
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
[apiInstance instancesInstanceKeyGroupsGroupIdDeleteWithInstanceKey:instanceKey
              groupId:groupId
          completionHandler: ^(OAIMainAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGroupManagementApi->instancesInstanceKeyGroupsGroupIdDelete: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **groupId** | **NSString***| Group id of the group | 

### Return type

[**OAIMainAPIResponse***](OAIMainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instancesInstanceKeyGroupsGroupIdDescriptionPut**
```objc
-(NSURLSessionTask*) instancesInstanceKeyGroupsGroupIdDescriptionPutWithInstanceKey: (NSString*) instanceKey
    groupId: (NSString*) groupId
    data: (OAIStructsGroupUpdateDescriptionPayload*) data
        completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler;
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
OAIStructsGroupUpdateDescriptionPayload* data = [[OAIStructsGroupUpdateDescriptionPayload alloc] init]; // Group description data

OAIGroupManagementApi*apiInstance = [[OAIGroupManagementApi alloc] init];

// Set group description.
[apiInstance instancesInstanceKeyGroupsGroupIdDescriptionPutWithInstanceKey:instanceKey
              groupId:groupId
              data:data
          completionHandler: ^(OAIMainAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGroupManagementApi->instancesInstanceKeyGroupsGroupIdDescriptionPut: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **groupId** | **NSString***| Group id of the group | 
 **data** | [**OAIStructsGroupUpdateDescriptionPayload***](OAIStructsGroupUpdateDescriptionPayload.md)| Group description data | 

### Return type

[**OAIMainAPIResponse***](OAIMainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instancesInstanceKeyGroupsGroupIdGet**
```objc
-(NSURLSessionTask*) instancesInstanceKeyGroupsGroupIdGetWithInstanceKey: (NSString*) instanceKey
    groupId: (NSString*) groupId
        completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler;
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
[apiInstance instancesInstanceKeyGroupsGroupIdGetWithInstanceKey:instanceKey
              groupId:groupId
          completionHandler: ^(OAIMainAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGroupManagementApi->instancesInstanceKeyGroupsGroupIdGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **groupId** | **NSString***| Group id of the group | 

### Return type

[**OAIMainAPIResponse***](OAIMainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instancesInstanceKeyGroupsGroupIdInviteCodeGet**
```objc
-(NSURLSessionTask*) instancesInstanceKeyGroupsGroupIdInviteCodeGetWithInstanceKey: (NSString*) instanceKey
    groupId: (NSString*) groupId
        completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler;
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
[apiInstance instancesInstanceKeyGroupsGroupIdInviteCodeGetWithInstanceKey:instanceKey
              groupId:groupId
          completionHandler: ^(OAIMainAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGroupManagementApi->instancesInstanceKeyGroupsGroupIdInviteCodeGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **groupId** | **NSString***| Group id of the group | 

### Return type

[**OAIMainAPIResponse***](OAIMainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instancesInstanceKeyGroupsGroupIdLockPut**
```objc
-(NSURLSessionTask*) instancesInstanceKeyGroupsGroupIdLockPutWithInstanceKey: (NSString*) instanceKey
    locked: (NSNumber*) locked
    groupId: (NSString*) groupId
        completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler;
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
[apiInstance instancesInstanceKeyGroupsGroupIdLockPutWithInstanceKey:instanceKey
              locked:locked
              groupId:groupId
          completionHandler: ^(OAIMainAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGroupManagementApi->instancesInstanceKeyGroupsGroupIdLockPut: %@", error);
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

[**OAIMainAPIResponse***](OAIMainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instancesInstanceKeyGroupsGroupIdNamePut**
```objc
-(NSURLSessionTask*) instancesInstanceKeyGroupsGroupIdNamePutWithInstanceKey: (NSString*) instanceKey
    groupId: (NSString*) groupId
    data: (OAIStructsGroupUpdateNamePayload*) data
        completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler;
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
OAIStructsGroupUpdateNamePayload* data = [[OAIStructsGroupUpdateNamePayload alloc] init]; // Group name data

OAIGroupManagementApi*apiInstance = [[OAIGroupManagementApi alloc] init];

// Set group name.
[apiInstance instancesInstanceKeyGroupsGroupIdNamePutWithInstanceKey:instanceKey
              groupId:groupId
              data:data
          completionHandler: ^(OAIMainAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGroupManagementApi->instancesInstanceKeyGroupsGroupIdNamePut: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **groupId** | **NSString***| Group id of the group | 
 **data** | [**OAIStructsGroupUpdateNamePayload***](OAIStructsGroupUpdateNamePayload.md)| Group name data | 

### Return type

[**OAIMainAPIResponse***](OAIMainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instancesInstanceKeyGroupsGroupIdParticipantsAddPost**
```objc
-(NSURLSessionTask*) instancesInstanceKeyGroupsGroupIdParticipantsAddPostWithInstanceKey: (NSString*) instanceKey
    groupId: (NSString*) groupId
    data: (OAIStructsGroupUpdateParticipantsPayload*) data
        completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler;
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
OAIStructsGroupUpdateParticipantsPayload* data = [[OAIStructsGroupUpdateParticipantsPayload alloc] init]; // Group update payload

OAIGroupManagementApi*apiInstance = [[OAIGroupManagementApi alloc] init];

// Add participant.
[apiInstance instancesInstanceKeyGroupsGroupIdParticipantsAddPostWithInstanceKey:instanceKey
              groupId:groupId
              data:data
          completionHandler: ^(OAIMainAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGroupManagementApi->instancesInstanceKeyGroupsGroupIdParticipantsAddPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **groupId** | **NSString***| Group id of the group | 
 **data** | [**OAIStructsGroupUpdateParticipantsPayload***](OAIStructsGroupUpdateParticipantsPayload.md)| Group update payload | 

### Return type

[**OAIMainAPIResponse***](OAIMainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instancesInstanceKeyGroupsGroupIdParticipantsDemotePut**
```objc
-(NSURLSessionTask*) instancesInstanceKeyGroupsGroupIdParticipantsDemotePutWithInstanceKey: (NSString*) instanceKey
    groupId: (NSString*) groupId
    data: (OAIStructsGroupUpdateParticipantsPayload*) data
        completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler;
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
OAIStructsGroupUpdateParticipantsPayload* data = [[OAIStructsGroupUpdateParticipantsPayload alloc] init]; // Group update payload

OAIGroupManagementApi*apiInstance = [[OAIGroupManagementApi alloc] init];

// Demote participant.
[apiInstance instancesInstanceKeyGroupsGroupIdParticipantsDemotePutWithInstanceKey:instanceKey
              groupId:groupId
              data:data
          completionHandler: ^(OAIMainAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGroupManagementApi->instancesInstanceKeyGroupsGroupIdParticipantsDemotePut: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **groupId** | **NSString***| Group id of the group | 
 **data** | [**OAIStructsGroupUpdateParticipantsPayload***](OAIStructsGroupUpdateParticipantsPayload.md)| Group update payload | 

### Return type

[**OAIMainAPIResponse***](OAIMainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instancesInstanceKeyGroupsGroupIdParticipantsPromotePut**
```objc
-(NSURLSessionTask*) instancesInstanceKeyGroupsGroupIdParticipantsPromotePutWithInstanceKey: (NSString*) instanceKey
    groupId: (NSString*) groupId
    data: (OAIStructsGroupUpdateParticipantsPayload*) data
        completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler;
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
OAIStructsGroupUpdateParticipantsPayload* data = [[OAIStructsGroupUpdateParticipantsPayload alloc] init]; // Group update payload

OAIGroupManagementApi*apiInstance = [[OAIGroupManagementApi alloc] init];

// Promote participant.
[apiInstance instancesInstanceKeyGroupsGroupIdParticipantsPromotePutWithInstanceKey:instanceKey
              groupId:groupId
              data:data
          completionHandler: ^(OAIMainAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGroupManagementApi->instancesInstanceKeyGroupsGroupIdParticipantsPromotePut: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **groupId** | **NSString***| Group id of the group | 
 **data** | [**OAIStructsGroupUpdateParticipantsPayload***](OAIStructsGroupUpdateParticipantsPayload.md)| Group update payload | 

### Return type

[**OAIMainAPIResponse***](OAIMainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instancesInstanceKeyGroupsGroupIdParticipantsRemoveDelete**
```objc
-(NSURLSessionTask*) instancesInstanceKeyGroupsGroupIdParticipantsRemoveDeleteWithInstanceKey: (NSString*) instanceKey
    groupId: (NSString*) groupId
    data: (OAIStructsGroupUpdateParticipantsPayload*) data
        completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler;
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
OAIStructsGroupUpdateParticipantsPayload* data = [[OAIStructsGroupUpdateParticipantsPayload alloc] init]; // Group update payload

OAIGroupManagementApi*apiInstance = [[OAIGroupManagementApi alloc] init];

// Remove participant.
[apiInstance instancesInstanceKeyGroupsGroupIdParticipantsRemoveDeleteWithInstanceKey:instanceKey
              groupId:groupId
              data:data
          completionHandler: ^(OAIMainAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGroupManagementApi->instancesInstanceKeyGroupsGroupIdParticipantsRemoveDelete: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **groupId** | **NSString***| Group id of the group | 
 **data** | [**OAIStructsGroupUpdateParticipantsPayload***](OAIStructsGroupUpdateParticipantsPayload.md)| Group update payload | 

### Return type

[**OAIMainAPIResponse***](OAIMainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instancesInstanceKeyGroupsGroupIdProfilePicPut**
```objc
-(NSURLSessionTask*) instancesInstanceKeyGroupsGroupIdProfilePicPutWithInstanceKey: (NSString*) instanceKey
    groupId: (NSString*) groupId
    instancesInstanceKeyGroupsGroupIdProfilePicPutRequest: (OAIInstancesInstanceKeyGroupsGroupIdProfilePicPutRequest*) instancesInstanceKeyGroupsGroupIdProfilePicPutRequest
        completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler;
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
OAIInstancesInstanceKeyGroupsGroupIdProfilePicPutRequest* instancesInstanceKeyGroupsGroupIdProfilePicPutRequest = [[OAIInstancesInstanceKeyGroupsGroupIdProfilePicPutRequest alloc] init]; // 

OAIGroupManagementApi*apiInstance = [[OAIGroupManagementApi alloc] init];

// Set group picture.
[apiInstance instancesInstanceKeyGroupsGroupIdProfilePicPutWithInstanceKey:instanceKey
              groupId:groupId
              instancesInstanceKeyGroupsGroupIdProfilePicPutRequest:instancesInstanceKeyGroupsGroupIdProfilePicPutRequest
          completionHandler: ^(OAIMainAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGroupManagementApi->instancesInstanceKeyGroupsGroupIdProfilePicPut: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **groupId** | **NSString***| Group id of the group | 
 **instancesInstanceKeyGroupsGroupIdProfilePicPutRequest** | [**OAIInstancesInstanceKeyGroupsGroupIdProfilePicPutRequest***](OAIInstancesInstanceKeyGroupsGroupIdProfilePicPutRequest.md)|  | 

### Return type

[**OAIMainAPIResponse***](OAIMainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instancesInstanceKeyGroupsInviteInfoGet**
```objc
-(NSURLSessionTask*) instancesInstanceKeyGroupsInviteInfoGetWithInstanceKey: (NSString*) instanceKey
    inviteLink: (NSString*) inviteLink
        completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler;
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
[apiInstance instancesInstanceKeyGroupsInviteInfoGetWithInstanceKey:instanceKey
              inviteLink:inviteLink
          completionHandler: ^(OAIMainAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGroupManagementApi->instancesInstanceKeyGroupsInviteInfoGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **inviteLink** | **NSString***| The invite link to check | 

### Return type

[**OAIMainAPIResponse***](OAIMainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

