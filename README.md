# OpenAPIClient

The V2 of WhatsAPI Go

This ObjC package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 2.0
- Package version: 
- Build package: org.openapitools.codegen.languages.ObjcClientCodegen

## Requirements

The SDK requires [**ARC (Automatic Reference Counting)**](http://stackoverflow.com/questions/7778356/how-to-enable-disable-automatic-reference-counting) to be enabled in the Xcode project.

## Installation & Usage
### Install from Github using [CocoaPods](https://cocoapods.org/)

Add the following to the Podfile:

```ruby
pod 'OpenAPIClient', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'
```

To specify a particular branch, append `, :branch => 'branch-name-here'`

To specify a particular commit, append `, :commit => '11aa22'`

### Install from local path using [CocoaPods](https://cocoapods.org/)

Put the SDK under your project folder (e.g. /path/to/objc_project/Vendor/OpenAPIClient) and then add the following to the Podfile:

```ruby
pod 'OpenAPIClient', :path => 'Vendor/OpenAPIClient'
```

### Usage

Import the following:

```objc
#import <OpenAPIClient/OAIApiClient.h>
#import <OpenAPIClient/OAIDefaultConfiguration.h>
// load models
#import <OpenAPIClient/OAIAPIResponse.h>
#import <OpenAPIClient/OAIButtonMessagePayload.h>
#import <OpenAPIClient/OAIButtonMessageWithMediaPayload.h>
#import <OpenAPIClient/OAIContactMessagePayload.h>
#import <OpenAPIClient/OAIContactMessagePayloadVcard.h>
#import <OpenAPIClient/OAIFileUpload.h>
#import <OpenAPIClient/OAIGroupCreatePayload.h>
#import <OpenAPIClient/OAIGroupInviteMessagePayload.h>
#import <OpenAPIClient/OAIGroupUpdateDescriptionPayload.h>
#import <OpenAPIClient/OAIGroupUpdateNamePayload.h>
#import <OpenAPIClient/OAIGroupUpdateParticipantsPayload.h>
#import <OpenAPIClient/OAIListItem.h>
#import <OpenAPIClient/OAIListMessagePayload.h>
#import <OpenAPIClient/OAIListSection.h>
#import <OpenAPIClient/OAILocationMessagePayload.h>
#import <OpenAPIClient/OAILocationMessagePayloadLocation.h>
#import <OpenAPIClient/OAIPaymentRequestPayload.h>
#import <OpenAPIClient/OAIPollMessagePayload.h>
#import <OpenAPIClient/OAIReplyButton.h>
#import <OpenAPIClient/OAISendAudioRequest.h>
#import <OpenAPIClient/OAISendDocumentRequest.h>
#import <OpenAPIClient/OAISendMediaPayload.h>
#import <OpenAPIClient/OAISendVideoRequest.h>
#import <OpenAPIClient/OAISetGroupPictureRequest.h>
#import <OpenAPIClient/OAITemplateButton.h>
#import <OpenAPIClient/OAITemplateButtonPayload.h>
#import <OpenAPIClient/OAITemplateButtonWithMediaPayload.h>
#import <OpenAPIClient/OAITextMessage.h>
#import <OpenAPIClient/OAIUpdateProfilePicRequest.h>
#import <OpenAPIClient/OAIUploadMediaRequest.h>
#import <OpenAPIClient/OAIUrlMediaUploadPayload.h>
#import <OpenAPIClient/OAIUserInfoPayload.h>
#import <OpenAPIClient/OAIWebhookPayload.h>
// load API classes for accessing endpoints
#import <OpenAPIClient/OAIBusinessManagementApi.h>
#import <OpenAPIClient/OAIGroupManagementApi.h>
#import <OpenAPIClient/OAIInstanceApi.h>
#import <OpenAPIClient/OAIMessageSendingApi.h>
#import <OpenAPIClient/OAIMiscellaneousApi.h>

```

## Recommendation

It's recommended to create an instance of ApiClient per thread in a multi-threaded environment to avoid any potential issues.

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```objc

OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* *instanceKey = @"instanceKey_example"; // Instance key

OAIBusinessManagementApi *apiInstance = [[OAIBusinessManagementApi alloc] init];

// Fetches the catlog.
[apiInstance fetchCatlogWithInstanceKey:instanceKey
              completionHandler: ^(OAIAPIResponse* output, NSError* error) {
                            if (output) {
                                NSLog(@"%@", output);
                            }
                            if (error) {
                                NSLog(@"Error: %@", error);
                            }
                        }];

```

## Documentation for API Endpoints

All URIs are relative to */api*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*OAIBusinessManagementApi* | [**fetchCatlog**](docs/OAIBusinessManagementApi.md#fetchcatlog) | **GET** /instances/{instance_key}/business/catalog | Fetches the catlog.
*OAIBusinessManagementApi* | [**sendPaymentRequest**](docs/OAIBusinessManagementApi.md#sendpaymentrequest) | **POST** /instances/{instance_key}/business/payment-request | Send a payment request.
*OAIGroupManagementApi* | [**addParticipant**](docs/OAIGroupManagementApi.md#addparticipant) | **POST** /instances/{instance_key}/groups/{group_id}/participants/add | Add participant.
*OAIGroupManagementApi* | [**createGroup**](docs/OAIGroupManagementApi.md#creategroup) | **POST** /instances/{instance_key}/groups/create | Create group.
*OAIGroupManagementApi* | [**demoteParticipant**](docs/OAIGroupManagementApi.md#demoteparticipant) | **PUT** /instances/{instance_key}/groups/{group_id}/participants/demote | Demote participant.
*OAIGroupManagementApi* | [**getAdminGroups**](docs/OAIGroupManagementApi.md#getadmingroups) | **GET** /instances/{instance_key}/groups/admin | Get admin groups.
*OAIGroupManagementApi* | [**getAllGroups**](docs/OAIGroupManagementApi.md#getallgroups) | **GET** /instances/{instance_key}/groups/ | Get all groups.
*OAIGroupManagementApi* | [**getAllParticipants**](docs/OAIGroupManagementApi.md#getallparticipants) | **GET** /instances/{instance_key}/groups/{group_id}/participants | Get all participants.
*OAIGroupManagementApi* | [**getGroup**](docs/OAIGroupManagementApi.md#getgroup) | **GET** /instances/{instance_key}/groups/{group_id} | Get group.
*OAIGroupManagementApi* | [**getGroupFromInviteLink**](docs/OAIGroupManagementApi.md#getgroupfrominvitelink) | **GET** /instances/{instance_key}/groups/invite-info | Get group from invite link.
*OAIGroupManagementApi* | [**getGroupInviteCode**](docs/OAIGroupManagementApi.md#getgroupinvitecode) | **GET** /instances/{instance_key}/groups/{group_id}/invite-code | Get group invite code.
*OAIGroupManagementApi* | [**joinGroupWithLink**](docs/OAIGroupManagementApi.md#joingroupwithlink) | **GET** /instances/{instance_key}/groups/join | Join group with invite code.
*OAIGroupManagementApi* | [**leaveGroup**](docs/OAIGroupManagementApi.md#leavegroup) | **DELETE** /instances/{instance_key}/groups/{group_id}/ | Leaves the group.
*OAIGroupManagementApi* | [**promoteParticipant**](docs/OAIGroupManagementApi.md#promoteparticipant) | **PUT** /instances/{instance_key}/groups/{group_id}/participants/promote | Promote participant.
*OAIGroupManagementApi* | [**removeParticipant**](docs/OAIGroupManagementApi.md#removeparticipant) | **DELETE** /instances/{instance_key}/groups/{group_id}/participants/remove | Remove participant.
*OAIGroupManagementApi* | [**setGroupAnnounce**](docs/OAIGroupManagementApi.md#setgroupannounce) | **PUT** /instances/{instance_key}/groups/{group_id}/announce | Set group announce.
*OAIGroupManagementApi* | [**setGroupDescription**](docs/OAIGroupManagementApi.md#setgroupdescription) | **PUT** /instances/{instance_key}/groups/{group_id}/description | Set group description.
*OAIGroupManagementApi* | [**setGroupLocked**](docs/OAIGroupManagementApi.md#setgrouplocked) | **PUT** /instances/{instance_key}/groups/{group_id}/lock | Set group locked.
*OAIGroupManagementApi* | [**setGroupName**](docs/OAIGroupManagementApi.md#setgroupname) | **PUT** /instances/{instance_key}/groups/{group_id}/name | Set group name.
*OAIGroupManagementApi* | [**setGroupPicture**](docs/OAIGroupManagementApi.md#setgrouppicture) | **PUT** /instances/{instance_key}/groups/{group_id}/profile-pic | Set group picture.
*OAIInstanceApi* | [**changeWebhookUrl**](docs/OAIInstanceApi.md#changewebhookurl) | **PUT** /instances/{instance_key}/webhook | Change Webhook url.
*OAIInstanceApi* | [**createInstance**](docs/OAIInstanceApi.md#createinstance) | **GET** /instances/create | Creates a new instance key.
*OAIInstanceApi* | [**deleteInstance**](docs/OAIInstanceApi.md#deleteinstance) | **DELETE** /instances/{instance_key}/delete | Delete Instance.
*OAIInstanceApi* | [**getContacts**](docs/OAIInstanceApi.md#getcontacts) | **GET** /instances/{instance_key}/contacts | Get contacts.
*OAIInstanceApi* | [**getInstance**](docs/OAIInstanceApi.md#getinstance) | **GET** /instances/{instance_key}/ | Get Instance.
*OAIInstanceApi* | [**getQrCode**](docs/OAIInstanceApi.md#getqrcode) | **GET** /instances/{instance_key}/qrcode | Get QrCode.
*OAIInstanceApi* | [**listInstances**](docs/OAIInstanceApi.md#listinstances) | **GET** /instances/list | Get all instances.
*OAIInstanceApi* | [**logoutInstance**](docs/OAIInstanceApi.md#logoutinstance) | **DELETE** /instances/{instance_key}/logout | Logout Instance.
*OAIMessageSendingApi* | [**sendAudio**](docs/OAIMessageSendingApi.md#sendaudio) | **POST** /instances/{instance_key}/send/audio | Send raw audio.
*OAIMessageSendingApi* | [**sendButtonMessage**](docs/OAIMessageSendingApi.md#sendbuttonmessage) | **POST** /instances/{instance_key}/send/buttons | Send a button message.
*OAIMessageSendingApi* | [**sendButtonWithMedia**](docs/OAIMessageSendingApi.md#sendbuttonwithmedia) | **POST** /instances/{instance_key}/send/button-media | Send a button message with a media header.
*OAIMessageSendingApi* | [**sendContact**](docs/OAIMessageSendingApi.md#sendcontact) | **POST** /instances/{instance_key}/send/contact | Send a contact message.
*OAIMessageSendingApi* | [**sendDocument**](docs/OAIMessageSendingApi.md#senddocument) | **POST** /instances/{instance_key}/send/document | Send raw document.
*OAIMessageSendingApi* | [**sendGroupInvite**](docs/OAIMessageSendingApi.md#sendgroupinvite) | **POST** /instances/{instance_key}/send/group-invite | Send a group invite message
*OAIMessageSendingApi* | [**sendImage**](docs/OAIMessageSendingApi.md#sendimage) | **POST** /instances/{instance_key}/send/image | Send raw image.
*OAIMessageSendingApi* | [**sendListMessage**](docs/OAIMessageSendingApi.md#sendlistmessage) | **POST** /instances/{instance_key}/send/list | Send a List message.
*OAIMessageSendingApi* | [**sendLocation**](docs/OAIMessageSendingApi.md#sendlocation) | **POST** /instances/{instance_key}/send/location | Send a location message.
*OAIMessageSendingApi* | [**sendMediaMessage**](docs/OAIMessageSendingApi.md#sendmediamessage) | **POST** /instances/{instance_key}/send/media | Send a media message.
*OAIMessageSendingApi* | [**sendPollMessage**](docs/OAIMessageSendingApi.md#sendpollmessage) | **POST** /instances/{instance_key}/send/poll | Send a Poll message.
*OAIMessageSendingApi* | [**sendTemplate**](docs/OAIMessageSendingApi.md#sendtemplate) | **POST** /instances/{instance_key}/send/template | Send a template message.
*OAIMessageSendingApi* | [**sendTemplateWithMedia**](docs/OAIMessageSendingApi.md#sendtemplatewithmedia) | **POST** /instances/{instance_key}/send/template-media | Send a template message with media.
*OAIMessageSendingApi* | [**sendTextMessage**](docs/OAIMessageSendingApi.md#sendtextmessage) | **POST** /instances/{instance_key}/send/text | Send a text message.
*OAIMessageSendingApi* | [**sendVideo**](docs/OAIMessageSendingApi.md#sendvideo) | **POST** /instances/{instance_key}/send/video | Send raw video.
*OAIMessageSendingApi* | [**uploadMedia**](docs/OAIMessageSendingApi.md#uploadmedia) | **POST** /instances/{instance_key}/send/upload | Upload media.
*OAIMessageSendingApi* | [**uploadMediaFromUrl**](docs/OAIMessageSendingApi.md#uploadmediafromurl) | **POST** /instances/{instance_key}/send/upload-url | Upload media from url.
*OAIMiscellaneousApi* | [**downloadMedia**](docs/OAIMiscellaneousApi.md#downloadmedia) | **POST** /instances/{instance_key}/misc/download | Download media
*OAIMiscellaneousApi* | [**getProfilePic**](docs/OAIMiscellaneousApi.md#getprofilepic) | **GET** /instances/{instance_key}/misc/profile-pic | Get profile pic.
*OAIMiscellaneousApi* | [**getUsersInfo**](docs/OAIMiscellaneousApi.md#getusersinfo) | **POST** /instances/{instance_key}/misc/user-info | Fetches the users info.
*OAIMiscellaneousApi* | [**setChatPresence**](docs/OAIMiscellaneousApi.md#setchatpresence) | **POST** /instances/{instance_key}/misc/chat-presence | Set chat presence
*OAIMiscellaneousApi* | [**updateProfilePic**](docs/OAIMiscellaneousApi.md#updateprofilepic) | **PUT** /instances/{instance_key}/misc/profile-pic | Update profile picture


## Documentation For Models

 - [OAIAPIResponse](docs/OAIAPIResponse.md)
 - [OAIButtonMessagePayload](docs/OAIButtonMessagePayload.md)
 - [OAIButtonMessageWithMediaPayload](docs/OAIButtonMessageWithMediaPayload.md)
 - [OAIContactMessagePayload](docs/OAIContactMessagePayload.md)
 - [OAIContactMessagePayloadVcard](docs/OAIContactMessagePayloadVcard.md)
 - [OAIFileUpload](docs/OAIFileUpload.md)
 - [OAIGroupCreatePayload](docs/OAIGroupCreatePayload.md)
 - [OAIGroupInviteMessagePayload](docs/OAIGroupInviteMessagePayload.md)
 - [OAIGroupUpdateDescriptionPayload](docs/OAIGroupUpdateDescriptionPayload.md)
 - [OAIGroupUpdateNamePayload](docs/OAIGroupUpdateNamePayload.md)
 - [OAIGroupUpdateParticipantsPayload](docs/OAIGroupUpdateParticipantsPayload.md)
 - [OAIListItem](docs/OAIListItem.md)
 - [OAIListMessagePayload](docs/OAIListMessagePayload.md)
 - [OAIListSection](docs/OAIListSection.md)
 - [OAILocationMessagePayload](docs/OAILocationMessagePayload.md)
 - [OAILocationMessagePayloadLocation](docs/OAILocationMessagePayloadLocation.md)
 - [OAIPaymentRequestPayload](docs/OAIPaymentRequestPayload.md)
 - [OAIPollMessagePayload](docs/OAIPollMessagePayload.md)
 - [OAIReplyButton](docs/OAIReplyButton.md)
 - [OAISendAudioRequest](docs/OAISendAudioRequest.md)
 - [OAISendDocumentRequest](docs/OAISendDocumentRequest.md)
 - [OAISendMediaPayload](docs/OAISendMediaPayload.md)
 - [OAISendVideoRequest](docs/OAISendVideoRequest.md)
 - [OAISetGroupPictureRequest](docs/OAISetGroupPictureRequest.md)
 - [OAITemplateButton](docs/OAITemplateButton.md)
 - [OAITemplateButtonPayload](docs/OAITemplateButtonPayload.md)
 - [OAITemplateButtonWithMediaPayload](docs/OAITemplateButtonWithMediaPayload.md)
 - [OAITextMessage](docs/OAITextMessage.md)
 - [OAIUpdateProfilePicRequest](docs/OAIUpdateProfilePicRequest.md)
 - [OAIUploadMediaRequest](docs/OAIUploadMediaRequest.md)
 - [OAIUrlMediaUploadPayload](docs/OAIUrlMediaUploadPayload.md)
 - [OAIUserInfoPayload](docs/OAIUserInfoPayload.md)
 - [OAIWebhookPayload](docs/OAIWebhookPayload.md)


## Documentation For Authorization


## ApiKeyAuth

- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header


## Author

manjit@sponsorbook.io

