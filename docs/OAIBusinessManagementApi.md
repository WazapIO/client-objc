# OAIBusinessManagementApi

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**instancesInstanceKeyBusinessCatalogGet**](OAIBusinessManagementApi.md#instancesinstancekeybusinesscatalogget) | **GET** /instances/{instance_key}/business/catalog | Fetches the catlog.


# **instancesInstanceKeyBusinessCatalogGet**
```objc
-(NSURLSessionTask*) instancesInstanceKeyBusinessCatalogGetWithInstanceKey: (NSString*) instanceKey
        completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;
```

Fetches the catlog.

Gets list of all products registered by you.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* instanceKey = @"instanceKey_example"; // Instance key

OAIBusinessManagementApi*apiInstance = [[OAIBusinessManagementApi alloc] init];

// Fetches the catlog.
[apiInstance instancesInstanceKeyBusinessCatalogGetWithInstanceKey:instanceKey
          completionHandler: ^(OAIAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIBusinessManagementApi->instancesInstanceKeyBusinessCatalogGet: %@", error);
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

