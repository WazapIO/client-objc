# OAIMiscellaneousApi

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**downloadMedia**](OAIMiscellaneousApi.md#downloadmedia) | **POST** /instances/{instance_key}/misc/download | Download media
[**getProfilePic**](OAIMiscellaneousApi.md#getprofilepic) | **GET** /instances/{instance_key}/misc/profile-pic | Get profile pic.
[**getUsersInfo**](OAIMiscellaneousApi.md#getusersinfo) | **POST** /instances/{instance_key}/misc/user-info | Fetches the users info.
[**setChatPresence**](OAIMiscellaneousApi.md#setchatpresence) | **POST** /instances/{instance_key}/misc/chat-presence | Set chat presence
[**updateProfilePic**](OAIMiscellaneousApi.md#updateprofilepic) | **PUT** /instances/{instance_key}/misc/profile-pic | Update profile picture


# **downloadMedia**
```objc
-(NSURLSessionTask*) downloadMediaWithInstanceKey: (NSString*) instanceKey
    fileType: (NSString*) fileType
    data: (OAIFileUpload*) data
    responseType: (NSString*) responseType
        completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;
```

Download media

Downloads the media from the given media keys.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* instanceKey = @"instanceKey_example"; // Instance key
NSString* fileType = @"fileType_example"; // File type
OAIFileUpload* data = [[OAIFileUpload alloc] init]; // Media data
NSString* responseType = @"responseType_example"; // Response type (file, base64) (optional)

OAIMiscellaneousApi*apiInstance = [[OAIMiscellaneousApi alloc] init];

// Download media
[apiInstance downloadMediaWithInstanceKey:instanceKey
              fileType:fileType
              data:data
              responseType:responseType
          completionHandler: ^(OAIAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMiscellaneousApi->downloadMedia: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **fileType** | **NSString***| File type | 
 **data** | [**OAIFileUpload***](OAIFileUpload.md)| Media data | 
 **responseType** | **NSString***| Response type (file, base64) | [optional] 

### Return type

[**OAIAPIResponse***](OAIAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProfilePic**
```objc
-(NSURLSessionTask*) getProfilePicWithInstanceKey: (NSString*) instanceKey
    jid: (NSString*) jid
        completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;
```

Get profile pic.

Returns the profile pic of the given user.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* instanceKey = @"instanceKey_example"; // Instance key
NSString* jid = @"jid_example"; // JID

OAIMiscellaneousApi*apiInstance = [[OAIMiscellaneousApi alloc] init];

// Get profile pic.
[apiInstance getProfilePicWithInstanceKey:instanceKey
              jid:jid
          completionHandler: ^(OAIAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMiscellaneousApi->getProfilePic: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **jid** | **NSString***| JID | 

### Return type

[**OAIAPIResponse***](OAIAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUsersInfo**
```objc
-(NSURLSessionTask*) getUsersInfoWithInstanceKey: (NSString*) instanceKey
    data: (OAIUserInfoPayload*) data
        completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;
```

Fetches the users info.

Gets the user info for the given user ids. This does not checks if user is registered or not

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* instanceKey = @"instanceKey_example"; // Instance key
OAIUserInfoPayload* data = [[OAIUserInfoPayload alloc] init]; // Data

OAIMiscellaneousApi*apiInstance = [[OAIMiscellaneousApi alloc] init];

// Fetches the users info.
[apiInstance getUsersInfoWithInstanceKey:instanceKey
              data:data
          completionHandler: ^(OAIAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMiscellaneousApi->getUsersInfo: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **data** | [**OAIUserInfoPayload***](OAIUserInfoPayload.md)| Data | 

### Return type

[**OAIAPIResponse***](OAIAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setChatPresence**
```objc
-(NSURLSessionTask*) setChatPresenceWithInstanceKey: (NSString*) instanceKey
    jid: (NSString*) jid
    presence: (NSString*) presence
        completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;
```

Set chat presence

Sets the presence of the given chat. (Typing, Recording, Paused) Options: typing, recording, paused

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* instanceKey = @"instanceKey_example"; // Instance key
NSString* jid = @"jid_example"; // JID
NSString* presence = @"presence_example"; // Presence

OAIMiscellaneousApi*apiInstance = [[OAIMiscellaneousApi alloc] init];

// Set chat presence
[apiInstance setChatPresenceWithInstanceKey:instanceKey
              jid:jid
              presence:presence
          completionHandler: ^(OAIAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMiscellaneousApi->setChatPresence: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **jid** | **NSString***| JID | 
 **presence** | **NSString***| Presence | 

### Return type

[**OAIAPIResponse***](OAIAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateProfilePic**
```objc
-(NSURLSessionTask*) updateProfilePicWithInstanceKey: (NSString*) instanceKey
    updateProfilePicRequest: (OAIUpdateProfilePicRequest*) updateProfilePicRequest
        completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;
```

Update profile picture

Changes the profile pic of the current logged in user.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* instanceKey = @"instanceKey_example"; // Instance key
OAIUpdateProfilePicRequest* updateProfilePicRequest = [[OAIUpdateProfilePicRequest alloc] init]; // 

OAIMiscellaneousApi*apiInstance = [[OAIMiscellaneousApi alloc] init];

// Update profile picture
[apiInstance updateProfilePicWithInstanceKey:instanceKey
              updateProfilePicRequest:updateProfilePicRequest
          completionHandler: ^(OAIAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMiscellaneousApi->updateProfilePic: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **updateProfilePicRequest** | [**OAIUpdateProfilePicRequest***](OAIUpdateProfilePicRequest.md)|  | 

### Return type

[**OAIAPIResponse***](OAIAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

