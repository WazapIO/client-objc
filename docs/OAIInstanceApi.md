# OAIInstanceApi

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**instancesCreateGet**](OAIInstanceApi.md#instancescreateget) | **GET** /instances/create | Creates a new instance key.
[**instancesInstanceKeyContactsGet**](OAIInstanceApi.md#instancesinstancekeycontactsget) | **GET** /instances/{instance_key}/contacts | Get contacts.
[**instancesInstanceKeyDeleteDelete**](OAIInstanceApi.md#instancesinstancekeydeletedelete) | **DELETE** /instances/{instance_key}/delete | Delete Instance.
[**instancesInstanceKeyGet**](OAIInstanceApi.md#instancesinstancekeyget) | **GET** /instances/{instance_key}/ | Get Instance.
[**instancesInstanceKeyLogoutDelete**](OAIInstanceApi.md#instancesinstancekeylogoutdelete) | **DELETE** /instances/{instance_key}/logout | Logout Instance.
[**instancesInstanceKeyQrcodeGet**](OAIInstanceApi.md#instancesinstancekeyqrcodeget) | **GET** /instances/{instance_key}/qrcode | Get QrCode.
[**instancesInstanceKeyWebhookPut**](OAIInstanceApi.md#instancesinstancekeywebhookput) | **PUT** /instances/{instance_key}/webhook | Change Webhook url.
[**instancesListGet**](OAIInstanceApi.md#instanceslistget) | **GET** /instances/list | Get all instances.


# **instancesCreateGet**
```objc
-(NSURLSessionTask*) instancesCreateGetWithInstanceKey: (NSString*) instanceKey
        completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler;
```

Creates a new instance key.

This endpoint is used to create a new WhatsApp Web instance.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* instanceKey = @"instanceKey_example"; // Insert instance key if you want to provide custom key (optional)

OAIInstanceApi*apiInstance = [[OAIInstanceApi alloc] init];

// Creates a new instance key.
[apiInstance instancesCreateGetWithInstanceKey:instanceKey
          completionHandler: ^(OAIMainAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInstanceApi->instancesCreateGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Insert instance key if you want to provide custom key | [optional] 

### Return type

[**OAIMainAPIResponse***](OAIMainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instancesInstanceKeyContactsGet**
```objc
-(NSURLSessionTask*) instancesInstanceKeyContactsGetWithInstanceKey: (NSString*) instanceKey
        completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler;
```

Get contacts.

Fetches the list of contacts in the instance.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* instanceKey = @"instanceKey_example"; // Instance key

OAIInstanceApi*apiInstance = [[OAIInstanceApi alloc] init];

// Get contacts.
[apiInstance instancesInstanceKeyContactsGetWithInstanceKey:instanceKey
          completionHandler: ^(OAIMainAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInstanceApi->instancesInstanceKeyContactsGet: %@", error);
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

# **instancesInstanceKeyDeleteDelete**
```objc
-(NSURLSessionTask*) instancesInstanceKeyDeleteDeleteWithInstanceKey: (NSString*) instanceKey
        completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler;
```

Delete Instance.

Deletes the instance with the provided key.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* instanceKey = @"instanceKey_example"; // Instance key

OAIInstanceApi*apiInstance = [[OAIInstanceApi alloc] init];

// Delete Instance.
[apiInstance instancesInstanceKeyDeleteDeleteWithInstanceKey:instanceKey
          completionHandler: ^(OAIMainAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInstanceApi->instancesInstanceKeyDeleteDelete: %@", error);
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

# **instancesInstanceKeyGet**
```objc
-(NSURLSessionTask*) instancesInstanceKeyGetWithInstanceKey: (NSString*) instanceKey
        completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler;
```

Get Instance.

Returns the instance data of single instance with connection status.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* instanceKey = @"instanceKey_example"; // Instance key

OAIInstanceApi*apiInstance = [[OAIInstanceApi alloc] init];

// Get Instance.
[apiInstance instancesInstanceKeyGetWithInstanceKey:instanceKey
          completionHandler: ^(OAIMainAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInstanceApi->instancesInstanceKeyGet: %@", error);
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

# **instancesInstanceKeyLogoutDelete**
```objc
-(NSURLSessionTask*) instancesInstanceKeyLogoutDeleteWithInstanceKey: (NSString*) instanceKey
        completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler;
```

Logout Instance.

Logouts of the instance with the provided key.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* instanceKey = @"instanceKey_example"; // Instance key

OAIInstanceApi*apiInstance = [[OAIInstanceApi alloc] init];

// Logout Instance.
[apiInstance instancesInstanceKeyLogoutDeleteWithInstanceKey:instanceKey
          completionHandler: ^(OAIMainAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInstanceApi->instancesInstanceKeyLogoutDelete: %@", error);
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

# **instancesInstanceKeyQrcodeGet**
```objc
-(NSURLSessionTask*) instancesInstanceKeyQrcodeGetWithInstanceKey: (NSString*) instanceKey
        completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler;
```

Get QrCode.

Returns the qrcode in the base64 format.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* instanceKey = @"instanceKey_example"; // Instance key

OAIInstanceApi*apiInstance = [[OAIInstanceApi alloc] init];

// Get QrCode.
[apiInstance instancesInstanceKeyQrcodeGetWithInstanceKey:instanceKey
          completionHandler: ^(OAIMainAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInstanceApi->instancesInstanceKeyQrcodeGet: %@", error);
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

# **instancesInstanceKeyWebhookPut**
```objc
-(NSURLSessionTask*) instancesInstanceKeyWebhookPutWithInstanceKey: (NSString*) instanceKey
    data: (OAIStructsWebhookPayload*) data
        completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler;
```

Change Webhook url.

Changes the webhook url of an instance.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* instanceKey = @"instanceKey_example"; // Instance key
OAIStructsWebhookPayload* data = [[OAIStructsWebhookPayload alloc] init]; // Message data

OAIInstanceApi*apiInstance = [[OAIInstanceApi alloc] init];

// Change Webhook url.
[apiInstance instancesInstanceKeyWebhookPutWithInstanceKey:instanceKey
              data:data
          completionHandler: ^(OAIMainAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInstanceApi->instancesInstanceKeyWebhookPut: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **data** | [**OAIStructsWebhookPayload***](OAIStructsWebhookPayload.md)| Message data | 

### Return type

[**OAIMainAPIResponse***](OAIMainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instancesListGet**
```objc
-(NSURLSessionTask*) instancesListGetWithCompletionHandler: 
        (void (^)(OAIMainAPIResponse* output, NSError* error)) handler;
```

Get all instances.

Fetches the list of all Instances with login status.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];



OAIInstanceApi*apiInstance = [[OAIInstanceApi alloc] init];

// Get all instances.
[apiInstance instancesListGetWithCompletionHandler: 
          ^(OAIMainAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInstanceApi->instancesListGet: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIMainAPIResponse***](OAIMainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

