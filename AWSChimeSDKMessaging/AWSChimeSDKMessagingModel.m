//
// Copyright 2010-2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License").
// You may not use this file except in compliance with the License.
// A copy of the License is located at
//
// http://aws.amazon.com/apache2.0
//
// or in the "license" file accompanying this file. This file is distributed
// on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
// express or implied. See the License for the specific language governing
// permissions and limitations under the License.
//

#import "AWSChimeSDKMessagingModel.h"
#import <AWSCore/AWSCategory.h>

NSString *const AWSChimeSDKMessagingErrorDomain = @"com.amazonaws.AWSChimeSDKMessagingErrorDomain";

@implementation AWSChimeSDKMessagingAppInstanceUserMembershipSummary

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"readMarkerTimestamp" : @"ReadMarkerTimestamp",
             @"types" : @"Type",
             };
}

+ (NSValueTransformer *)readMarkerTimestampJSONTransformer {
    return [AWSMTLValueTransformer reversibleTransformerWithForwardBlock:^id(NSNumber *number) {
        return [NSDate dateWithTimeIntervalSince1970:[number doubleValue]];
    } reverseBlock:^id(NSDate *date) {
        return [NSString stringWithFormat:@"%f", [date timeIntervalSince1970]];
    }];
}

+ (NSValueTransformer *)typesJSONTransformer {
    return [AWSMTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value) {
        if ([value caseInsensitiveCompare:@"DEFAULT"] == NSOrderedSame) {
            return @(AWSChimeSDKMessagingChannelMembershipTypeDefault);
        }
        if ([value caseInsensitiveCompare:@"HIDDEN"] == NSOrderedSame) {
            return @(AWSChimeSDKMessagingChannelMembershipTypeHidden);
        }
        return @(AWSChimeSDKMessagingChannelMembershipTypeUnknown);
    } reverseBlock:^NSString *(NSNumber *value) {
        switch ([value integerValue]) {
            case AWSChimeSDKMessagingChannelMembershipTypeDefault:
                return @"DEFAULT";
            case AWSChimeSDKMessagingChannelMembershipTypeHidden:
                return @"HIDDEN";
            default:
                return nil;
        }
    }];
}

@end

@implementation AWSChimeSDKMessagingBatchChannelMemberships

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"channelArn" : @"ChannelArn",
             @"invitedBy" : @"InvitedBy",
             @"members" : @"Members",
             @"types" : @"Type",
             };
}

+ (NSValueTransformer *)invitedByJSONTransformer {
    return [NSValueTransformer awsmtl_JSONDictionaryTransformerWithModelClass:[AWSChimeSDKMessagingIdentity class]];
}

+ (NSValueTransformer *)membersJSONTransformer {
    return [NSValueTransformer awsmtl_JSONArrayTransformerWithModelClass:[AWSChimeSDKMessagingIdentity class]];
}

+ (NSValueTransformer *)typesJSONTransformer {
    return [AWSMTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value) {
        if ([value caseInsensitiveCompare:@"DEFAULT"] == NSOrderedSame) {
            return @(AWSChimeSDKMessagingChannelMembershipTypeDefault);
        }
        if ([value caseInsensitiveCompare:@"HIDDEN"] == NSOrderedSame) {
            return @(AWSChimeSDKMessagingChannelMembershipTypeHidden);
        }
        return @(AWSChimeSDKMessagingChannelMembershipTypeUnknown);
    } reverseBlock:^NSString *(NSNumber *value) {
        switch ([value integerValue]) {
            case AWSChimeSDKMessagingChannelMembershipTypeDefault:
                return @"DEFAULT";
            case AWSChimeSDKMessagingChannelMembershipTypeHidden:
                return @"HIDDEN";
            default:
                return nil;
        }
    }];
}

@end

@implementation AWSChimeSDKMessagingBatchCreateChannelMembershipError

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"errorCode" : @"ErrorCode",
             @"errorMessage" : @"ErrorMessage",
             @"memberArn" : @"MemberArn",
             };
}

+ (NSValueTransformer *)errorCodeJSONTransformer {
    return [AWSMTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value) {
        if ([value caseInsensitiveCompare:@"BadRequest"] == NSOrderedSame) {
            return @(AWSChimeSDKMessagingErrorCodeBadRequest);
        }
        if ([value caseInsensitiveCompare:@"Conflict"] == NSOrderedSame) {
            return @(AWSChimeSDKMessagingErrorCodeConflict);
        }
        if ([value caseInsensitiveCompare:@"Forbidden"] == NSOrderedSame) {
            return @(AWSChimeSDKMessagingErrorCodeForbidden);
        }
        if ([value caseInsensitiveCompare:@"NotFound"] == NSOrderedSame) {
            return @(AWSChimeSDKMessagingErrorCodeNotFound);
        }
        if ([value caseInsensitiveCompare:@"PreconditionFailed"] == NSOrderedSame) {
            return @(AWSChimeSDKMessagingErrorCodePreconditionFailed);
        }
        if ([value caseInsensitiveCompare:@"ResourceLimitExceeded"] == NSOrderedSame) {
            return @(AWSChimeSDKMessagingErrorCodeResourceLimitExceeded);
        }
        if ([value caseInsensitiveCompare:@"ServiceFailure"] == NSOrderedSame) {
            return @(AWSChimeSDKMessagingErrorCodeServiceFailure);
        }
        if ([value caseInsensitiveCompare:@"AccessDenied"] == NSOrderedSame) {
            return @(AWSChimeSDKMessagingErrorCodeAccessDenied);
        }
        if ([value caseInsensitiveCompare:@"ServiceUnavailable"] == NSOrderedSame) {
            return @(AWSChimeSDKMessagingErrorCodeServiceUnavailable);
        }
        if ([value caseInsensitiveCompare:@"Throttled"] == NSOrderedSame) {
            return @(AWSChimeSDKMessagingErrorCodeThrottled);
        }
        if ([value caseInsensitiveCompare:@"Throttling"] == NSOrderedSame) {
            return @(AWSChimeSDKMessagingErrorCodeThrottling);
        }
        if ([value caseInsensitiveCompare:@"Unauthorized"] == NSOrderedSame) {
            return @(AWSChimeSDKMessagingErrorCodeUnauthorized);
        }
        if ([value caseInsensitiveCompare:@"Unprocessable"] == NSOrderedSame) {
            return @(AWSChimeSDKMessagingErrorCodeUnprocessable);
        }
        if ([value caseInsensitiveCompare:@"VoiceConnectorGroupAssociationsExist"] == NSOrderedSame) {
            return @(AWSChimeSDKMessagingErrorCodeVoiceConnectorGroupAssociationsExist);
        }
        if ([value caseInsensitiveCompare:@"PhoneNumberAssociationsExist"] == NSOrderedSame) {
            return @(AWSChimeSDKMessagingErrorCodePhoneNumberAssociationsExist);
        }
        return @(AWSChimeSDKMessagingErrorCodeUnknown);
    } reverseBlock:^NSString *(NSNumber *value) {
        switch ([value integerValue]) {
            case AWSChimeSDKMessagingErrorCodeBadRequest:
                return @"BadRequest";
            case AWSChimeSDKMessagingErrorCodeConflict:
                return @"Conflict";
            case AWSChimeSDKMessagingErrorCodeForbidden:
                return @"Forbidden";
            case AWSChimeSDKMessagingErrorCodeNotFound:
                return @"NotFound";
            case AWSChimeSDKMessagingErrorCodePreconditionFailed:
                return @"PreconditionFailed";
            case AWSChimeSDKMessagingErrorCodeResourceLimitExceeded:
                return @"ResourceLimitExceeded";
            case AWSChimeSDKMessagingErrorCodeServiceFailure:
                return @"ServiceFailure";
            case AWSChimeSDKMessagingErrorCodeAccessDenied:
                return @"AccessDenied";
            case AWSChimeSDKMessagingErrorCodeServiceUnavailable:
                return @"ServiceUnavailable";
            case AWSChimeSDKMessagingErrorCodeThrottled:
                return @"Throttled";
            case AWSChimeSDKMessagingErrorCodeThrottling:
                return @"Throttling";
            case AWSChimeSDKMessagingErrorCodeUnauthorized:
                return @"Unauthorized";
            case AWSChimeSDKMessagingErrorCodeUnprocessable:
                return @"Unprocessable";
            case AWSChimeSDKMessagingErrorCodeVoiceConnectorGroupAssociationsExist:
                return @"VoiceConnectorGroupAssociationsExist";
            case AWSChimeSDKMessagingErrorCodePhoneNumberAssociationsExist:
                return @"PhoneNumberAssociationsExist";
            default:
                return nil;
        }
    }];
}

@end

@implementation AWSChimeSDKMessagingBatchCreateChannelMembershipRequest

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"channelArn" : @"ChannelArn",
             @"chimeBearer" : @"ChimeBearer",
             @"memberArns" : @"MemberArns",
             @"types" : @"Type",
             };
}

+ (NSValueTransformer *)typesJSONTransformer {
    return [AWSMTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value) {
        if ([value caseInsensitiveCompare:@"DEFAULT"] == NSOrderedSame) {
            return @(AWSChimeSDKMessagingChannelMembershipTypeDefault);
        }
        if ([value caseInsensitiveCompare:@"HIDDEN"] == NSOrderedSame) {
            return @(AWSChimeSDKMessagingChannelMembershipTypeHidden);
        }
        return @(AWSChimeSDKMessagingChannelMembershipTypeUnknown);
    } reverseBlock:^NSString *(NSNumber *value) {
        switch ([value integerValue]) {
            case AWSChimeSDKMessagingChannelMembershipTypeDefault:
                return @"DEFAULT";
            case AWSChimeSDKMessagingChannelMembershipTypeHidden:
                return @"HIDDEN";
            default:
                return nil;
        }
    }];
}

@end

@implementation AWSChimeSDKMessagingBatchCreateChannelMembershipResponse

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"batchChannelMemberships" : @"BatchChannelMemberships",
             @"errors" : @"Errors",
             };
}

+ (NSValueTransformer *)batchChannelMembershipsJSONTransformer {
    return [NSValueTransformer awsmtl_JSONDictionaryTransformerWithModelClass:[AWSChimeSDKMessagingBatchChannelMemberships class]];
}

+ (NSValueTransformer *)errorsJSONTransformer {
    return [NSValueTransformer awsmtl_JSONArrayTransformerWithModelClass:[AWSChimeSDKMessagingBatchCreateChannelMembershipError class]];
}

@end

@implementation AWSChimeSDKMessagingChannel

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"channelArn" : @"ChannelArn",
             @"createdBy" : @"CreatedBy",
             @"createdTimestamp" : @"CreatedTimestamp",
             @"lastMessageTimestamp" : @"LastMessageTimestamp",
             @"lastUpdatedTimestamp" : @"LastUpdatedTimestamp",
             @"metadata" : @"Metadata",
             @"mode" : @"Mode",
             @"name" : @"Name",
             @"privacy" : @"Privacy",
             };
}

+ (NSValueTransformer *)createdByJSONTransformer {
    return [NSValueTransformer awsmtl_JSONDictionaryTransformerWithModelClass:[AWSChimeSDKMessagingIdentity class]];
}

+ (NSValueTransformer *)createdTimestampJSONTransformer {
    return [AWSMTLValueTransformer reversibleTransformerWithForwardBlock:^id(NSNumber *number) {
        return [NSDate dateWithTimeIntervalSince1970:[number doubleValue]];
    } reverseBlock:^id(NSDate *date) {
        return [NSString stringWithFormat:@"%f", [date timeIntervalSince1970]];
    }];
}

+ (NSValueTransformer *)lastMessageTimestampJSONTransformer {
    return [AWSMTLValueTransformer reversibleTransformerWithForwardBlock:^id(NSNumber *number) {
        return [NSDate dateWithTimeIntervalSince1970:[number doubleValue]];
    } reverseBlock:^id(NSDate *date) {
        return [NSString stringWithFormat:@"%f", [date timeIntervalSince1970]];
    }];
}

+ (NSValueTransformer *)lastUpdatedTimestampJSONTransformer {
    return [AWSMTLValueTransformer reversibleTransformerWithForwardBlock:^id(NSNumber *number) {
        return [NSDate dateWithTimeIntervalSince1970:[number doubleValue]];
    } reverseBlock:^id(NSDate *date) {
        return [NSString stringWithFormat:@"%f", [date timeIntervalSince1970]];
    }];
}

+ (NSValueTransformer *)modeJSONTransformer {
    return [AWSMTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value) {
        if ([value caseInsensitiveCompare:@"UNRESTRICTED"] == NSOrderedSame) {
            return @(AWSChimeSDKMessagingChannelModeUnrestricted);
        }
        if ([value caseInsensitiveCompare:@"RESTRICTED"] == NSOrderedSame) {
            return @(AWSChimeSDKMessagingChannelModeRestricted);
        }
        return @(AWSChimeSDKMessagingChannelModeUnknown);
    } reverseBlock:^NSString *(NSNumber *value) {
        switch ([value integerValue]) {
            case AWSChimeSDKMessagingChannelModeUnrestricted:
                return @"UNRESTRICTED";
            case AWSChimeSDKMessagingChannelModeRestricted:
                return @"RESTRICTED";
            default:
                return nil;
        }
    }];
}

+ (NSValueTransformer *)privacyJSONTransformer {
    return [AWSMTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value) {
        if ([value caseInsensitiveCompare:@"PUBLIC"] == NSOrderedSame) {
            return @(AWSChimeSDKMessagingChannelPrivacyPublic);
        }
        if ([value caseInsensitiveCompare:@"PRIVATE"] == NSOrderedSame) {
            return @(AWSChimeSDKMessagingChannelPrivacyPrivate);
        }
        return @(AWSChimeSDKMessagingChannelPrivacyUnknown);
    } reverseBlock:^NSString *(NSNumber *value) {
        switch ([value integerValue]) {
            case AWSChimeSDKMessagingChannelPrivacyPublic:
                return @"PUBLIC";
            case AWSChimeSDKMessagingChannelPrivacyPrivate:
                return @"PRIVATE";
            default:
                return nil;
        }
    }];
}

@end

@implementation AWSChimeSDKMessagingChannelBan

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"channelArn" : @"ChannelArn",
             @"createdBy" : @"CreatedBy",
             @"createdTimestamp" : @"CreatedTimestamp",
             @"member" : @"Member",
             };
}

+ (NSValueTransformer *)createdByJSONTransformer {
    return [NSValueTransformer awsmtl_JSONDictionaryTransformerWithModelClass:[AWSChimeSDKMessagingIdentity class]];
}

+ (NSValueTransformer *)createdTimestampJSONTransformer {
    return [AWSMTLValueTransformer reversibleTransformerWithForwardBlock:^id(NSNumber *number) {
        return [NSDate dateWithTimeIntervalSince1970:[number doubleValue]];
    } reverseBlock:^id(NSDate *date) {
        return [NSString stringWithFormat:@"%f", [date timeIntervalSince1970]];
    }];
}

+ (NSValueTransformer *)memberJSONTransformer {
    return [NSValueTransformer awsmtl_JSONDictionaryTransformerWithModelClass:[AWSChimeSDKMessagingIdentity class]];
}

@end

@implementation AWSChimeSDKMessagingChannelBanSummary

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"member" : @"Member",
             };
}

+ (NSValueTransformer *)memberJSONTransformer {
    return [NSValueTransformer awsmtl_JSONDictionaryTransformerWithModelClass:[AWSChimeSDKMessagingIdentity class]];
}

@end

@implementation AWSChimeSDKMessagingChannelMembership

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"channelArn" : @"ChannelArn",
             @"createdTimestamp" : @"CreatedTimestamp",
             @"invitedBy" : @"InvitedBy",
             @"lastUpdatedTimestamp" : @"LastUpdatedTimestamp",
             @"member" : @"Member",
             @"types" : @"Type",
             };
}

+ (NSValueTransformer *)createdTimestampJSONTransformer {
    return [AWSMTLValueTransformer reversibleTransformerWithForwardBlock:^id(NSNumber *number) {
        return [NSDate dateWithTimeIntervalSince1970:[number doubleValue]];
    } reverseBlock:^id(NSDate *date) {
        return [NSString stringWithFormat:@"%f", [date timeIntervalSince1970]];
    }];
}

+ (NSValueTransformer *)invitedByJSONTransformer {
    return [NSValueTransformer awsmtl_JSONDictionaryTransformerWithModelClass:[AWSChimeSDKMessagingIdentity class]];
}

+ (NSValueTransformer *)lastUpdatedTimestampJSONTransformer {
    return [AWSMTLValueTransformer reversibleTransformerWithForwardBlock:^id(NSNumber *number) {
        return [NSDate dateWithTimeIntervalSince1970:[number doubleValue]];
    } reverseBlock:^id(NSDate *date) {
        return [NSString stringWithFormat:@"%f", [date timeIntervalSince1970]];
    }];
}

+ (NSValueTransformer *)memberJSONTransformer {
    return [NSValueTransformer awsmtl_JSONDictionaryTransformerWithModelClass:[AWSChimeSDKMessagingIdentity class]];
}

+ (NSValueTransformer *)typesJSONTransformer {
    return [AWSMTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value) {
        if ([value caseInsensitiveCompare:@"DEFAULT"] == NSOrderedSame) {
            return @(AWSChimeSDKMessagingChannelMembershipTypeDefault);
        }
        if ([value caseInsensitiveCompare:@"HIDDEN"] == NSOrderedSame) {
            return @(AWSChimeSDKMessagingChannelMembershipTypeHidden);
        }
        return @(AWSChimeSDKMessagingChannelMembershipTypeUnknown);
    } reverseBlock:^NSString *(NSNumber *value) {
        switch ([value integerValue]) {
            case AWSChimeSDKMessagingChannelMembershipTypeDefault:
                return @"DEFAULT";
            case AWSChimeSDKMessagingChannelMembershipTypeHidden:
                return @"HIDDEN";
            default:
                return nil;
        }
    }];
}

@end

@implementation AWSChimeSDKMessagingChannelMembershipForAppInstanceUserSummary

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"appInstanceUserMembershipSummary" : @"AppInstanceUserMembershipSummary",
             @"channelSummary" : @"ChannelSummary",
             };
}

+ (NSValueTransformer *)appInstanceUserMembershipSummaryJSONTransformer {
    return [NSValueTransformer awsmtl_JSONDictionaryTransformerWithModelClass:[AWSChimeSDKMessagingAppInstanceUserMembershipSummary class]];
}

+ (NSValueTransformer *)channelSummaryJSONTransformer {
    return [NSValueTransformer awsmtl_JSONDictionaryTransformerWithModelClass:[AWSChimeSDKMessagingChannelSummary class]];
}

@end

@implementation AWSChimeSDKMessagingChannelMembershipSummary

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"member" : @"Member",
             };
}

+ (NSValueTransformer *)memberJSONTransformer {
    return [NSValueTransformer awsmtl_JSONDictionaryTransformerWithModelClass:[AWSChimeSDKMessagingIdentity class]];
}

@end

@implementation AWSChimeSDKMessagingChannelMessage

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"channelArn" : @"ChannelArn",
             @"content" : @"Content",
             @"createdTimestamp" : @"CreatedTimestamp",
             @"lastEditedTimestamp" : @"LastEditedTimestamp",
             @"lastUpdatedTimestamp" : @"LastUpdatedTimestamp",
             @"messageId" : @"MessageId",
             @"metadata" : @"Metadata",
             @"persistence" : @"Persistence",
             @"redacted" : @"Redacted",
             @"sender" : @"Sender",
             @"types" : @"Type",
             };
}

+ (NSValueTransformer *)createdTimestampJSONTransformer {
    return [AWSMTLValueTransformer reversibleTransformerWithForwardBlock:^id(NSNumber *number) {
        return [NSDate dateWithTimeIntervalSince1970:[number doubleValue]];
    } reverseBlock:^id(NSDate *date) {
        return [NSString stringWithFormat:@"%f", [date timeIntervalSince1970]];
    }];
}

+ (NSValueTransformer *)lastEditedTimestampJSONTransformer {
    return [AWSMTLValueTransformer reversibleTransformerWithForwardBlock:^id(NSNumber *number) {
        return [NSDate dateWithTimeIntervalSince1970:[number doubleValue]];
    } reverseBlock:^id(NSDate *date) {
        return [NSString stringWithFormat:@"%f", [date timeIntervalSince1970]];
    }];
}

+ (NSValueTransformer *)lastUpdatedTimestampJSONTransformer {
    return [AWSMTLValueTransformer reversibleTransformerWithForwardBlock:^id(NSNumber *number) {
        return [NSDate dateWithTimeIntervalSince1970:[number doubleValue]];
    } reverseBlock:^id(NSDate *date) {
        return [NSString stringWithFormat:@"%f", [date timeIntervalSince1970]];
    }];
}

+ (NSValueTransformer *)persistenceJSONTransformer {
    return [AWSMTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value) {
        if ([value caseInsensitiveCompare:@"PERSISTENT"] == NSOrderedSame) {
            return @(AWSChimeSDKMessagingChannelMessagePersistenceTypePersistent);
        }
        if ([value caseInsensitiveCompare:@"NON_PERSISTENT"] == NSOrderedSame) {
            return @(AWSChimeSDKMessagingChannelMessagePersistenceTypeNonPersistent);
        }
        return @(AWSChimeSDKMessagingChannelMessagePersistenceTypeUnknown);
    } reverseBlock:^NSString *(NSNumber *value) {
        switch ([value integerValue]) {
            case AWSChimeSDKMessagingChannelMessagePersistenceTypePersistent:
                return @"PERSISTENT";
            case AWSChimeSDKMessagingChannelMessagePersistenceTypeNonPersistent:
                return @"NON_PERSISTENT";
            default:
                return nil;
        }
    }];
}

+ (NSValueTransformer *)senderJSONTransformer {
    return [NSValueTransformer awsmtl_JSONDictionaryTransformerWithModelClass:[AWSChimeSDKMessagingIdentity class]];
}

+ (NSValueTransformer *)typesJSONTransformer {
    return [AWSMTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value) {
        if ([value caseInsensitiveCompare:@"STANDARD"] == NSOrderedSame) {
            return @(AWSChimeSDKMessagingChannelMessageTypeStandard);
        }
        if ([value caseInsensitiveCompare:@"CONTROL"] == NSOrderedSame) {
            return @(AWSChimeSDKMessagingChannelMessageTypeControl);
        }
        return @(AWSChimeSDKMessagingChannelMessageTypeUnknown);
    } reverseBlock:^NSString *(NSNumber *value) {
        switch ([value integerValue]) {
            case AWSChimeSDKMessagingChannelMessageTypeStandard:
                return @"STANDARD";
            case AWSChimeSDKMessagingChannelMessageTypeControl:
                return @"CONTROL";
            default:
                return nil;
        }
    }];
}

@end

@implementation AWSChimeSDKMessagingChannelMessageSummary

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"content" : @"Content",
             @"createdTimestamp" : @"CreatedTimestamp",
             @"lastEditedTimestamp" : @"LastEditedTimestamp",
             @"lastUpdatedTimestamp" : @"LastUpdatedTimestamp",
             @"messageId" : @"MessageId",
             @"metadata" : @"Metadata",
             @"redacted" : @"Redacted",
             @"sender" : @"Sender",
             @"types" : @"Type",
             };
}

+ (NSValueTransformer *)createdTimestampJSONTransformer {
    return [AWSMTLValueTransformer reversibleTransformerWithForwardBlock:^id(NSNumber *number) {
        return [NSDate dateWithTimeIntervalSince1970:[number doubleValue]];
    } reverseBlock:^id(NSDate *date) {
        return [NSString stringWithFormat:@"%f", [date timeIntervalSince1970]];
    }];
}

+ (NSValueTransformer *)lastEditedTimestampJSONTransformer {
    return [AWSMTLValueTransformer reversibleTransformerWithForwardBlock:^id(NSNumber *number) {
        return [NSDate dateWithTimeIntervalSince1970:[number doubleValue]];
    } reverseBlock:^id(NSDate *date) {
        return [NSString stringWithFormat:@"%f", [date timeIntervalSince1970]];
    }];
}

+ (NSValueTransformer *)lastUpdatedTimestampJSONTransformer {
    return [AWSMTLValueTransformer reversibleTransformerWithForwardBlock:^id(NSNumber *number) {
        return [NSDate dateWithTimeIntervalSince1970:[number doubleValue]];
    } reverseBlock:^id(NSDate *date) {
        return [NSString stringWithFormat:@"%f", [date timeIntervalSince1970]];
    }];
}

+ (NSValueTransformer *)senderJSONTransformer {
    return [NSValueTransformer awsmtl_JSONDictionaryTransformerWithModelClass:[AWSChimeSDKMessagingIdentity class]];
}

+ (NSValueTransformer *)typesJSONTransformer {
    return [AWSMTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value) {
        if ([value caseInsensitiveCompare:@"STANDARD"] == NSOrderedSame) {
            return @(AWSChimeSDKMessagingChannelMessageTypeStandard);
        }
        if ([value caseInsensitiveCompare:@"CONTROL"] == NSOrderedSame) {
            return @(AWSChimeSDKMessagingChannelMessageTypeControl);
        }
        return @(AWSChimeSDKMessagingChannelMessageTypeUnknown);
    } reverseBlock:^NSString *(NSNumber *value) {
        switch ([value integerValue]) {
            case AWSChimeSDKMessagingChannelMessageTypeStandard:
                return @"STANDARD";
            case AWSChimeSDKMessagingChannelMessageTypeControl:
                return @"CONTROL";
            default:
                return nil;
        }
    }];
}

@end

@implementation AWSChimeSDKMessagingChannelModeratedByAppInstanceUserSummary

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"channelSummary" : @"ChannelSummary",
             };
}

+ (NSValueTransformer *)channelSummaryJSONTransformer {
    return [NSValueTransformer awsmtl_JSONDictionaryTransformerWithModelClass:[AWSChimeSDKMessagingChannelSummary class]];
}

@end

@implementation AWSChimeSDKMessagingChannelModerator

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"channelArn" : @"ChannelArn",
             @"createdBy" : @"CreatedBy",
             @"createdTimestamp" : @"CreatedTimestamp",
             @"moderator" : @"Moderator",
             };
}

+ (NSValueTransformer *)createdByJSONTransformer {
    return [NSValueTransformer awsmtl_JSONDictionaryTransformerWithModelClass:[AWSChimeSDKMessagingIdentity class]];
}

+ (NSValueTransformer *)createdTimestampJSONTransformer {
    return [AWSMTLValueTransformer reversibleTransformerWithForwardBlock:^id(NSNumber *number) {
        return [NSDate dateWithTimeIntervalSince1970:[number doubleValue]];
    } reverseBlock:^id(NSDate *date) {
        return [NSString stringWithFormat:@"%f", [date timeIntervalSince1970]];
    }];
}

+ (NSValueTransformer *)moderatorJSONTransformer {
    return [NSValueTransformer awsmtl_JSONDictionaryTransformerWithModelClass:[AWSChimeSDKMessagingIdentity class]];
}

@end

@implementation AWSChimeSDKMessagingChannelModeratorSummary

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"moderator" : @"Moderator",
             };
}

+ (NSValueTransformer *)moderatorJSONTransformer {
    return [NSValueTransformer awsmtl_JSONDictionaryTransformerWithModelClass:[AWSChimeSDKMessagingIdentity class]];
}

@end

@implementation AWSChimeSDKMessagingChannelSummary

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"channelArn" : @"ChannelArn",
             @"lastMessageTimestamp" : @"LastMessageTimestamp",
             @"metadata" : @"Metadata",
             @"mode" : @"Mode",
             @"name" : @"Name",
             @"privacy" : @"Privacy",
             };
}

+ (NSValueTransformer *)lastMessageTimestampJSONTransformer {
    return [AWSMTLValueTransformer reversibleTransformerWithForwardBlock:^id(NSNumber *number) {
        return [NSDate dateWithTimeIntervalSince1970:[number doubleValue]];
    } reverseBlock:^id(NSDate *date) {
        return [NSString stringWithFormat:@"%f", [date timeIntervalSince1970]];
    }];
}

+ (NSValueTransformer *)modeJSONTransformer {
    return [AWSMTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value) {
        if ([value caseInsensitiveCompare:@"UNRESTRICTED"] == NSOrderedSame) {
            return @(AWSChimeSDKMessagingChannelModeUnrestricted);
        }
        if ([value caseInsensitiveCompare:@"RESTRICTED"] == NSOrderedSame) {
            return @(AWSChimeSDKMessagingChannelModeRestricted);
        }
        return @(AWSChimeSDKMessagingChannelModeUnknown);
    } reverseBlock:^NSString *(NSNumber *value) {
        switch ([value integerValue]) {
            case AWSChimeSDKMessagingChannelModeUnrestricted:
                return @"UNRESTRICTED";
            case AWSChimeSDKMessagingChannelModeRestricted:
                return @"RESTRICTED";
            default:
                return nil;
        }
    }];
}

+ (NSValueTransformer *)privacyJSONTransformer {
    return [AWSMTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value) {
        if ([value caseInsensitiveCompare:@"PUBLIC"] == NSOrderedSame) {
            return @(AWSChimeSDKMessagingChannelPrivacyPublic);
        }
        if ([value caseInsensitiveCompare:@"PRIVATE"] == NSOrderedSame) {
            return @(AWSChimeSDKMessagingChannelPrivacyPrivate);
        }
        return @(AWSChimeSDKMessagingChannelPrivacyUnknown);
    } reverseBlock:^NSString *(NSNumber *value) {
        switch ([value integerValue]) {
            case AWSChimeSDKMessagingChannelPrivacyPublic:
                return @"PUBLIC";
            case AWSChimeSDKMessagingChannelPrivacyPrivate:
                return @"PRIVATE";
            default:
                return nil;
        }
    }];
}

@end

@implementation AWSChimeSDKMessagingCreateChannelBanRequest

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"channelArn" : @"ChannelArn",
             @"chimeBearer" : @"ChimeBearer",
             @"memberArn" : @"MemberArn",
             };
}

@end

@implementation AWSChimeSDKMessagingCreateChannelBanResponse

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"channelArn" : @"ChannelArn",
             @"member" : @"Member",
             };
}

+ (NSValueTransformer *)memberJSONTransformer {
    return [NSValueTransformer awsmtl_JSONDictionaryTransformerWithModelClass:[AWSChimeSDKMessagingIdentity class]];
}

@end

@implementation AWSChimeSDKMessagingCreateChannelMembershipRequest

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"channelArn" : @"ChannelArn",
             @"chimeBearer" : @"ChimeBearer",
             @"memberArn" : @"MemberArn",
             @"types" : @"Type",
             };
}

+ (NSValueTransformer *)typesJSONTransformer {
    return [AWSMTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value) {
        if ([value caseInsensitiveCompare:@"DEFAULT"] == NSOrderedSame) {
            return @(AWSChimeSDKMessagingChannelMembershipTypeDefault);
        }
        if ([value caseInsensitiveCompare:@"HIDDEN"] == NSOrderedSame) {
            return @(AWSChimeSDKMessagingChannelMembershipTypeHidden);
        }
        return @(AWSChimeSDKMessagingChannelMembershipTypeUnknown);
    } reverseBlock:^NSString *(NSNumber *value) {
        switch ([value integerValue]) {
            case AWSChimeSDKMessagingChannelMembershipTypeDefault:
                return @"DEFAULT";
            case AWSChimeSDKMessagingChannelMembershipTypeHidden:
                return @"HIDDEN";
            default:
                return nil;
        }
    }];
}

@end

@implementation AWSChimeSDKMessagingCreateChannelMembershipResponse

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"channelArn" : @"ChannelArn",
             @"member" : @"Member",
             };
}

+ (NSValueTransformer *)memberJSONTransformer {
    return [NSValueTransformer awsmtl_JSONDictionaryTransformerWithModelClass:[AWSChimeSDKMessagingIdentity class]];
}

@end

@implementation AWSChimeSDKMessagingCreateChannelModeratorRequest

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"channelArn" : @"ChannelArn",
             @"channelModeratorArn" : @"ChannelModeratorArn",
             @"chimeBearer" : @"ChimeBearer",
             };
}

@end

@implementation AWSChimeSDKMessagingCreateChannelModeratorResponse

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"channelArn" : @"ChannelArn",
             @"channelModerator" : @"ChannelModerator",
             };
}

+ (NSValueTransformer *)channelModeratorJSONTransformer {
    return [NSValueTransformer awsmtl_JSONDictionaryTransformerWithModelClass:[AWSChimeSDKMessagingIdentity class]];
}

@end

@implementation AWSChimeSDKMessagingCreateChannelRequest

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"appInstanceArn" : @"AppInstanceArn",
             @"chimeBearer" : @"ChimeBearer",
             @"clientRequestToken" : @"ClientRequestToken",
             @"metadata" : @"Metadata",
             @"mode" : @"Mode",
             @"name" : @"Name",
             @"privacy" : @"Privacy",
             @"tags" : @"Tags",
             };
}

+ (NSValueTransformer *)modeJSONTransformer {
    return [AWSMTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value) {
        if ([value caseInsensitiveCompare:@"UNRESTRICTED"] == NSOrderedSame) {
            return @(AWSChimeSDKMessagingChannelModeUnrestricted);
        }
        if ([value caseInsensitiveCompare:@"RESTRICTED"] == NSOrderedSame) {
            return @(AWSChimeSDKMessagingChannelModeRestricted);
        }
        return @(AWSChimeSDKMessagingChannelModeUnknown);
    } reverseBlock:^NSString *(NSNumber *value) {
        switch ([value integerValue]) {
            case AWSChimeSDKMessagingChannelModeUnrestricted:
                return @"UNRESTRICTED";
            case AWSChimeSDKMessagingChannelModeRestricted:
                return @"RESTRICTED";
            default:
                return nil;
        }
    }];
}

+ (NSValueTransformer *)privacyJSONTransformer {
    return [AWSMTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value) {
        if ([value caseInsensitiveCompare:@"PUBLIC"] == NSOrderedSame) {
            return @(AWSChimeSDKMessagingChannelPrivacyPublic);
        }
        if ([value caseInsensitiveCompare:@"PRIVATE"] == NSOrderedSame) {
            return @(AWSChimeSDKMessagingChannelPrivacyPrivate);
        }
        return @(AWSChimeSDKMessagingChannelPrivacyUnknown);
    } reverseBlock:^NSString *(NSNumber *value) {
        switch ([value integerValue]) {
            case AWSChimeSDKMessagingChannelPrivacyPublic:
                return @"PUBLIC";
            case AWSChimeSDKMessagingChannelPrivacyPrivate:
                return @"PRIVATE";
            default:
                return nil;
        }
    }];
}

+ (NSValueTransformer *)tagsJSONTransformer {
    return [NSValueTransformer awsmtl_JSONArrayTransformerWithModelClass:[AWSChimeSDKMessagingTag class]];
}

@end

@implementation AWSChimeSDKMessagingCreateChannelResponse

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"channelArn" : @"ChannelArn",
             };
}

@end

@implementation AWSChimeSDKMessagingDeleteChannelBanRequest

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"channelArn" : @"ChannelArn",
             @"chimeBearer" : @"ChimeBearer",
             @"memberArn" : @"MemberArn",
             };
}

@end

@implementation AWSChimeSDKMessagingDeleteChannelMembershipRequest

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"channelArn" : @"ChannelArn",
             @"chimeBearer" : @"ChimeBearer",
             @"memberArn" : @"MemberArn",
             };
}

@end

@implementation AWSChimeSDKMessagingDeleteChannelMessageRequest

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"channelArn" : @"ChannelArn",
             @"chimeBearer" : @"ChimeBearer",
             @"messageId" : @"MessageId",
             };
}

@end

@implementation AWSChimeSDKMessagingDeleteChannelModeratorRequest

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"channelArn" : @"ChannelArn",
             @"channelModeratorArn" : @"ChannelModeratorArn",
             @"chimeBearer" : @"ChimeBearer",
             };
}

@end

@implementation AWSChimeSDKMessagingDeleteChannelRequest

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"channelArn" : @"ChannelArn",
             @"chimeBearer" : @"ChimeBearer",
             };
}

@end

@implementation AWSChimeSDKMessagingDescribeChannelBanRequest

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"channelArn" : @"ChannelArn",
             @"chimeBearer" : @"ChimeBearer",
             @"memberArn" : @"MemberArn",
             };
}

@end

@implementation AWSChimeSDKMessagingDescribeChannelBanResponse

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"channelBan" : @"ChannelBan",
             };
}

+ (NSValueTransformer *)channelBanJSONTransformer {
    return [NSValueTransformer awsmtl_JSONDictionaryTransformerWithModelClass:[AWSChimeSDKMessagingChannelBan class]];
}

@end

@implementation AWSChimeSDKMessagingDescribeChannelMembershipForAppInstanceUserRequest

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"appInstanceUserArn" : @"AppInstanceUserArn",
             @"channelArn" : @"ChannelArn",
             @"chimeBearer" : @"ChimeBearer",
             };
}

@end

@implementation AWSChimeSDKMessagingDescribeChannelMembershipForAppInstanceUserResponse

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"channelMembership" : @"ChannelMembership",
             };
}

+ (NSValueTransformer *)channelMembershipJSONTransformer {
    return [NSValueTransformer awsmtl_JSONDictionaryTransformerWithModelClass:[AWSChimeSDKMessagingChannelMembershipForAppInstanceUserSummary class]];
}

@end

@implementation AWSChimeSDKMessagingDescribeChannelMembershipRequest

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"channelArn" : @"ChannelArn",
             @"chimeBearer" : @"ChimeBearer",
             @"memberArn" : @"MemberArn",
             };
}

@end

@implementation AWSChimeSDKMessagingDescribeChannelMembershipResponse

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"channelMembership" : @"ChannelMembership",
             };
}

+ (NSValueTransformer *)channelMembershipJSONTransformer {
    return [NSValueTransformer awsmtl_JSONDictionaryTransformerWithModelClass:[AWSChimeSDKMessagingChannelMembership class]];
}

@end

@implementation AWSChimeSDKMessagingDescribeChannelModeratedByAppInstanceUserRequest

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"appInstanceUserArn" : @"AppInstanceUserArn",
             @"channelArn" : @"ChannelArn",
             @"chimeBearer" : @"ChimeBearer",
             };
}

@end

@implementation AWSChimeSDKMessagingDescribeChannelModeratedByAppInstanceUserResponse

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"channel" : @"Channel",
             };
}

+ (NSValueTransformer *)channelJSONTransformer {
    return [NSValueTransformer awsmtl_JSONDictionaryTransformerWithModelClass:[AWSChimeSDKMessagingChannelModeratedByAppInstanceUserSummary class]];
}

@end

@implementation AWSChimeSDKMessagingDescribeChannelModeratorRequest

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"channelArn" : @"ChannelArn",
             @"channelModeratorArn" : @"ChannelModeratorArn",
             @"chimeBearer" : @"ChimeBearer",
             };
}

@end

@implementation AWSChimeSDKMessagingDescribeChannelModeratorResponse

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"channelModerator" : @"ChannelModerator",
             };
}

+ (NSValueTransformer *)channelModeratorJSONTransformer {
    return [NSValueTransformer awsmtl_JSONDictionaryTransformerWithModelClass:[AWSChimeSDKMessagingChannelModerator class]];
}

@end

@implementation AWSChimeSDKMessagingDescribeChannelRequest

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"channelArn" : @"ChannelArn",
             @"chimeBearer" : @"ChimeBearer",
             };
}

@end

@implementation AWSChimeSDKMessagingDescribeChannelResponse

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"channel" : @"Channel",
             };
}

+ (NSValueTransformer *)channelJSONTransformer {
    return [NSValueTransformer awsmtl_JSONDictionaryTransformerWithModelClass:[AWSChimeSDKMessagingChannel class]];
}

@end

@implementation AWSChimeSDKMessagingGetChannelMessageRequest

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"channelArn" : @"ChannelArn",
             @"chimeBearer" : @"ChimeBearer",
             @"messageId" : @"MessageId",
             };
}

@end

@implementation AWSChimeSDKMessagingGetChannelMessageResponse

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"channelMessage" : @"ChannelMessage",
             };
}

+ (NSValueTransformer *)channelMessageJSONTransformer {
    return [NSValueTransformer awsmtl_JSONDictionaryTransformerWithModelClass:[AWSChimeSDKMessagingChannelMessage class]];
}

@end

@implementation AWSChimeSDKMessagingGetMessagingSessionEndpointRequest

+ (BOOL)supportsSecureCoding {
    return YES;
}

@end

@implementation AWSChimeSDKMessagingGetMessagingSessionEndpointResponse

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"endpoint" : @"Endpoint",
             };
}

+ (NSValueTransformer *)endpointJSONTransformer {
    return [NSValueTransformer awsmtl_JSONDictionaryTransformerWithModelClass:[AWSChimeSDKMessagingMessagingSessionEndpoint class]];
}

@end

@implementation AWSChimeSDKMessagingIdentity

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"arn" : @"Arn",
             @"name" : @"Name",
             };
}

@end

@implementation AWSChimeSDKMessagingListChannelBansRequest

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"channelArn" : @"ChannelArn",
             @"chimeBearer" : @"ChimeBearer",
             @"maxResults" : @"MaxResults",
             @"nextToken" : @"NextToken",
             };
}

@end

@implementation AWSChimeSDKMessagingListChannelBansResponse

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"channelArn" : @"ChannelArn",
             @"channelBans" : @"ChannelBans",
             @"nextToken" : @"NextToken",
             };
}

+ (NSValueTransformer *)channelBansJSONTransformer {
    return [NSValueTransformer awsmtl_JSONArrayTransformerWithModelClass:[AWSChimeSDKMessagingChannelBanSummary class]];
}

@end

@implementation AWSChimeSDKMessagingListChannelMembershipsForAppInstanceUserRequest

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"appInstanceUserArn" : @"AppInstanceUserArn",
             @"chimeBearer" : @"ChimeBearer",
             @"maxResults" : @"MaxResults",
             @"nextToken" : @"NextToken",
             };
}

@end

@implementation AWSChimeSDKMessagingListChannelMembershipsForAppInstanceUserResponse

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"channelMemberships" : @"ChannelMemberships",
             @"nextToken" : @"NextToken",
             };
}

+ (NSValueTransformer *)channelMembershipsJSONTransformer {
    return [NSValueTransformer awsmtl_JSONArrayTransformerWithModelClass:[AWSChimeSDKMessagingChannelMembershipForAppInstanceUserSummary class]];
}

@end

@implementation AWSChimeSDKMessagingListChannelMembershipsRequest

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"channelArn" : @"ChannelArn",
             @"chimeBearer" : @"ChimeBearer",
             @"maxResults" : @"MaxResults",
             @"nextToken" : @"NextToken",
             @"types" : @"Type",
             };
}

+ (NSValueTransformer *)typesJSONTransformer {
    return [AWSMTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value) {
        if ([value caseInsensitiveCompare:@"DEFAULT"] == NSOrderedSame) {
            return @(AWSChimeSDKMessagingChannelMembershipTypeDefault);
        }
        if ([value caseInsensitiveCompare:@"HIDDEN"] == NSOrderedSame) {
            return @(AWSChimeSDKMessagingChannelMembershipTypeHidden);
        }
        return @(AWSChimeSDKMessagingChannelMembershipTypeUnknown);
    } reverseBlock:^NSString *(NSNumber *value) {
        switch ([value integerValue]) {
            case AWSChimeSDKMessagingChannelMembershipTypeDefault:
                return @"DEFAULT";
            case AWSChimeSDKMessagingChannelMembershipTypeHidden:
                return @"HIDDEN";
            default:
                return nil;
        }
    }];
}

@end

@implementation AWSChimeSDKMessagingListChannelMembershipsResponse

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"channelArn" : @"ChannelArn",
             @"channelMemberships" : @"ChannelMemberships",
             @"nextToken" : @"NextToken",
             };
}

+ (NSValueTransformer *)channelMembershipsJSONTransformer {
    return [NSValueTransformer awsmtl_JSONArrayTransformerWithModelClass:[AWSChimeSDKMessagingChannelMembershipSummary class]];
}

@end

@implementation AWSChimeSDKMessagingListChannelMessagesRequest

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"channelArn" : @"ChannelArn",
             @"chimeBearer" : @"ChimeBearer",
             @"maxResults" : @"MaxResults",
             @"nextToken" : @"NextToken",
             @"notAfter" : @"NotAfter",
             @"notBefore" : @"NotBefore",
             @"sortOrder" : @"SortOrder",
             };
}

+ (NSValueTransformer *)notAfterJSONTransformer {
    return [AWSMTLValueTransformer reversibleTransformerWithForwardBlock:^id(NSNumber *number) {
        return [NSDate dateWithTimeIntervalSince1970:[number doubleValue]];
    } reverseBlock:^id(NSDate *date) {
        return [NSString stringWithFormat:@"%f", [date timeIntervalSince1970]];
    }];
}

+ (NSValueTransformer *)notBeforeJSONTransformer {
    return [AWSMTLValueTransformer reversibleTransformerWithForwardBlock:^id(NSNumber *number) {
        return [NSDate dateWithTimeIntervalSince1970:[number doubleValue]];
    } reverseBlock:^id(NSDate *date) {
        return [NSString stringWithFormat:@"%f", [date timeIntervalSince1970]];
    }];
}

+ (NSValueTransformer *)sortOrderJSONTransformer {
    return [AWSMTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value) {
        if ([value caseInsensitiveCompare:@"ASCENDING"] == NSOrderedSame) {
            return @(AWSChimeSDKMessagingSortOrderAscending);
        }
        if ([value caseInsensitiveCompare:@"DESCENDING"] == NSOrderedSame) {
            return @(AWSChimeSDKMessagingSortOrderDescending);
        }
        return @(AWSChimeSDKMessagingSortOrderUnknown);
    } reverseBlock:^NSString *(NSNumber *value) {
        switch ([value integerValue]) {
            case AWSChimeSDKMessagingSortOrderAscending:
                return @"ASCENDING";
            case AWSChimeSDKMessagingSortOrderDescending:
                return @"DESCENDING";
            default:
                return nil;
        }
    }];
}

@end

@implementation AWSChimeSDKMessagingListChannelMessagesResponse

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"channelArn" : @"ChannelArn",
             @"channelMessages" : @"ChannelMessages",
             @"nextToken" : @"NextToken",
             };
}

+ (NSValueTransformer *)channelMessagesJSONTransformer {
    return [NSValueTransformer awsmtl_JSONArrayTransformerWithModelClass:[AWSChimeSDKMessagingChannelMessageSummary class]];
}

@end

@implementation AWSChimeSDKMessagingListChannelModeratorsRequest

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"channelArn" : @"ChannelArn",
             @"chimeBearer" : @"ChimeBearer",
             @"maxResults" : @"MaxResults",
             @"nextToken" : @"NextToken",
             };
}

@end

@implementation AWSChimeSDKMessagingListChannelModeratorsResponse

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"channelArn" : @"ChannelArn",
             @"channelModerators" : @"ChannelModerators",
             @"nextToken" : @"NextToken",
             };
}

+ (NSValueTransformer *)channelModeratorsJSONTransformer {
    return [NSValueTransformer awsmtl_JSONArrayTransformerWithModelClass:[AWSChimeSDKMessagingChannelModeratorSummary class]];
}

@end

@implementation AWSChimeSDKMessagingListChannelsModeratedByAppInstanceUserRequest

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"appInstanceUserArn" : @"AppInstanceUserArn",
             @"chimeBearer" : @"ChimeBearer",
             @"maxResults" : @"MaxResults",
             @"nextToken" : @"NextToken",
             };
}

@end

@implementation AWSChimeSDKMessagingListChannelsModeratedByAppInstanceUserResponse

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"channels" : @"Channels",
             @"nextToken" : @"NextToken",
             };
}

+ (NSValueTransformer *)channelsJSONTransformer {
    return [NSValueTransformer awsmtl_JSONArrayTransformerWithModelClass:[AWSChimeSDKMessagingChannelModeratedByAppInstanceUserSummary class]];
}

@end

@implementation AWSChimeSDKMessagingListChannelsRequest

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"appInstanceArn" : @"AppInstanceArn",
             @"chimeBearer" : @"ChimeBearer",
             @"maxResults" : @"MaxResults",
             @"nextToken" : @"NextToken",
             @"privacy" : @"Privacy",
             };
}

+ (NSValueTransformer *)privacyJSONTransformer {
    return [AWSMTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value) {
        if ([value caseInsensitiveCompare:@"PUBLIC"] == NSOrderedSame) {
            return @(AWSChimeSDKMessagingChannelPrivacyPublic);
        }
        if ([value caseInsensitiveCompare:@"PRIVATE"] == NSOrderedSame) {
            return @(AWSChimeSDKMessagingChannelPrivacyPrivate);
        }
        return @(AWSChimeSDKMessagingChannelPrivacyUnknown);
    } reverseBlock:^NSString *(NSNumber *value) {
        switch ([value integerValue]) {
            case AWSChimeSDKMessagingChannelPrivacyPublic:
                return @"PUBLIC";
            case AWSChimeSDKMessagingChannelPrivacyPrivate:
                return @"PRIVATE";
            default:
                return nil;
        }
    }];
}

@end

@implementation AWSChimeSDKMessagingListChannelsResponse

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"channels" : @"Channels",
             @"nextToken" : @"NextToken",
             };
}

+ (NSValueTransformer *)channelsJSONTransformer {
    return [NSValueTransformer awsmtl_JSONArrayTransformerWithModelClass:[AWSChimeSDKMessagingChannelSummary class]];
}

@end

@implementation AWSChimeSDKMessagingMessagingSessionEndpoint

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"url" : @"Url",
             };
}

@end

@implementation AWSChimeSDKMessagingRedactChannelMessageRequest

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"channelArn" : @"ChannelArn",
             @"chimeBearer" : @"ChimeBearer",
             @"messageId" : @"MessageId",
             };
}

@end

@implementation AWSChimeSDKMessagingRedactChannelMessageResponse

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"channelArn" : @"ChannelArn",
             @"messageId" : @"MessageId",
             };
}

@end

@implementation AWSChimeSDKMessagingSendChannelMessageRequest

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"channelArn" : @"ChannelArn",
             @"chimeBearer" : @"ChimeBearer",
             @"clientRequestToken" : @"ClientRequestToken",
             @"content" : @"Content",
             @"metadata" : @"Metadata",
             @"persistence" : @"Persistence",
             @"types" : @"Type",
             };
}

+ (NSValueTransformer *)persistenceJSONTransformer {
    return [AWSMTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value) {
        if ([value caseInsensitiveCompare:@"PERSISTENT"] == NSOrderedSame) {
            return @(AWSChimeSDKMessagingChannelMessagePersistenceTypePersistent);
        }
        if ([value caseInsensitiveCompare:@"NON_PERSISTENT"] == NSOrderedSame) {
            return @(AWSChimeSDKMessagingChannelMessagePersistenceTypeNonPersistent);
        }
        return @(AWSChimeSDKMessagingChannelMessagePersistenceTypeUnknown);
    } reverseBlock:^NSString *(NSNumber *value) {
        switch ([value integerValue]) {
            case AWSChimeSDKMessagingChannelMessagePersistenceTypePersistent:
                return @"PERSISTENT";
            case AWSChimeSDKMessagingChannelMessagePersistenceTypeNonPersistent:
                return @"NON_PERSISTENT";
            default:
                return nil;
        }
    }];
}

+ (NSValueTransformer *)typesJSONTransformer {
    return [AWSMTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value) {
        if ([value caseInsensitiveCompare:@"STANDARD"] == NSOrderedSame) {
            return @(AWSChimeSDKMessagingChannelMessageTypeStandard);
        }
        if ([value caseInsensitiveCompare:@"CONTROL"] == NSOrderedSame) {
            return @(AWSChimeSDKMessagingChannelMessageTypeControl);
        }
        return @(AWSChimeSDKMessagingChannelMessageTypeUnknown);
    } reverseBlock:^NSString *(NSNumber *value) {
        switch ([value integerValue]) {
            case AWSChimeSDKMessagingChannelMessageTypeStandard:
                return @"STANDARD";
            case AWSChimeSDKMessagingChannelMessageTypeControl:
                return @"CONTROL";
            default:
                return nil;
        }
    }];
}

@end

@implementation AWSChimeSDKMessagingSendChannelMessageResponse

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"channelArn" : @"ChannelArn",
             @"messageId" : @"MessageId",
             };
}

@end

@implementation AWSChimeSDKMessagingTag

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"key" : @"Key",
             @"value" : @"Value",
             };
}

@end

@implementation AWSChimeSDKMessagingUpdateChannelMessageRequest

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"channelArn" : @"ChannelArn",
             @"chimeBearer" : @"ChimeBearer",
             @"content" : @"Content",
             @"messageId" : @"MessageId",
             @"metadata" : @"Metadata",
             };
}

@end

@implementation AWSChimeSDKMessagingUpdateChannelMessageResponse

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"channelArn" : @"ChannelArn",
             @"messageId" : @"MessageId",
             };
}

@end

@implementation AWSChimeSDKMessagingUpdateChannelReadMarkerRequest

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"channelArn" : @"ChannelArn",
             @"chimeBearer" : @"ChimeBearer",
             };
}

@end

@implementation AWSChimeSDKMessagingUpdateChannelReadMarkerResponse

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"channelArn" : @"ChannelArn",
             };
}

@end

@implementation AWSChimeSDKMessagingUpdateChannelRequest

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"channelArn" : @"ChannelArn",
             @"chimeBearer" : @"ChimeBearer",
             @"metadata" : @"Metadata",
             @"mode" : @"Mode",
             @"name" : @"Name",
             };
}

+ (NSValueTransformer *)modeJSONTransformer {
    return [AWSMTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value) {
        if ([value caseInsensitiveCompare:@"UNRESTRICTED"] == NSOrderedSame) {
            return @(AWSChimeSDKMessagingChannelModeUnrestricted);
        }
        if ([value caseInsensitiveCompare:@"RESTRICTED"] == NSOrderedSame) {
            return @(AWSChimeSDKMessagingChannelModeRestricted);
        }
        return @(AWSChimeSDKMessagingChannelModeUnknown);
    } reverseBlock:^NSString *(NSNumber *value) {
        switch ([value integerValue]) {
            case AWSChimeSDKMessagingChannelModeUnrestricted:
                return @"UNRESTRICTED";
            case AWSChimeSDKMessagingChannelModeRestricted:
                return @"RESTRICTED";
            default:
                return nil;
        }
    }];
}

@end

@implementation AWSChimeSDKMessagingUpdateChannelResponse

+ (BOOL)supportsSecureCoding {
    return YES;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
	return @{
             @"channelArn" : @"ChannelArn",
             };
}

@end
