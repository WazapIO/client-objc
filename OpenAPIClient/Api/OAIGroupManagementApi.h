#import <Foundation/Foundation.h>
#import "OAIAPIResponse.h"
#import "OAIGroupCreatePayload.h"
#import "OAIGroupUpdateDescriptionPayload.h"
#import "OAIGroupUpdateNamePayload.h"
#import "OAIGroupUpdateParticipantsPayload.h"
#import "OAISetGroupPictureRequest.h"
#import "OAIApi.h"

/**
* WhatsAPI Go
* The V2 of WhatsAPI Go
*
* The version of the OpenAPI document: 2.0
* Contact: manjit@sponsorbook.io
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/



@interface OAIGroupManagementApi: NSObject <OAIApi>

extern NSString* kOAIGroupManagementApiErrorDomain;
extern NSInteger kOAIGroupManagementApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(OAIApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Add participant.
/// Handles adding participants to a group. You must be admin in the group or the query will fail.
///
/// @param instanceKey Instance key
/// @param groupId Group id of the group
/// @param data Group update payload
/// 
///  code:200 message:"Success",
///  code:400 message:"Bad Request",
///  code:401 message:"Unauthorized",
///  code:404 message:"Instance not found",
///  code:500 message:"Internal Server Error"
///
/// @return OAIAPIResponse*
-(NSURLSessionTask*) addParticipantWithInstanceKey: (NSString*) instanceKey
    groupId: (NSString*) groupId
    data: (OAIGroupUpdateParticipantsPayload*) data
    completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;


/// Create group.
/// Creates a group with the participant data. The creator is automatically added to the group.
///
/// @param instanceKey Instance key
/// @param data Group create payload
/// 
///  code:200 message:"Success",
///  code:400 message:"Bad Request",
///  code:401 message:"Unauthorized",
///  code:404 message:"Instance not found",
///  code:500 message:"Internal Server Error"
///
/// @return OAIAPIResponse*
-(NSURLSessionTask*) createGroupWithInstanceKey: (NSString*) instanceKey
    data: (OAIGroupCreatePayload*) data
    completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;


/// Demote participant.
/// Demotes admins in groups. You must be admin in the group or the query will fail.
///
/// @param instanceKey Instance key
/// @param groupId Group id of the group
/// @param data Group update payload
/// 
///  code:200 message:"Success",
///  code:400 message:"Bad Request",
///  code:401 message:"Unauthorized",
///  code:404 message:"Instance not found",
///  code:500 message:"Internal Server Error"
///
/// @return OAIAPIResponse*
-(NSURLSessionTask*) demoteParticipantWithInstanceKey: (NSString*) instanceKey
    groupId: (NSString*) groupId
    data: (OAIGroupUpdateParticipantsPayload*) data
    completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;


/// Get admin groups.
/// Returns list of all groups in which you are admin.
///
/// @param instanceKey Instance key
/// 
///  code:200 message:"Success",
///  code:400 message:"Bad Request",
///  code:401 message:"Unauthorized",
///  code:404 message:"Instance not found",
///  code:500 message:"Internal Server Error"
///
/// @return OAIAPIResponse*
-(NSURLSessionTask*) getAdminGroupsWithInstanceKey: (NSString*) instanceKey
    completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;


/// Get all groups.
/// Returns list of all groups with participants data. Set include_participants to false to exclude participants data.
///
/// @param instanceKey Instance key
/// @param includeParticipants Include participants data (optional) (default to @"true")
/// 
///  code:200 message:"Success",
///  code:400 message:"Bad Request",
///  code:401 message:"Unauthorized",
///  code:404 message:"Instance not found",
///  code:500 message:"Internal Server Error"
///
/// @return OAIAPIResponse*
-(NSURLSessionTask*) getAllGroupsWithInstanceKey: (NSString*) instanceKey
    includeParticipants: (NSString*) includeParticipants
    completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;


/// Get group.
/// Fetches the group data.
///
/// @param instanceKey Instance key
/// @param groupId Group id of the group
/// 
///  code:200 message:"Success",
///  code:400 message:"Bad Request",
///  code:401 message:"Unauthorized",
///  code:404 message:"Instance not found",
///  code:500 message:"Internal Server Error"
///
/// @return OAIAPIResponse*
-(NSURLSessionTask*) getGroupWithInstanceKey: (NSString*) instanceKey
    groupId: (NSString*) groupId
    completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;


/// Get group from invite link.
/// Gets a group info from an invite link. An invite link is a link that can be used to join a group. It is usually in the format https://chat.whatsapp.com/{invitecode}
///
/// @param instanceKey Instance key
/// @param inviteLink The invite link to check
/// 
///  code:200 message:"Success",
///  code:400 message:"Bad Request",
///  code:401 message:"Unauthorized",
///  code:404 message:"Instance not found",
///  code:500 message:"Internal Server Error"
///
/// @return OAIAPIResponse*
-(NSURLSessionTask*) getGroupFromInviteLinkWithInstanceKey: (NSString*) instanceKey
    inviteLink: (NSString*) inviteLink
    completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;


/// Get group invite code.
/// Gets the invite code of the group.
///
/// @param instanceKey Instance key
/// @param groupId Group id of the group
/// 
///  code:200 message:"Success",
///  code:400 message:"Bad Request",
///  code:401 message:"Unauthorized",
///  code:404 message:"Instance not found",
///  code:500 message:"Internal Server Error"
///
/// @return OAIAPIResponse*
-(NSURLSessionTask*) getGroupInviteCodeWithInstanceKey: (NSString*) instanceKey
    groupId: (NSString*) groupId
    completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;


/// Leaves the group.
/// Leaves the specified group.
///
/// @param instanceKey Instance key
/// @param groupId Group id of the group
/// 
///  code:200 message:"Success",
///  code:400 message:"Bad Request",
///  code:401 message:"Unauthorized",
///  code:404 message:"Instance not found",
///  code:500 message:"Internal Server Error"
///
/// @return OAIAPIResponse*
-(NSURLSessionTask*) leaveGroupWithInstanceKey: (NSString*) instanceKey
    groupId: (NSString*) groupId
    completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;


/// Promote participant.
/// Promotes participants to admin. You must be admin in the group or the query will fail.
///
/// @param instanceKey Instance key
/// @param groupId Group id of the group
/// @param data Group update payload
/// 
///  code:200 message:"Success",
///  code:400 message:"Bad Request",
///  code:401 message:"Unauthorized",
///  code:404 message:"Instance not found",
///  code:500 message:"Internal Server Error"
///
/// @return OAIAPIResponse*
-(NSURLSessionTask*) promoteParticipantWithInstanceKey: (NSString*) instanceKey
    groupId: (NSString*) groupId
    data: (OAIGroupUpdateParticipantsPayload*) data
    completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;


/// Remove participant.
/// Handles removing participants from a group. You must be admin in the group or the query will fail.
///
/// @param instanceKey Instance key
/// @param groupId Group id of the group
/// @param data Group update payload
/// 
///  code:200 message:"Success",
///  code:400 message:"Bad Request",
///  code:401 message:"Unauthorized",
///  code:404 message:"Instance not found",
///  code:500 message:"Internal Server Error"
///
/// @return OAIAPIResponse*
-(NSURLSessionTask*) removeParticipantWithInstanceKey: (NSString*) instanceKey
    groupId: (NSString*) groupId
    data: (OAIGroupUpdateParticipantsPayload*) data
    completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;


/// Set group announce.
/// Set if non-admins are allowed to send messages in groups
///
/// @param instanceKey Instance key
/// @param announce Announce status (default to @(NO))
/// @param groupId Group id of the group
/// 
///  code:200 message:"Success",
///  code:400 message:"Bad Request",
///  code:401 message:"Unauthorized",
///  code:404 message:"Instance not found",
///  code:500 message:"Internal Server Error"
///
/// @return OAIAPIResponse*
-(NSURLSessionTask*) setGroupAnnounceWithInstanceKey: (NSString*) instanceKey
    announce: (NSNumber*) announce
    groupId: (NSString*) groupId
    completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;


/// Set group description.
/// Changes the group description
///
/// @param instanceKey Instance key
/// @param groupId Group id of the group
/// @param data Group description data
/// 
///  code:200 message:"Success",
///  code:400 message:"Bad Request",
///  code:401 message:"Unauthorized",
///  code:404 message:"Instance not found",
///  code:500 message:"Internal Server Error"
///
/// @return OAIAPIResponse*
-(NSURLSessionTask*) setGroupDescriptionWithInstanceKey: (NSString*) instanceKey
    groupId: (NSString*) groupId
    data: (OAIGroupUpdateDescriptionPayload*) data
    completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;


/// Set group locked.
/// Set if non-admins are allowed to change the group dp and other stuff
///
/// @param instanceKey Instance key
/// @param locked Locked status (default to @(NO))
/// @param groupId Group id of the group
/// 
///  code:200 message:"Success",
///  code:400 message:"Bad Request",
///  code:401 message:"Unauthorized",
///  code:404 message:"Instance not found",
///  code:500 message:"Internal Server Error"
///
/// @return OAIAPIResponse*
-(NSURLSessionTask*) setGroupLockedWithInstanceKey: (NSString*) instanceKey
    locked: (NSNumber*) locked
    groupId: (NSString*) groupId
    completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;


/// Set group name.
/// Changes the group name. The max limit is 22 chars
///
/// @param instanceKey Instance key
/// @param groupId Group id of the group
/// @param data Group name data
/// 
///  code:200 message:"Success",
///  code:400 message:"Bad Request",
///  code:401 message:"Unauthorized",
///  code:404 message:"Instance not found",
///  code:500 message:"Internal Server Error"
///
/// @return OAIAPIResponse*
-(NSURLSessionTask*) setGroupNameWithInstanceKey: (NSString*) instanceKey
    groupId: (NSString*) groupId
    data: (OAIGroupUpdateNamePayload*) data
    completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;


/// Set group picture.
/// Changes the group profile picture. Currently it only seems to accept JPEG images only
///
/// @param instanceKey Instance key
/// @param groupId Group id of the group
/// @param setGroupPictureRequest 
/// 
///  code:200 message:"Success",
///  code:400 message:"Bad Request",
///  code:401 message:"Unauthorized",
///  code:404 message:"Instance not found",
///  code:500 message:"Internal Server Error"
///
/// @return OAIAPIResponse*
-(NSURLSessionTask*) setGroupPictureWithInstanceKey: (NSString*) instanceKey
    groupId: (NSString*) groupId
    setGroupPictureRequest: (OAISetGroupPictureRequest*) setGroupPictureRequest
    completionHandler: (void (^)(OAIAPIResponse* output, NSError* error)) handler;



@end
