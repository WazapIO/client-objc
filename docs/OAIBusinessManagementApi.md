# OAIBusinessManagementApi

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fetchCatlog**](OAIBusinessManagementApi.md#fetchcatlog) | **GET** /instances/{instance_key}/business/catalog | Fetches the catlog.
[**sendPaymentRequest**](OAIBusinessManagementApi.md#sendpaymentrequest) | **POST** /instances/{instance_key}/business/payment-request | Send a payment request.


# **fetchCatlog**
```objc
-(NSURLSessionTask*) fetchCatlogWithInstanceKey: (NSString*) instanceKey
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
[apiInstance fetchCatlogWithInstanceKey:instanceKey
          completionHandler: ^(OAIAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIBusinessManagementApi->fetchCatlog: %@", error);
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

# **sendPaymentRequest**
```objc
-(NSURLSessionTask*) sendPaymentRequestWithInstanceKey: (NSString*) instanceKey
    data: (OAIPaymentRequestPayload*) data
        completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;
```

Send a payment request.

Sends an payment request to a user. Feature is still in beta.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* instanceKey = @"instanceKey_example"; // Instance key
OAIPaymentRequestPayload* data = [[OAIPaymentRequestPayload alloc] init]; // Data

OAIBusinessManagementApi*apiInstance = [[OAIBusinessManagementApi alloc] init];

// Send a payment request.
[apiInstance sendPaymentRequestWithInstanceKey:instanceKey
              data:data
          completionHandler: ^(OAIAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIBusinessManagementApi->sendPaymentRequest: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **data** | [**OAIPaymentRequestPayload***](OAIPaymentRequestPayload.md)| Data | 

### Return type

[**OAIAPIResponse***](OAIAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

