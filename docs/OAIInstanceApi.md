# OAIInstanceApi

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**changeWebhookUrl**](OAIInstanceApi.md#changewebhookurl) | **PUT** /instances/{instance_key}/webhook | Change Webhook url.
[**createInstance**](OAIInstanceApi.md#createinstance) | **GET** /instances/create | Creates a new instance key.
[**deleteInstance**](OAIInstanceApi.md#deleteinstance) | **DELETE** /instances/{instance_key}/delete | Delete Instance.
[**getContacts**](OAIInstanceApi.md#getcontacts) | **GET** /instances/{instance_key}/contacts | Get contacts.
[**getInstance**](OAIInstanceApi.md#getinstance) | **GET** /instances/{instance_key}/ | Get Instance.
[**getQrCode**](OAIInstanceApi.md#getqrcode) | **GET** /instances/{instance_key}/qrcode | Get QrCode.
[**listInstances**](OAIInstanceApi.md#listinstances) | **GET** /instances/list | Get all instances.
[**logoutInstance**](OAIInstanceApi.md#logoutinstance) | **DELETE** /instances/{instance_key}/logout | Logout Instance.


# **changeWebhookUrl**
```objc
-(NSURLSessionTask*) changeWebhookUrlWithInstanceKey: (NSString*) instanceKey
    data: (OAIWebhookPayload*) data
        completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;
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
OAIWebhookPayload* data = [[OAIWebhookPayload alloc] init]; // Message data

OAIInstanceApi*apiInstance = [[OAIInstanceApi alloc] init];

// Change Webhook url.
[apiInstance changeWebhookUrlWithInstanceKey:instanceKey
              data:data
          completionHandler: ^(OAIAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInstanceApi->changeWebhookUrl: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **data** | [**OAIWebhookPayload***](OAIWebhookPayload.md)| Message data | 

### Return type

[**OAIAPIResponse***](OAIAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createInstance**
```objc
-(NSURLSessionTask*) createInstanceWithInstanceKey: (NSString*) instanceKey
        completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;
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
[apiInstance createInstanceWithInstanceKey:instanceKey
          completionHandler: ^(OAIAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInstanceApi->createInstance: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Insert instance key if you want to provide custom key | [optional] 

### Return type

[**OAIAPIResponse***](OAIAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteInstance**
```objc
-(NSURLSessionTask*) deleteInstanceWithInstanceKey: (NSString*) instanceKey
        completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;
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
[apiInstance deleteInstanceWithInstanceKey:instanceKey
          completionHandler: ^(OAIAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInstanceApi->deleteInstance: %@", error);
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

# **getContacts**
```objc
-(NSURLSessionTask*) getContactsWithInstanceKey: (NSString*) instanceKey
        completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;
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
[apiInstance getContactsWithInstanceKey:instanceKey
          completionHandler: ^(OAIAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInstanceApi->getContacts: %@", error);
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

# **getInstance**
```objc
-(NSURLSessionTask*) getInstanceWithInstanceKey: (NSString*) instanceKey
        completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;
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
[apiInstance getInstanceWithInstanceKey:instanceKey
          completionHandler: ^(OAIAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInstanceApi->getInstance: %@", error);
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

# **getQrCode**
```objc
-(NSURLSessionTask*) getQrCodeWithInstanceKey: (NSString*) instanceKey
        completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;
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
[apiInstance getQrCodeWithInstanceKey:instanceKey
          completionHandler: ^(OAIAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInstanceApi->getQrCode: %@", error);
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

# **listInstances**
```objc
-(NSURLSessionTask*) listInstancesWithCompletionHandler: 
        (void (^)(OAIAPIResponse* output, NSError* error)) handler;
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
[apiInstance listInstancesWithCompletionHandler: 
          ^(OAIAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInstanceApi->listInstances: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIAPIResponse***](OAIAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **logoutInstance**
```objc
-(NSURLSessionTask*) logoutInstanceWithInstanceKey: (NSString*) instanceKey
        completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;
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
[apiInstance logoutInstanceWithInstanceKey:instanceKey
          completionHandler: ^(OAIAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInstanceApi->logoutInstance: %@", error);
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

