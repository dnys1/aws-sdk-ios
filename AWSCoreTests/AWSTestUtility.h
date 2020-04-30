//
// Copyright 2010-2017 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

#import <Foundation/Foundation.h>
#import "AWSCocoaLumberjack.h"
#import <AWSCore/AWSCore.h>

FOUNDATION_EXPORT NSString *const AWSTestUtilitySTSKey;
FOUNDATION_EXPORT NSString *const AWSTestUtilityCognitoIdentityServiceKey;

@interface AWSTestUtility : NSObject

+ (void)setupSessionCredentialsProvider;
+ (NSDictionary *)getIntegrationTestConfigurationForPackageId:(NSString *) packageId;
+ (AWSRegionType)getRegionFromTestConfiguration;
+ (NSDictionary *) getTestConfigurationJSON;
+ (NSString *) getAccountIdFromTestConfiguration;
+ (NSDictionary *) getCredentialsFromTestConfiguration;
+ (void)setupCognitoIdentityService;

+ (void)setupCredentialsViaFile;
+ (void)setupFakeCognitoCredentialsProvider;
+ (void)setupCognitoCredentialsProvider;
+ (void)setupCognitoCredentialsProviderForRegion:(AWSRegionType)region;
+ (void)setupSTS;

+ (NSDictionary<NSString *, NSString *> *)getCredentialsJsonAsDictionary;
+ (AWSRegionType)getDefaultRegionType;
+ (AWSCognitoCredentialsProvider *)getCognitoCredentialsProviderFromFileForRegion:(AWSRegionType)region;
+ (AWSStaticCredentialsProvider *)getStaticCredentialsProviderFromFile;

+ (BOOL)isCognitoSupportedInDefaultRegion;
+ (BOOL)isCognitoSupportedInRegion:(AWSRegionType)region;

- (NSDate *)mockDateSwizzle;
+ (void)setMockDate:(NSDate *)aMockDate;
+ (void)setupSwizzling;
+ (void)revertSwizzling;
+ (NSString *)getIoTEndPoint:(NSString *) endpointName;

@end