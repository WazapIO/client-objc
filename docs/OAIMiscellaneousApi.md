# OAIMiscellaneousApi

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**instancesInstanceKeyMiscProfilePicGet**](OAIMiscellaneousApi.md#instancesinstancekeymiscprofilepicget) | **GET** /instances/{instance_key}/misc/profile-pic | Get profile pic.
[**instancesInstanceKeyMiscUserInfoPost**](OAIMiscellaneousApi.md#instancesinstancekeymiscuserinfopost) | **POST** /instances/{instance_key}/misc/user-info | Fetches the users info.


# **instancesInstanceKeyMiscProfilePicGet**
```objc
-(NSURLSessionTask*) instancesInstanceKeyMiscProfilePicGetWithInstanceKey: (NSString*) instanceKey
    jid: (NSString*) jid
        completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler;
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
[apiInstance instancesInstanceKeyMiscProfilePicGetWithInstanceKey:instanceKey
              jid:jid
          completionHandler: ^(OAIMainAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMiscellaneousApi->instancesInstanceKeyMiscProfilePicGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **jid** | **NSString***| JID | 

### Return type

[**OAIMainAPIResponse***](OAIMainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instancesInstanceKeyMiscUserInfoPost**
```objc
-(NSURLSessionTask*) instancesInstanceKeyMiscUserInfoPostWithInstanceKey: (NSString*) instanceKey
    data: (OAIStructsUserInfoPayload*) data
        completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler;
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
OAIStructsUserInfoPayload* data = [[OAIStructsUserInfoPayload alloc] init]; // Data

OAIMiscellaneousApi*apiInstance = [[OAIMiscellaneousApi alloc] init];

// Fetches the users info.
[apiInstance instancesInstanceKeyMiscUserInfoPostWithInstanceKey:instanceKey
              data:data
          completionHandler: ^(OAIMainAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMiscellaneousApi->instancesInstanceKeyMiscUserInfoPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **data** | [**OAIStructsUserInfoPayload***](OAIStructsUserInfoPayload.md)| Data | 

### Return type

[**OAIMainAPIResponse***](OAIMainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

