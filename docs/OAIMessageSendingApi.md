# OAIMessageSendingApi

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sendAudio**](OAIMessageSendingApi.md#sendaudio) | **POST** /instances/{instance_key}/send/audio | Send raw audio.
[**sendButtonMessage**](OAIMessageSendingApi.md#sendbuttonmessage) | **POST** /instances/{instance_key}/send/buttons | Send a button message.
[**sendButtonWithMedia**](OAIMessageSendingApi.md#sendbuttonwithmedia) | **POST** /instances/{instance_key}/send/button-media | Send a button message with a media header.
[**sendContact**](OAIMessageSendingApi.md#sendcontact) | **POST** /instances/{instance_key}/send/contact | Send a contact message.
[**sendDocument**](OAIMessageSendingApi.md#senddocument) | **POST** /instances/{instance_key}/send/document | Send raw document.
[**sendGroupInvite**](OAIMessageSendingApi.md#sendgroupinvite) | **POST** /instances/{instance_key}/send/group-invite | Send a group invite message
[**sendImage**](OAIMessageSendingApi.md#sendimage) | **POST** /instances/{instance_key}/send/image | Send raw image.
[**sendListMessage**](OAIMessageSendingApi.md#sendlistmessage) | **POST** /instances/{instance_key}/send/list | Send a List message.
[**sendLocation**](OAIMessageSendingApi.md#sendlocation) | **POST** /instances/{instance_key}/send/location | Send a location message.
[**sendMediaMessage**](OAIMessageSendingApi.md#sendmediamessage) | **POST** /instances/{instance_key}/send/media | Send a media message.
[**sendPollMessage**](OAIMessageSendingApi.md#sendpollmessage) | **POST** /instances/{instance_key}/send/poll | Send a Poll message.
[**sendTemplate**](OAIMessageSendingApi.md#sendtemplate) | **POST** /instances/{instance_key}/send/template | Send a template message.
[**sendTemplateWithMedia**](OAIMessageSendingApi.md#sendtemplatewithmedia) | **POST** /instances/{instance_key}/send/template-media | Send a template message with media.
[**sendTextMessage**](OAIMessageSendingApi.md#sendtextmessage) | **POST** /instances/{instance_key}/send/text | Send a text message.
[**sendVideo**](OAIMessageSendingApi.md#sendvideo) | **POST** /instances/{instance_key}/send/video | Send raw video.
[**uploadMedia**](OAIMessageSendingApi.md#uploadmedia) | **POST** /instances/{instance_key}/send/upload | Upload media.
[**uploadMediaFromUrl**](OAIMessageSendingApi.md#uploadmediafromurl) | **POST** /instances/{instance_key}/send/upload-url | Upload media from url.


# **sendAudio**
```objc
-(NSURLSessionTask*) sendAudioWithInstanceKey: (NSString*) instanceKey
    to: (NSString*) to
    sendAudioRequest: (OAISendAudioRequest*) sendAudioRequest
    caption: (NSString*) caption
        completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;
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
OAISendAudioRequest* sendAudioRequest = [[OAISendAudioRequest alloc] init]; // 
NSString* caption = @"caption_example"; // Attached caption (optional)

OAIMessageSendingApi*apiInstance = [[OAIMessageSendingApi alloc] init];

// Send raw audio.
[apiInstance sendAudioWithInstanceKey:instanceKey
              to:to
              sendAudioRequest:sendAudioRequest
              caption:caption
          completionHandler: ^(OAIAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMessageSendingApi->sendAudio: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **to** | **NSString***| The recipient&#39;s number | 
 **sendAudioRequest** | [**OAISendAudioRequest***](OAISendAudioRequest.md)|  | 
 **caption** | **NSString***| Attached caption | [optional] 

### Return type

[**OAIAPIResponse***](OAIAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendButtonMessage**
```objc
-(NSURLSessionTask*) sendButtonMessageWithInstanceKey: (NSString*) instanceKey
    data: (OAIButtonMessagePayload*) data
        completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;
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
OAIButtonMessagePayload* data = [[OAIButtonMessagePayload alloc] init]; // Message data

OAIMessageSendingApi*apiInstance = [[OAIMessageSendingApi alloc] init];

// Send a button message.
[apiInstance sendButtonMessageWithInstanceKey:instanceKey
              data:data
          completionHandler: ^(OAIAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMessageSendingApi->sendButtonMessage: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **data** | [**OAIButtonMessagePayload***](OAIButtonMessagePayload.md)| Message data | 

### Return type

[**OAIAPIResponse***](OAIAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendButtonWithMedia**
```objc
-(NSURLSessionTask*) sendButtonWithMediaWithInstanceKey: (NSString*) instanceKey
    data: (OAIButtonMessageWithMediaPayload*) data
        completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;
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
OAIButtonMessageWithMediaPayload* data = [[OAIButtonMessageWithMediaPayload alloc] init]; // Message data

OAIMessageSendingApi*apiInstance = [[OAIMessageSendingApi alloc] init];

// Send a button message with a media header.
[apiInstance sendButtonWithMediaWithInstanceKey:instanceKey
              data:data
          completionHandler: ^(OAIAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMessageSendingApi->sendButtonWithMedia: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **data** | [**OAIButtonMessageWithMediaPayload***](OAIButtonMessageWithMediaPayload.md)| Message data | 

### Return type

[**OAIAPIResponse***](OAIAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendContact**
```objc
-(NSURLSessionTask*) sendContactWithInstanceKey: (NSString*) instanceKey
    data: (OAIContactMessagePayload*) data
        completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;
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
OAIContactMessagePayload* data = [[OAIContactMessagePayload alloc] init]; // Message data

OAIMessageSendingApi*apiInstance = [[OAIMessageSendingApi alloc] init];

// Send a contact message.
[apiInstance sendContactWithInstanceKey:instanceKey
              data:data
          completionHandler: ^(OAIAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMessageSendingApi->sendContact: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **data** | [**OAIContactMessagePayload***](OAIContactMessagePayload.md)| Message data | 

### Return type

[**OAIAPIResponse***](OAIAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendDocument**
```objc
-(NSURLSessionTask*) sendDocumentWithInstanceKey: (NSString*) instanceKey
    to: (NSString*) to
    sendDocumentRequest: (OAISendDocumentRequest*) sendDocumentRequest
    caption: (NSString*) caption
        completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;
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
OAISendDocumentRequest* sendDocumentRequest = [[OAISendDocumentRequest alloc] init]; // 
NSString* caption = @"caption_example"; // Attached caption (optional)

OAIMessageSendingApi*apiInstance = [[OAIMessageSendingApi alloc] init];

// Send raw document.
[apiInstance sendDocumentWithInstanceKey:instanceKey
              to:to
              sendDocumentRequest:sendDocumentRequest
              caption:caption
          completionHandler: ^(OAIAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMessageSendingApi->sendDocument: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **to** | **NSString***| The recipient&#39;s number | 
 **sendDocumentRequest** | [**OAISendDocumentRequest***](OAISendDocumentRequest.md)|  | 
 **caption** | **NSString***| Attached caption | [optional] 

### Return type

[**OAIAPIResponse***](OAIAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendGroupInvite**
```objc
-(NSURLSessionTask*) sendGroupInviteWithInstanceKey: (NSString*) instanceKey
    data: (OAIGroupInviteMessagePayload*) data
        completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;
```

Send a group invite message

Sends a group invite message to the specified number. Don't include \"https://chat.whatsapp.com/\" in the invite code.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* instanceKey = @"instanceKey_example"; // Instance key
OAIGroupInviteMessagePayload* data = [[OAIGroupInviteMessagePayload alloc] init]; // Message data

OAIMessageSendingApi*apiInstance = [[OAIMessageSendingApi alloc] init];

// Send a group invite message
[apiInstance sendGroupInviteWithInstanceKey:instanceKey
              data:data
          completionHandler: ^(OAIAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMessageSendingApi->sendGroupInvite: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **data** | [**OAIGroupInviteMessagePayload***](OAIGroupInviteMessagePayload.md)| Message data | 

### Return type

[**OAIAPIResponse***](OAIAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendImage**
```objc
-(NSURLSessionTask*) sendImageWithInstanceKey: (NSString*) instanceKey
    to: (NSString*) to
    updateProfilePicRequest: (OAIUpdateProfilePicRequest*) updateProfilePicRequest
    caption: (NSString*) caption
        completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;
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
OAIUpdateProfilePicRequest* updateProfilePicRequest = [[OAIUpdateProfilePicRequest alloc] init]; // 
NSString* caption = @"caption_example"; // Attached caption (optional)

OAIMessageSendingApi*apiInstance = [[OAIMessageSendingApi alloc] init];

// Send raw image.
[apiInstance sendImageWithInstanceKey:instanceKey
              to:to
              updateProfilePicRequest:updateProfilePicRequest
              caption:caption
          completionHandler: ^(OAIAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMessageSendingApi->sendImage: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **to** | **NSString***| The recipient&#39;s number | 
 **updateProfilePicRequest** | [**OAIUpdateProfilePicRequest***](OAIUpdateProfilePicRequest.md)|  | 
 **caption** | **NSString***| Attached caption | [optional] 

### Return type

[**OAIAPIResponse***](OAIAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendListMessage**
```objc
-(NSURLSessionTask*) sendListMessageWithInstanceKey: (NSString*) instanceKey
    data: (OAIListMessagePayload*) data
        completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;
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
OAIListMessagePayload* data = [[OAIListMessagePayload alloc] init]; // Message data

OAIMessageSendingApi*apiInstance = [[OAIMessageSendingApi alloc] init];

// Send a List message.
[apiInstance sendListMessageWithInstanceKey:instanceKey
              data:data
          completionHandler: ^(OAIAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMessageSendingApi->sendListMessage: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **data** | [**OAIListMessagePayload***](OAIListMessagePayload.md)| Message data | 

### Return type

[**OAIAPIResponse***](OAIAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendLocation**
```objc
-(NSURLSessionTask*) sendLocationWithInstanceKey: (NSString*) instanceKey
    data: (OAILocationMessagePayload*) data
        completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;
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
OAILocationMessagePayload* data = [[OAILocationMessagePayload alloc] init]; // Message data

OAIMessageSendingApi*apiInstance = [[OAIMessageSendingApi alloc] init];

// Send a location message.
[apiInstance sendLocationWithInstanceKey:instanceKey
              data:data
          completionHandler: ^(OAIAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMessageSendingApi->sendLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **data** | [**OAILocationMessagePayload***](OAILocationMessagePayload.md)| Message data | 

### Return type

[**OAIAPIResponse***](OAIAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendMediaMessage**
```objc
-(NSURLSessionTask*) sendMediaMessageWithInstanceKey: (NSString*) instanceKey
    data: (OAISendMediaPayload*) data
        completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;
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
OAISendMediaPayload* data = [[OAISendMediaPayload alloc] init]; // Message data

OAIMessageSendingApi*apiInstance = [[OAIMessageSendingApi alloc] init];

// Send a media message.
[apiInstance sendMediaMessageWithInstanceKey:instanceKey
              data:data
          completionHandler: ^(OAIAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMessageSendingApi->sendMediaMessage: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **data** | [**OAISendMediaPayload***](OAISendMediaPayload.md)| Message data | 

### Return type

[**OAIAPIResponse***](OAIAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendPollMessage**
```objc
-(NSURLSessionTask*) sendPollMessageWithInstanceKey: (NSString*) instanceKey
    data: (OAIPollMessagePayload*) data
        completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;
```

Send a Poll message.

Sends an interactive poll message to the given user. The poll message is a new feature that is currently in beta.

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* instanceKey = @"instanceKey_example"; // Instance key
OAIPollMessagePayload* data = [[OAIPollMessagePayload alloc] init]; // Message data

OAIMessageSendingApi*apiInstance = [[OAIMessageSendingApi alloc] init];

// Send a Poll message.
[apiInstance sendPollMessageWithInstanceKey:instanceKey
              data:data
          completionHandler: ^(OAIAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMessageSendingApi->sendPollMessage: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **data** | [**OAIPollMessagePayload***](OAIPollMessagePayload.md)| Message data | 

### Return type

[**OAIAPIResponse***](OAIAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendTemplate**
```objc
-(NSURLSessionTask*) sendTemplateWithInstanceKey: (NSString*) instanceKey
    data: (OAITemplateButtonPayload*) data
        completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;
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
OAITemplateButtonPayload* data = [[OAITemplateButtonPayload alloc] init]; // Message data

OAIMessageSendingApi*apiInstance = [[OAIMessageSendingApi alloc] init];

// Send a template message.
[apiInstance sendTemplateWithInstanceKey:instanceKey
              data:data
          completionHandler: ^(OAIAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMessageSendingApi->sendTemplate: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **data** | [**OAITemplateButtonPayload***](OAITemplateButtonPayload.md)| Message data | 

### Return type

[**OAIAPIResponse***](OAIAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendTemplateWithMedia**
```objc
-(NSURLSessionTask*) sendTemplateWithMediaWithInstanceKey: (NSString*) instanceKey
    data: (OAITemplateButtonWithMediaPayload*) data
        completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;
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
OAITemplateButtonWithMediaPayload* data = [[OAITemplateButtonWithMediaPayload alloc] init]; // Message data

OAIMessageSendingApi*apiInstance = [[OAIMessageSendingApi alloc] init];

// Send a template message with media.
[apiInstance sendTemplateWithMediaWithInstanceKey:instanceKey
              data:data
          completionHandler: ^(OAIAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMessageSendingApi->sendTemplateWithMedia: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **data** | [**OAITemplateButtonWithMediaPayload***](OAITemplateButtonWithMediaPayload.md)| Message data | 

### Return type

[**OAIAPIResponse***](OAIAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendTextMessage**
```objc
-(NSURLSessionTask*) sendTextMessageWithInstanceKey: (NSString*) instanceKey
    data: (OAITextMessage*) data
        completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;
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
OAITextMessage* data = [[OAITextMessage alloc] init]; // Message data

OAIMessageSendingApi*apiInstance = [[OAIMessageSendingApi alloc] init];

// Send a text message.
[apiInstance sendTextMessageWithInstanceKey:instanceKey
              data:data
          completionHandler: ^(OAIAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMessageSendingApi->sendTextMessage: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **data** | [**OAITextMessage***](OAITextMessage.md)| Message data | 

### Return type

[**OAIAPIResponse***](OAIAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendVideo**
```objc
-(NSURLSessionTask*) sendVideoWithInstanceKey: (NSString*) instanceKey
    to: (NSString*) to
    sendVideoRequest: (OAISendVideoRequest*) sendVideoRequest
    caption: (NSString*) caption
        completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;
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
OAISendVideoRequest* sendVideoRequest = [[OAISendVideoRequest alloc] init]; // 
NSString* caption = @"caption_example"; // Attached caption (optional)

OAIMessageSendingApi*apiInstance = [[OAIMessageSendingApi alloc] init];

// Send raw video.
[apiInstance sendVideoWithInstanceKey:instanceKey
              to:to
              sendVideoRequest:sendVideoRequest
              caption:caption
          completionHandler: ^(OAIAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMessageSendingApi->sendVideo: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **to** | **NSString***| The recipient&#39;s number | 
 **sendVideoRequest** | [**OAISendVideoRequest***](OAISendVideoRequest.md)|  | 
 **caption** | **NSString***| Attached caption | [optional] 

### Return type

[**OAIAPIResponse***](OAIAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadMedia**
```objc
-(NSURLSessionTask*) uploadMediaWithInstanceKey: (NSString*) instanceKey
    type: (NSString*) type
    uploadMediaRequest: (OAIUploadMediaRequest*) uploadMediaRequest
        completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;
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
OAIUploadMediaRequest* uploadMediaRequest = [[OAIUploadMediaRequest alloc] init]; // 

OAIMessageSendingApi*apiInstance = [[OAIMessageSendingApi alloc] init];

// Upload media.
[apiInstance uploadMediaWithInstanceKey:instanceKey
              type:type
              uploadMediaRequest:uploadMediaRequest
          completionHandler: ^(OAIAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMessageSendingApi->uploadMedia: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **type** | **NSString***| Media type | 
 **uploadMediaRequest** | [**OAIUploadMediaRequest***](OAIUploadMediaRequest.md)|  | 

### Return type

[**OAIAPIResponse***](OAIAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadMediaFromUrl**
```objc
-(NSURLSessionTask*) uploadMediaFromUrlWithInstanceKey: (NSString*) instanceKey
    type: (NSString*) type
    data: (OAIUrlMediaUploadPayload*) data
        completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;
```

Upload media from url.

Uploads media from a url to WhatsApp servers and returns the media keys. Store the returned media keys, as you will need them to send media messages

### Example
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* instanceKey = @"instanceKey_example"; // Instance key
NSString* type = @"type_example"; // Media type
OAIUrlMediaUploadPayload* data = [[OAIUrlMediaUploadPayload alloc] init]; // Media data

OAIMessageSendingApi*apiInstance = [[OAIMessageSendingApi alloc] init];

// Upload media from url.
[apiInstance uploadMediaFromUrlWithInstanceKey:instanceKey
              type:type
              data:data
          completionHandler: ^(OAIAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMessageSendingApi->uploadMediaFromUrl: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instanceKey** | **NSString***| Instance key | 
 **type** | **NSString***| Media type | 
 **data** | [**OAIUrlMediaUploadPayload***](OAIUrlMediaUploadPayload.md)| Media data | 

### Return type

[**OAIAPIResponse***](OAIAPIResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

