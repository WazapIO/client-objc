# OAIMessageSendingApi

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**instancesInstanceKeyBusinessCatalogGet**](OAIMessageSendingApi.md#instancesinstancekeybusinesscatalogget) | **GET** /instances/{instance_key}/business/catalog | Fetches the catlog.
[**instancesInstanceKeySendAudioPost**](OAIMessageSendingApi.md#instancesinstancekeysendaudiopost) | **POST** /instances/{instance_key}/send/audio | Send raw audio.
[**instancesInstanceKeySendButtonMediaPost**](OAIMessageSendingApi.md#instancesinstancekeysendbuttonmediapost) | **POST** /instances/{instance_key}/send/button-media | Send a button message with a media header.
[**instancesInstanceKeySendButtonsPost**](OAIMessageSendingApi.md#instancesinstancekeysendbuttonspost) | **POST** /instances/{instance_key}/send/buttons | Send a button message.
[**instancesInstanceKeySendContactPost**](OAIMessageSendingApi.md#instancesinstancekeysendcontactpost) | **POST** /instances/{instance_key}/send/contact | Send a contact message.
[**instancesInstanceKeySendDocumentPost**](OAIMessageSendingApi.md#instancesinstancekeysenddocumentpost) | **POST** /instances/{instance_key}/send/document | Send raw document.
[**instancesInstanceKeySendImagePost**](OAIMessageSendingApi.md#instancesinstancekeysendimagepost) | **POST** /instances/{instance_key}/send/image | Send raw image.
[**instancesInstanceKeySendListPost**](OAIMessageSendingApi.md#instancesinstancekeysendlistpost) | **POST** /instances/{instance_key}/send/list | Send a List message.
[**instancesInstanceKeySendLocationPost**](OAIMessageSendingApi.md#instancesinstancekeysendlocationpost) | **POST** /instances/{instance_key}/send/location | Send a location message.
[**instancesInstanceKeySendMediaPost**](OAIMessageSendingApi.md#instancesinstancekeysendmediapost) | **POST** /instances/{instance_key}/send/media | Send a media message.
[**instancesInstanceKeySendPollPost**](OAIMessageSendingApi.md#instancesinstancekeysendpollpost) | **POST** /instances/{instance_key}/send/poll | Send a Poll message with media.
[**instancesInstanceKeySendTemplateMediaPost**](OAIMessageSendingApi.md#instancesinstancekeysendtemplatemediapost) | **POST** /instances/{instance_key}/send/template-media | Send a template message with media.
[**instancesInstanceKeySendTemplatePost**](OAIMessageSendingApi.md#instancesinstancekeysendtemplatepost) | **POST** /instances/{instance_key}/send/template | Send a template message.
[**instancesInstanceKeySendTextPost**](OAIMessageSendingApi.md#instancesinstancekeysendtextpost) | **POST** /instances/{instance_key}/send/text | Send a text message.
[**instancesInstanceKeySendUploadPost**](OAIMessageSendingApi.md#instancesinstancekeysenduploadpost) | **POST** /instances/{instance_key}/send/upload | Upload media.
[**instancesInstanceKeySendVideoPost**](OAIMessageSendingApi.md#instancesinstancekeysendvideopost) | **POST** /instances/{instance_key}/send/video | Send raw video.


# **instancesInstanceKeyBusinessCatalogGet**
```objc
-(NSURLSessionTask*) instancesInstanceKeyBusinessCatalogGetWithInstanceKey: (NSString*) instanceKey
        completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler;
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

OAIMessageSendingApi*apiInstance = [[OAIMessageSendingApi alloc] init];

// Fetches the catlog.
[apiInstance instancesInstanceKeyBusinessCatalogGetWithInstanceKey:instanceKey
          completionHandler: ^(OAIMainAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMessageSendingApi->instancesInstanceKeyBusinessCatalogGet: %@", error);
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

# **instancesInstanceKeySendAudioPost**
```objc
-(NSURLSessionTask*) instancesInstanceKeySendAudioPostWithInstanceKey: (NSString*) instanceKey
    to: (NSString*) to
    instancesInstanceKeySendAudioPostRequest: (OAIInstancesInstanceKeySendAudioPostRequest*) instancesInstanceKeySendAudioPostRequest
    caption: (NSString*) caption
        completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler;
```

Send raw audio.

Sends a audio message by uploading to the WhatsApp servers every time. This is not recommended for bulk sending.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* instanceKey = @"instanceKey_example"; // Instance key
NSString* to = @"to_example"; // The recipient's number
OAIInstancesInstanceKeySendAudioPostRequest* instancesInstanceKeySendAudioPostRequest = [[OAIInstancesInstanceKeySendAudioPostRequest alloc] init]; // 
NSString* caption = @"caption_example"; // Attached caption (optional)

OAIMessageSendingApi*apiInstance = [[OAIMessageSendingApi alloc] init];

// Send raw audio.
[apiInstance instancesInstanceKeySendAudioPostWithInstanceKey:instanceKey
              to:to
              instancesInstanceKeySendAudioPostRequest:instancesInstanceKeySendAudioPostRequest
              caption:caption
          completionHandler: ^(OAIMainAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMessageSendingApi->instancesInstanceKeySendAudioPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **to** | **NSString***| The recipient&#39;s number | 
 **instancesInstanceKeySendAudioPostRequest** | [**OAIInstancesInstanceKeySendAudioPostRequest***](OAIInstancesInstanceKeySendAudioPostRequest.md)|  | 
 **caption** | **NSString***| Attached caption | [optional] 

### Return type

[**OAIMainAPIResponse***](OAIMainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instancesInstanceKeySendButtonMediaPost**
```objc
-(NSURLSessionTask*) instancesInstanceKeySendButtonMediaPostWithInstanceKey: (NSString*) instanceKey
    data: (OAIStructsButtonMessageWithMediaPayload*) data
        completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler;
```

Send a button message with a media header.

Sends an interactive button message to the given user. This message also has media header with it. Make sure that all the button ids are unique

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* instanceKey = @"instanceKey_example"; // Instance key
OAIStructsButtonMessageWithMediaPayload* data = [[OAIStructsButtonMessageWithMediaPayload alloc] init]; // Message data

OAIMessageSendingApi*apiInstance = [[OAIMessageSendingApi alloc] init];

// Send a button message with a media header.
[apiInstance instancesInstanceKeySendButtonMediaPostWithInstanceKey:instanceKey
              data:data
          completionHandler: ^(OAIMainAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMessageSendingApi->instancesInstanceKeySendButtonMediaPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **data** | [**OAIStructsButtonMessageWithMediaPayload***](OAIStructsButtonMessageWithMediaPayload.md)| Message data | 

### Return type

[**OAIMainAPIResponse***](OAIMainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instancesInstanceKeySendButtonsPost**
```objc
-(NSURLSessionTask*) instancesInstanceKeySendButtonsPostWithInstanceKey: (NSString*) instanceKey
    data: (OAIStructsButtonMessagePayload*) data
        completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler;
```

Send a button message.

Sends an interactive button message to the given user. Make sure that all the button ids are unique

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* instanceKey = @"instanceKey_example"; // Instance key
OAIStructsButtonMessagePayload* data = [[OAIStructsButtonMessagePayload alloc] init]; // Message data

OAIMessageSendingApi*apiInstance = [[OAIMessageSendingApi alloc] init];

// Send a button message.
[apiInstance instancesInstanceKeySendButtonsPostWithInstanceKey:instanceKey
              data:data
          completionHandler: ^(OAIMainAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMessageSendingApi->instancesInstanceKeySendButtonsPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **data** | [**OAIStructsButtonMessagePayload***](OAIStructsButtonMessagePayload.md)| Message data | 

### Return type

[**OAIMainAPIResponse***](OAIMainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instancesInstanceKeySendContactPost**
```objc
-(NSURLSessionTask*) instancesInstanceKeySendContactPostWithInstanceKey: (NSString*) instanceKey
    data: (OAIStructsContactMessagePayload*) data
        completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler;
```

Send a contact message.

Sends a contact (vcard) message to the given user.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* instanceKey = @"instanceKey_example"; // Instance key
OAIStructsContactMessagePayload* data = [[OAIStructsContactMessagePayload alloc] init]; // Message data

OAIMessageSendingApi*apiInstance = [[OAIMessageSendingApi alloc] init];

// Send a contact message.
[apiInstance instancesInstanceKeySendContactPostWithInstanceKey:instanceKey
              data:data
          completionHandler: ^(OAIMainAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMessageSendingApi->instancesInstanceKeySendContactPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **data** | [**OAIStructsContactMessagePayload***](OAIStructsContactMessagePayload.md)| Message data | 

### Return type

[**OAIMainAPIResponse***](OAIMainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instancesInstanceKeySendDocumentPost**
```objc
-(NSURLSessionTask*) instancesInstanceKeySendDocumentPostWithInstanceKey: (NSString*) instanceKey
    to: (NSString*) to
    instancesInstanceKeySendDocumentPostRequest: (OAIInstancesInstanceKeySendDocumentPostRequest*) instancesInstanceKeySendDocumentPostRequest
    caption: (NSString*) caption
        completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler;
```

Send raw document.

Sends a document message by uploading to the WhatsApp servers every time. This is not recommended for bulk sending.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* instanceKey = @"instanceKey_example"; // Instance key
NSString* to = @"to_example"; // The recipient's number
OAIInstancesInstanceKeySendDocumentPostRequest* instancesInstanceKeySendDocumentPostRequest = [[OAIInstancesInstanceKeySendDocumentPostRequest alloc] init]; // 
NSString* caption = @"caption_example"; // Attached caption (optional)

OAIMessageSendingApi*apiInstance = [[OAIMessageSendingApi alloc] init];

// Send raw document.
[apiInstance instancesInstanceKeySendDocumentPostWithInstanceKey:instanceKey
              to:to
              instancesInstanceKeySendDocumentPostRequest:instancesInstanceKeySendDocumentPostRequest
              caption:caption
          completionHandler: ^(OAIMainAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMessageSendingApi->instancesInstanceKeySendDocumentPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **to** | **NSString***| The recipient&#39;s number | 
 **instancesInstanceKeySendDocumentPostRequest** | [**OAIInstancesInstanceKeySendDocumentPostRequest***](OAIInstancesInstanceKeySendDocumentPostRequest.md)|  | 
 **caption** | **NSString***| Attached caption | [optional] 

### Return type

[**OAIMainAPIResponse***](OAIMainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instancesInstanceKeySendImagePost**
```objc
-(NSURLSessionTask*) instancesInstanceKeySendImagePostWithInstanceKey: (NSString*) instanceKey
    to: (NSString*) to
    instancesInstanceKeySendImagePostRequest: (OAIInstancesInstanceKeySendImagePostRequest*) instancesInstanceKeySendImagePostRequest
    caption: (NSString*) caption
        completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler;
```

Send raw image.

Sends a image message by uploading to the WhatsApp servers every time. This is not recommended for bulk sending.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* instanceKey = @"instanceKey_example"; // Instance key
NSString* to = @"to_example"; // The recipient's number
OAIInstancesInstanceKeySendImagePostRequest* instancesInstanceKeySendImagePostRequest = [[OAIInstancesInstanceKeySendImagePostRequest alloc] init]; // 
NSString* caption = @"caption_example"; // Attached caption (optional)

OAIMessageSendingApi*apiInstance = [[OAIMessageSendingApi alloc] init];

// Send raw image.
[apiInstance instancesInstanceKeySendImagePostWithInstanceKey:instanceKey
              to:to
              instancesInstanceKeySendImagePostRequest:instancesInstanceKeySendImagePostRequest
              caption:caption
          completionHandler: ^(OAIMainAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMessageSendingApi->instancesInstanceKeySendImagePost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **to** | **NSString***| The recipient&#39;s number | 
 **instancesInstanceKeySendImagePostRequest** | [**OAIInstancesInstanceKeySendImagePostRequest***](OAIInstancesInstanceKeySendImagePostRequest.md)|  | 
 **caption** | **NSString***| Attached caption | [optional] 

### Return type

[**OAIMainAPIResponse***](OAIMainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instancesInstanceKeySendListPost**
```objc
-(NSURLSessionTask*) instancesInstanceKeySendListPostWithInstanceKey: (NSString*) instanceKey
    data: (OAIStructsListMessagePayload*) data
        completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler;
```

Send a List message.

Sends an interactive List message to the given user.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* instanceKey = @"instanceKey_example"; // Instance key
OAIStructsListMessagePayload* data = [[OAIStructsListMessagePayload alloc] init]; // Message data

OAIMessageSendingApi*apiInstance = [[OAIMessageSendingApi alloc] init];

// Send a List message.
[apiInstance instancesInstanceKeySendListPostWithInstanceKey:instanceKey
              data:data
          completionHandler: ^(OAIMainAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMessageSendingApi->instancesInstanceKeySendListPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **data** | [**OAIStructsListMessagePayload***](OAIStructsListMessagePayload.md)| Message data | 

### Return type

[**OAIMainAPIResponse***](OAIMainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instancesInstanceKeySendLocationPost**
```objc
-(NSURLSessionTask*) instancesInstanceKeySendLocationPostWithInstanceKey: (NSString*) instanceKey
    data: (OAIStructsLocationMessagePayload*) data
        completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler;
```

Send a location message.

Sends a location message to the given user. This is static location and does not update Note: The Address and Url fields are optional

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* instanceKey = @"instanceKey_example"; // Instance key
OAIStructsLocationMessagePayload* data = [[OAIStructsLocationMessagePayload alloc] init]; // Message data

OAIMessageSendingApi*apiInstance = [[OAIMessageSendingApi alloc] init];

// Send a location message.
[apiInstance instancesInstanceKeySendLocationPostWithInstanceKey:instanceKey
              data:data
          completionHandler: ^(OAIMainAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMessageSendingApi->instancesInstanceKeySendLocationPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **data** | [**OAIStructsLocationMessagePayload***](OAIStructsLocationMessagePayload.md)| Message data | 

### Return type

[**OAIMainAPIResponse***](OAIMainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instancesInstanceKeySendMediaPost**
```objc
-(NSURLSessionTask*) instancesInstanceKeySendMediaPostWithInstanceKey: (NSString*) instanceKey
    data: (OAIStructsSendMediaPayload*) data
        completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler;
```

Send a media message.

Sends a media message to the given user.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* instanceKey = @"instanceKey_example"; // Instance key
OAIStructsSendMediaPayload* data = [[OAIStructsSendMediaPayload alloc] init]; // Message data

OAIMessageSendingApi*apiInstance = [[OAIMessageSendingApi alloc] init];

// Send a media message.
[apiInstance instancesInstanceKeySendMediaPostWithInstanceKey:instanceKey
              data:data
          completionHandler: ^(OAIMainAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMessageSendingApi->instancesInstanceKeySendMediaPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **data** | [**OAIStructsSendMediaPayload***](OAIStructsSendMediaPayload.md)| Message data | 

### Return type

[**OAIMainAPIResponse***](OAIMainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instancesInstanceKeySendPollPost**
```objc
-(NSURLSessionTask*) instancesInstanceKeySendPollPostWithInstanceKey: (NSString*) instanceKey
    data: (OAIStructsPollMessagePayload*) data
        completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler;
```

Send a Poll message with media.

Sends an interactive poll message with a media header to the given user. The poll message is a new feature that is currently in beta.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* instanceKey = @"instanceKey_example"; // Instance key
OAIStructsPollMessagePayload* data = [[OAIStructsPollMessagePayload alloc] init]; // Message data

OAIMessageSendingApi*apiInstance = [[OAIMessageSendingApi alloc] init];

// Send a Poll message with media.
[apiInstance instancesInstanceKeySendPollPostWithInstanceKey:instanceKey
              data:data
          completionHandler: ^(OAIMainAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMessageSendingApi->instancesInstanceKeySendPollPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **data** | [**OAIStructsPollMessagePayload***](OAIStructsPollMessagePayload.md)| Message data | 

### Return type

[**OAIMainAPIResponse***](OAIMainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instancesInstanceKeySendTemplateMediaPost**
```objc
-(NSURLSessionTask*) instancesInstanceKeySendTemplateMediaPostWithInstanceKey: (NSString*) instanceKey
    data: (OAIStructsTemplateButtonWithMediaPayload*) data
        completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler;
```

Send a template message with media.

Sends an interactive template message with a media header to the given user. Note: The valid button types are \"replyButton\", \"urlButton\", \"callButton\"

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* instanceKey = @"instanceKey_example"; // Instance key
OAIStructsTemplateButtonWithMediaPayload* data = [[OAIStructsTemplateButtonWithMediaPayload alloc] init]; // Message data

OAIMessageSendingApi*apiInstance = [[OAIMessageSendingApi alloc] init];

// Send a template message with media.
[apiInstance instancesInstanceKeySendTemplateMediaPostWithInstanceKey:instanceKey
              data:data
          completionHandler: ^(OAIMainAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMessageSendingApi->instancesInstanceKeySendTemplateMediaPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **data** | [**OAIStructsTemplateButtonWithMediaPayload***](OAIStructsTemplateButtonWithMediaPayload.md)| Message data | 

### Return type

[**OAIMainAPIResponse***](OAIMainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instancesInstanceKeySendTemplatePost**
```objc
-(NSURLSessionTask*) instancesInstanceKeySendTemplatePostWithInstanceKey: (NSString*) instanceKey
    data: (OAIStructsTemplateButtonPayload*) data
        completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler;
```

Send a template message.

Sends an interactive template message to the given user. Note: The valid button types are \"replyButton\", \"urlButton\", \"callButton\"

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* instanceKey = @"instanceKey_example"; // Instance key
OAIStructsTemplateButtonPayload* data = [[OAIStructsTemplateButtonPayload alloc] init]; // Message data

OAIMessageSendingApi*apiInstance = [[OAIMessageSendingApi alloc] init];

// Send a template message.
[apiInstance instancesInstanceKeySendTemplatePostWithInstanceKey:instanceKey
              data:data
          completionHandler: ^(OAIMainAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMessageSendingApi->instancesInstanceKeySendTemplatePost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **data** | [**OAIStructsTemplateButtonPayload***](OAIStructsTemplateButtonPayload.md)| Message data | 

### Return type

[**OAIMainAPIResponse***](OAIMainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instancesInstanceKeySendTextPost**
```objc
-(NSURLSessionTask*) instancesInstanceKeySendTextPostWithInstanceKey: (NSString*) instanceKey
    data: (OAIStructsTextMessage*) data
        completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler;
```

Send a text message.

Sends a text message to the given user.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* instanceKey = @"instanceKey_example"; // Instance key
OAIStructsTextMessage* data = [[OAIStructsTextMessage alloc] init]; // Message data

OAIMessageSendingApi*apiInstance = [[OAIMessageSendingApi alloc] init];

// Send a text message.
[apiInstance instancesInstanceKeySendTextPostWithInstanceKey:instanceKey
              data:data
          completionHandler: ^(OAIMainAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMessageSendingApi->instancesInstanceKeySendTextPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **data** | [**OAIStructsTextMessage***](OAIStructsTextMessage.md)| Message data | 

### Return type

[**OAIMainAPIResponse***](OAIMainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instancesInstanceKeySendUploadPost**
```objc
-(NSURLSessionTask*) instancesInstanceKeySendUploadPostWithInstanceKey: (NSString*) instanceKey
    type: (NSString*) type
    instancesInstanceKeySendUploadPostRequest: (OAIInstancesInstanceKeySendUploadPostRequest*) instancesInstanceKeySendUploadPostRequest
        completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler;
```

Upload media.

Uploads media to WhatsApp servers and returns the media keys. Store the returned media keys, as you will need them to send media messages

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* instanceKey = @"instanceKey_example"; // Instance key
NSString* type = @"type_example"; // Media type
OAIInstancesInstanceKeySendUploadPostRequest* instancesInstanceKeySendUploadPostRequest = [[OAIInstancesInstanceKeySendUploadPostRequest alloc] init]; // 

OAIMessageSendingApi*apiInstance = [[OAIMessageSendingApi alloc] init];

// Upload media.
[apiInstance instancesInstanceKeySendUploadPostWithInstanceKey:instanceKey
              type:type
              instancesInstanceKeySendUploadPostRequest:instancesInstanceKeySendUploadPostRequest
          completionHandler: ^(OAIMainAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMessageSendingApi->instancesInstanceKeySendUploadPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **type** | **NSString***| Media type | 
 **instancesInstanceKeySendUploadPostRequest** | [**OAIInstancesInstanceKeySendUploadPostRequest***](OAIInstancesInstanceKeySendUploadPostRequest.md)|  | 

### Return type

[**OAIMainAPIResponse***](OAIMainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instancesInstanceKeySendVideoPost**
```objc
-(NSURLSessionTask*) instancesInstanceKeySendVideoPostWithInstanceKey: (NSString*) instanceKey
    to: (NSString*) to
    instancesInstanceKeySendVideoPostRequest: (OAIInstancesInstanceKeySendVideoPostRequest*) instancesInstanceKeySendVideoPostRequest
    caption: (NSString*) caption
        completionHandler: (void (^)(OAIMainAPIResponse* output, NSError* error)) handler;
```

Send raw video.

Sends a video message by uploading to the WhatsApp servers every time. This is not recommended for bulk sending.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* instanceKey = @"instanceKey_example"; // Instance key
NSString* to = @"to_example"; // The recipient's number
OAIInstancesInstanceKeySendVideoPostRequest* instancesInstanceKeySendVideoPostRequest = [[OAIInstancesInstanceKeySendVideoPostRequest alloc] init]; // 
NSString* caption = @"caption_example"; // Attached caption (optional)

OAIMessageSendingApi*apiInstance = [[OAIMessageSendingApi alloc] init];

// Send raw video.
[apiInstance instancesInstanceKeySendVideoPostWithInstanceKey:instanceKey
              to:to
              instancesInstanceKeySendVideoPostRequest:instancesInstanceKeySendVideoPostRequest
              caption:caption
          completionHandler: ^(OAIMainAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMessageSendingApi->instancesInstanceKeySendVideoPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **to** | **NSString***| The recipient&#39;s number | 
 **instancesInstanceKeySendVideoPostRequest** | [**OAIInstancesInstanceKeySendVideoPostRequest***](OAIInstancesInstanceKeySendVideoPostRequest.md)|  | 
 **caption** | **NSString***| Attached caption | [optional] 

### Return type

[**OAIMainAPIResponse***](OAIMainAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

