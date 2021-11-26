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

#import "AWSTranslateResources.h"
#import <AWSCore/AWSCocoaLumberjack.h>

@interface AWSTranslateResources ()

@property (nonatomic, strong) NSDictionary *definitionDictionary;

@end

@implementation AWSTranslateResources

+ (instancetype)sharedInstance {
    static AWSTranslateResources *_sharedResources = nil;
    static dispatch_once_t once_token;

    dispatch_once(&once_token, ^{
        _sharedResources = [AWSTranslateResources new];
    });

    return _sharedResources;
}

- (NSDictionary *)JSONObject {
    return self.definitionDictionary;
}

- (instancetype)init {
    if (self = [super init]) {
        //init method
        NSError *error = nil;
        _definitionDictionary = [NSJSONSerialization JSONObjectWithData:[[self definitionString] dataUsingEncoding:NSUTF8StringEncoding]
                                                                options:kNilOptions
                                                                  error:&error];
        if (_definitionDictionary == nil) {
            if (error) {
                AWSDDLogError(@"Failed to parse JSON service definition: %@",error);
            }
        }
    }
    return self;
}

- (NSString *)definitionString {
    return @"{\
  \"version\":\"2.0\",\
  \"metadata\":{\
    \"apiVersion\":\"2017-07-01\",\
    \"endpointPrefix\":\"translate\",\
    \"jsonVersion\":\"1.1\",\
    \"protocol\":\"json\",\
    \"serviceFullName\":\"Amazon Translate\",\
    \"serviceId\":\"Translate\",\
    \"signatureVersion\":\"v4\",\
    \"signingName\":\"translate\",\
    \"targetPrefix\":\"AWSShineFrontendService_20170701\",\
    \"uid\":\"translate-2017-07-01\"\
  },\
  \"operations\":{\
    \"CreateParallelData\":{\
      \"name\":\"CreateParallelData\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"CreateParallelDataRequest\"},\
      \"output\":{\"shape\":\"CreateParallelDataResponse\"},\
      \"errors\":[\
        {\"shape\":\"InvalidParameterValueException\"},\
        {\"shape\":\"InvalidRequestException\"},\
        {\"shape\":\"LimitExceededException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"ConflictException\"},\
        {\"shape\":\"InternalServerException\"}\
      ],\
      \"documentation\":\"<p>Creates a parallel data resource in Amazon Translate by importing an input file from Amazon S3. Parallel data files contain examples that show how you want segments of text to be translated. By adding parallel data, you can influence the style, tone, and word choice in your translation output.</p>\"\
    },\
    \"DeleteParallelData\":{\
      \"name\":\"DeleteParallelData\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"DeleteParallelDataRequest\"},\
      \"output\":{\"shape\":\"DeleteParallelDataResponse\"},\
      \"errors\":[\
        {\"shape\":\"ConcurrentModificationException\"},\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"InternalServerException\"}\
      ],\
      \"documentation\":\"<p>Deletes a parallel data resource in Amazon Translate.</p>\"\
    },\
    \"DeleteTerminology\":{\
      \"name\":\"DeleteTerminology\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"DeleteTerminologyRequest\"},\
      \"errors\":[\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"InvalidParameterValueException\"},\
        {\"shape\":\"InternalServerException\"}\
      ],\
      \"documentation\":\"<p>A synchronous action that deletes a custom terminology.</p>\"\
    },\
    \"DescribeTextTranslationJob\":{\
      \"name\":\"DescribeTextTranslationJob\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"DescribeTextTranslationJobRequest\"},\
      \"output\":{\"shape\":\"DescribeTextTranslationJobResponse\"},\
      \"errors\":[\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"InternalServerException\"}\
      ],\
      \"documentation\":\"<p>Gets the properties associated with an asynchronous batch translation job including name, ID, status, source and target languages, input/output S3 buckets, and so on.</p>\"\
    },\
    \"GetParallelData\":{\
      \"name\":\"GetParallelData\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"GetParallelDataRequest\"},\
      \"output\":{\"shape\":\"GetParallelDataResponse\"},\
      \"errors\":[\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"InvalidParameterValueException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"InternalServerException\"}\
      ],\
      \"documentation\":\"<p>Provides information about a parallel data resource.</p>\"\
    },\
    \"GetTerminology\":{\
      \"name\":\"GetTerminology\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"GetTerminologyRequest\"},\
      \"output\":{\"shape\":\"GetTerminologyResponse\"},\
      \"errors\":[\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"InvalidParameterValueException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"InternalServerException\"}\
      ],\
      \"documentation\":\"<p>Retrieves a custom terminology.</p>\"\
    },\
    \"ImportTerminology\":{\
      \"name\":\"ImportTerminology\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"ImportTerminologyRequest\"},\
      \"output\":{\"shape\":\"ImportTerminologyResponse\"},\
      \"errors\":[\
        {\"shape\":\"InvalidParameterValueException\"},\
        {\"shape\":\"LimitExceededException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"InternalServerException\"}\
      ],\
      \"documentation\":\"<p>Creates or updates a custom terminology, depending on whether or not one already exists for the given terminology name. Importing a terminology with the same name as an existing one will merge the terminologies based on the chosen merge strategy. Currently, the only supported merge strategy is OVERWRITE, and so the imported terminology will overwrite an existing terminology of the same name.</p> <p>If you import a terminology that overwrites an existing one, the new terminology take up to 10 minutes to fully propagate and be available for use in a translation due to cache policies with the DataPlane service that performs the translations.</p>\"\
    },\
    \"ListParallelData\":{\
      \"name\":\"ListParallelData\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"ListParallelDataRequest\"},\
      \"output\":{\"shape\":\"ListParallelDataResponse\"},\
      \"errors\":[\
        {\"shape\":\"InvalidParameterValueException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"InternalServerException\"}\
      ],\
      \"documentation\":\"<p>Provides a list of your parallel data resources in Amazon Translate.</p>\"\
    },\
    \"ListTerminologies\":{\
      \"name\":\"ListTerminologies\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"ListTerminologiesRequest\"},\
      \"output\":{\"shape\":\"ListTerminologiesResponse\"},\
      \"errors\":[\
        {\"shape\":\"InvalidParameterValueException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"InternalServerException\"}\
      ],\
      \"documentation\":\"<p>Provides a list of custom terminologies associated with your account.</p>\"\
    },\
    \"ListTextTranslationJobs\":{\
      \"name\":\"ListTextTranslationJobs\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"ListTextTranslationJobsRequest\"},\
      \"output\":{\"shape\":\"ListTextTranslationJobsResponse\"},\
      \"errors\":[\
        {\"shape\":\"InvalidRequestException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"InvalidFilterException\"},\
        {\"shape\":\"InternalServerException\"}\
      ],\
      \"documentation\":\"<p>Gets a list of the batch translation jobs that you have submitted.</p>\"\
    },\
    \"StartTextTranslationJob\":{\
      \"name\":\"StartTextTranslationJob\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"StartTextTranslationJobRequest\"},\
      \"output\":{\"shape\":\"StartTextTranslationJobResponse\"},\
      \"errors\":[\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"UnsupportedLanguagePairException\"},\
        {\"shape\":\"InvalidRequestException\"},\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"InvalidParameterValueException\"},\
        {\"shape\":\"InternalServerException\"}\
      ],\
      \"documentation\":\"<p>Starts an asynchronous batch translation job. Batch translation jobs can be used to translate large volumes of text across multiple documents at once. For more information, see <a>async</a>.</p> <p>Batch translation jobs can be described with the <a>DescribeTextTranslationJob</a> operation, listed with the <a>ListTextTranslationJobs</a> operation, and stopped with the <a>StopTextTranslationJob</a> operation.</p> <note> <p>Amazon Translate does not support batch translation of multiple source languages at once.</p> </note>\"\
    },\
    \"StopTextTranslationJob\":{\
      \"name\":\"StopTextTranslationJob\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"StopTextTranslationJobRequest\"},\
      \"output\":{\"shape\":\"StopTextTranslationJobResponse\"},\
      \"errors\":[\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"InternalServerException\"}\
      ],\
      \"documentation\":\"<p>Stops an asynchronous batch translation job that is in progress.</p> <p>If the job's state is <code>IN_PROGRESS</code>, the job will be marked for termination and put into the <code>STOP_REQUESTED</code> state. If the job completes before it can be stopped, it is put into the <code>COMPLETED</code> state. Otherwise, the job is put into the <code>STOPPED</code> state.</p> <p>Asynchronous batch translation jobs are started with the <a>StartTextTranslationJob</a> operation. You can use the <a>DescribeTextTranslationJob</a> or <a>ListTextTranslationJobs</a> operations to get a batch translation job's <code>JobId</code>.</p>\"\
    },\
    \"TranslateText\":{\
      \"name\":\"TranslateText\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"TranslateTextRequest\"},\
      \"output\":{\"shape\":\"TranslateTextResponse\"},\
      \"errors\":[\
        {\"shape\":\"InvalidRequestException\"},\
        {\"shape\":\"TextSizeLimitExceededException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"UnsupportedLanguagePairException\"},\
        {\"shape\":\"DetectedLanguageLowConfidenceException\"},\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"InternalServerException\"},\
        {\"shape\":\"ServiceUnavailableException\"}\
      ],\
      \"documentation\":\"<p>Translates input text from the source language to the target language. For a list of available languages and language codes, see <a>what-is-languages</a>.</p>\"\
    },\
    \"UpdateParallelData\":{\
      \"name\":\"UpdateParallelData\",\
      \"http\":{\
        \"method\":\"POST\",\
        \"requestUri\":\"/\"\
      },\
      \"input\":{\"shape\":\"UpdateParallelDataRequest\"},\
      \"output\":{\"shape\":\"UpdateParallelDataResponse\"},\
      \"errors\":[\
        {\"shape\":\"ConcurrentModificationException\"},\
        {\"shape\":\"InvalidParameterValueException\"},\
        {\"shape\":\"InvalidRequestException\"},\
        {\"shape\":\"LimitExceededException\"},\
        {\"shape\":\"TooManyRequestsException\"},\
        {\"shape\":\"ConflictException\"},\
        {\"shape\":\"ResourceNotFoundException\"},\
        {\"shape\":\"InternalServerException\"}\
      ],\
      \"documentation\":\"<p>Updates a previously created parallel data resource by importing a new input file from Amazon S3.</p>\"\
    }\
  },\
  \"shapes\":{\
    \"AppliedTerminology\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Name\":{\
          \"shape\":\"ResourceName\",\
          \"documentation\":\"<p>The name of the custom terminology applied to the input text by Amazon Translate for the translated text response.</p>\"\
        },\
        \"Terms\":{\
          \"shape\":\"TermList\",\
          \"documentation\":\"<p>The specific terms of the custom terminology applied to the input text by Amazon Translate for the translated text response. A maximum of 250 terms will be returned, and the specific terms applied will be the first 250 terms in the source text. </p>\"\
        }\
      },\
      \"documentation\":\"<p>The custom terminology applied to the input text by Amazon Translate for the translated text response. This is optional in the response and will only be present if you specified terminology input in the request. Currently, only one terminology can be applied per TranslateText request.</p>\"\
    },\
    \"AppliedTerminologyList\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"AppliedTerminology\"}\
    },\
    \"BoundedLengthString\":{\
      \"type\":\"string\",\
      \"max\":5000,\
      \"min\":1,\
      \"pattern\":\"[\\\\P{M}\\\\p{M}]{1,5000}\"\
    },\
    \"ClientTokenString\":{\
      \"type\":\"string\",\
      \"max\":64,\
      \"min\":1,\
      \"pattern\":\"^[a-zA-Z0-9-]+$\"\
    },\
    \"ConcurrentModificationException\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Message\":{\"shape\":\"String\"}\
      },\
      \"documentation\":\"<p>Another modification is being made. That modification must complete before you can make your change.</p>\",\
      \"exception\":true\
    },\
    \"ConflictException\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Message\":{\"shape\":\"String\"}\
      },\
      \"documentation\":\"<p>There was a conflict processing the request. Try your request again.</p>\",\
      \"exception\":true\
    },\
    \"ContentType\":{\
      \"type\":\"string\",\
      \"max\":256,\
      \"pattern\":\"^[-\\\\w.]+\\\\/[-\\\\w.+]+$\"\
    },\
    \"CreateParallelDataRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"Name\",\
        \"ParallelDataConfig\",\
        \"ClientToken\"\
      ],\
      \"members\":{\
        \"Name\":{\
          \"shape\":\"ResourceName\",\
          \"documentation\":\"<p>A custom name for the parallel data resource in Amazon Translate. You must assign a name that is unique in the account and region.</p>\"\
        },\
        \"Description\":{\
          \"shape\":\"Description\",\
          \"documentation\":\"<p>A custom description for the parallel data resource in Amazon Translate.</p>\"\
        },\
        \"ParallelDataConfig\":{\
          \"shape\":\"ParallelDataConfig\",\
          \"documentation\":\"<p>Specifies the format and S3 location of the parallel data input file.</p>\"\
        },\
        \"EncryptionKey\":{\"shape\":\"EncryptionKey\"},\
        \"ClientToken\":{\
          \"shape\":\"ClientTokenString\",\
          \"documentation\":\"<p>A unique identifier for the request. This token is automatically generated when you use Amazon Translate through an AWS SDK.</p>\",\
          \"idempotencyToken\":true\
        }\
      }\
    },\
    \"CreateParallelDataResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Name\":{\
          \"shape\":\"ResourceName\",\
          \"documentation\":\"<p>The custom name that you assigned to the parallel data resource.</p>\"\
        },\
        \"Status\":{\
          \"shape\":\"ParallelDataStatus\",\
          \"documentation\":\"<p>The status of the parallel data resource. When the resource is ready for you to use, the status is <code>ACTIVE</code>.</p>\"\
        }\
      }\
    },\
    \"DeleteParallelDataRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\"Name\"],\
      \"members\":{\
        \"Name\":{\
          \"shape\":\"ResourceName\",\
          \"documentation\":\"<p>The name of the parallel data resource that is being deleted.</p>\"\
        }\
      }\
    },\
    \"DeleteParallelDataResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Name\":{\
          \"shape\":\"ResourceName\",\
          \"documentation\":\"<p>The name of the parallel data resource that is being deleted.</p>\"\
        },\
        \"Status\":{\
          \"shape\":\"ParallelDataStatus\",\
          \"documentation\":\"<p>The status of the parallel data deletion.</p>\"\
        }\
      }\
    },\
    \"DeleteTerminologyRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\"Name\"],\
      \"members\":{\
        \"Name\":{\
          \"shape\":\"ResourceName\",\
          \"documentation\":\"<p>The name of the custom terminology being deleted. </p>\"\
        }\
      }\
    },\
    \"DescribeTextTranslationJobRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\"JobId\"],\
      \"members\":{\
        \"JobId\":{\
          \"shape\":\"JobId\",\
          \"documentation\":\"<p>The identifier that Amazon Translate generated for the job. The <a>StartTextTranslationJob</a> operation returns this identifier in its response.</p>\"\
        }\
      }\
    },\
    \"DescribeTextTranslationJobResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"TextTranslationJobProperties\":{\
          \"shape\":\"TextTranslationJobProperties\",\
          \"documentation\":\"<p>An object that contains the properties associated with an asynchronous batch translation job.</p>\"\
        }\
      }\
    },\
    \"Description\":{\
      \"type\":\"string\",\
      \"max\":256,\
      \"pattern\":\"[\\\\P{M}\\\\p{M}]{0,256}\"\
    },\
    \"DetectedLanguageLowConfidenceException\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Message\":{\"shape\":\"String\"},\
        \"DetectedLanguageCode\":{\
          \"shape\":\"LanguageCodeString\",\
          \"documentation\":\"<p>The language code of the auto-detected language from Amazon Comprehend.</p>\"\
        }\
      },\
      \"documentation\":\"<p>The confidence that Amazon Comprehend accurately detected the source language is low. If a low confidence level is acceptable for your application, you can use the language in the exception to call Amazon Translate again. For more information, see the <a href=\\\"https://docs.aws.amazon.com/comprehend/latest/dg/API_DetectDominantLanguage.html\\\">DetectDominantLanguage</a> operation in the <i>Amazon Comprehend Developer Guide</i>. </p>\",\
      \"exception\":true\
    },\
    \"Directionality\":{\
      \"type\":\"string\",\
      \"enum\":[\
        \"UNI\",\
        \"MULTI\"\
      ]\
    },\
    \"EncryptionKey\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"Type\",\
        \"Id\"\
      ],\
      \"members\":{\
        \"Type\":{\
          \"shape\":\"EncryptionKeyType\",\
          \"documentation\":\"<p>The type of encryption key used by Amazon Translate to encrypt custom terminologies.</p>\"\
        },\
        \"Id\":{\
          \"shape\":\"EncryptionKeyID\",\
          \"documentation\":\"<p>The Amazon Resource Name (ARN) of the encryption key being used to encrypt the custom terminology.</p>\"\
        }\
      },\
      \"documentation\":\"<p>The encryption key used to encrypt this object.</p>\"\
    },\
    \"EncryptionKeyID\":{\
      \"type\":\"string\",\
      \"max\":400,\
      \"min\":1,\
      \"pattern\":\"(arn:aws((-us-gov)|(-iso)|(-iso-b)|(-cn))?:kms:)?([a-z]{2}-[a-z]+(-[a-z]+)?-\\\\d:)?(\\\\d{12}:)?(((key/)?[a-zA-Z0-9-_]+)|(alias/[a-zA-Z0-9:/_-]+))\"\
    },\
    \"EncryptionKeyType\":{\
      \"type\":\"string\",\
      \"enum\":[\"KMS\"]\
    },\
    \"GetParallelDataRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\"Name\"],\
      \"members\":{\
        \"Name\":{\
          \"shape\":\"ResourceName\",\
          \"documentation\":\"<p>The name of the parallel data resource that is being retrieved.</p>\"\
        }\
      }\
    },\
    \"GetParallelDataResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"ParallelDataProperties\":{\
          \"shape\":\"ParallelDataProperties\",\
          \"documentation\":\"<p>The properties of the parallel data resource that is being retrieved.</p>\"\
        },\
        \"DataLocation\":{\
          \"shape\":\"ParallelDataDataLocation\",\
          \"documentation\":\"<p>The Amazon S3 location of the most recent parallel data input file that was successfully imported into Amazon Translate. The location is returned as a presigned URL that has a 30 minute expiration.</p> <important> <p>Amazon Translate doesn't scan parallel data input files for the risk of CSV injection attacks. </p> <p>CSV injection occurs when a .csv or .tsv file is altered so that a record contains malicious code. The record begins with a special character, such as =, +, -, or @. When the file is opened in a spreadsheet program, the program might interpret the record as a formula and run the code within it.</p> <p>Before you download a parallel data input file from Amazon S3, ensure that you recognize the file and trust its creator.</p> </important>\"\
        },\
        \"AuxiliaryDataLocation\":{\
          \"shape\":\"ParallelDataDataLocation\",\
          \"documentation\":\"<p>The Amazon S3 location of a file that provides any errors or warnings that were produced by your input file. This file was created when Amazon Translate attempted to create a parallel data resource. The location is returned as a presigned URL to that has a 30 minute expiration.</p>\"\
        },\
        \"LatestUpdateAttemptAuxiliaryDataLocation\":{\
          \"shape\":\"ParallelDataDataLocation\",\
          \"documentation\":\"<p>The Amazon S3 location of a file that provides any errors or warnings that were produced by your input file. This file was created when Amazon Translate attempted to update a parallel data resource. The location is returned as a presigned URL to that has a 30 minute expiration.</p>\"\
        }\
      }\
    },\
    \"GetTerminologyRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\"Name\"],\
      \"members\":{\
        \"Name\":{\
          \"shape\":\"ResourceName\",\
          \"documentation\":\"<p>The name of the custom terminology being retrieved.</p>\"\
        },\
        \"TerminologyDataFormat\":{\
          \"shape\":\"TerminologyDataFormat\",\
          \"documentation\":\"<p>The data format of the custom terminology being retrieved.</p> <p>If you don't specify this parameter, Amazon Translate returns a file that has the same format as the file that was imported to create the terminology. </p> <p>If you specify this parameter when you retrieve a multi-directional terminology resource, you must specify the same format as that of the input file that was imported to create it. Otherwise, Amazon Translate throws an error.</p>\"\
        }\
      }\
    },\
    \"GetTerminologyResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"TerminologyProperties\":{\
          \"shape\":\"TerminologyProperties\",\
          \"documentation\":\"<p>The properties of the custom terminology being retrieved.</p>\"\
        },\
        \"TerminologyDataLocation\":{\
          \"shape\":\"TerminologyDataLocation\",\
          \"documentation\":\"<p>The data location of the custom terminology being retrieved. The custom terminology file is returned in a presigned url that has a 30 minute expiration.</p>\"\
        },\
        \"AuxiliaryDataLocation\":{\
          \"shape\":\"TerminologyDataLocation\",\
          \"documentation\":\"<p>The Amazon S3 location of a file that provides any errors or warnings that were produced by your input file. This file was created when Amazon Translate attempted to create a terminology resource. The location is returned as a presigned URL to that has a 30 minute expiration.</p>\"\
        }\
      }\
    },\
    \"IamRoleArn\":{\
      \"type\":\"string\",\
      \"max\":2048,\
      \"min\":20,\
      \"pattern\":\"arn:aws(-[^:]+)?:iam::[0-9]{12}:role/.+\"\
    },\
    \"ImportTerminologyRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"Name\",\
        \"MergeStrategy\",\
        \"TerminologyData\"\
      ],\
      \"members\":{\
        \"Name\":{\
          \"shape\":\"ResourceName\",\
          \"documentation\":\"<p>The name of the custom terminology being imported.</p>\"\
        },\
        \"MergeStrategy\":{\
          \"shape\":\"MergeStrategy\",\
          \"documentation\":\"<p>The merge strategy of the custom terminology being imported. Currently, only the OVERWRITE merge strategy is supported. In this case, the imported terminology will overwrite an existing terminology of the same name.</p>\"\
        },\
        \"Description\":{\
          \"shape\":\"Description\",\
          \"documentation\":\"<p>The description of the custom terminology being imported.</p>\"\
        },\
        \"TerminologyData\":{\
          \"shape\":\"TerminologyData\",\
          \"documentation\":\"<p>The terminology data for the custom terminology being imported.</p>\"\
        },\
        \"EncryptionKey\":{\
          \"shape\":\"EncryptionKey\",\
          \"documentation\":\"<p>The encryption key for the custom terminology being imported.</p>\"\
        }\
      }\
    },\
    \"ImportTerminologyResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"TerminologyProperties\":{\
          \"shape\":\"TerminologyProperties\",\
          \"documentation\":\"<p>The properties of the custom terminology being imported.</p>\"\
        },\
        \"AuxiliaryDataLocation\":{\
          \"shape\":\"TerminologyDataLocation\",\
          \"documentation\":\"<p>The Amazon S3 location of a file that provides any errors or warnings that were produced by your input file. This file was created when Amazon Translate attempted to create a terminology resource. The location is returned as a presigned URL to that has a 30 minute expiration.</p>\"\
        }\
      }\
    },\
    \"InputDataConfig\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"S3Uri\",\
        \"ContentType\"\
      ],\
      \"members\":{\
        \"S3Uri\":{\
          \"shape\":\"S3Uri\",\
          \"documentation\":\"<p>The URI of the AWS S3 folder that contains the input file. The folder must be in the same Region as the API endpoint you are calling.</p>\"\
        },\
        \"ContentType\":{\
          \"shape\":\"ContentType\",\
          \"documentation\":\"<p>Describes the format of the data that you submit to Amazon Translate as input. You can specify one of the following multipurpose internet mail extension (MIME) types:</p> <ul> <li> <p> <code>text/html</code>: The input data consists of one or more HTML files. Amazon Translate translates only the text that resides in the <code>html</code> element in each file.</p> </li> <li> <p> <code>text/plain</code>: The input data consists of one or more unformatted text files. Amazon Translate translates every character in this type of input.</p> </li> <li> <p> <code>application/vnd.openxmlformats-officedocument.wordprocessingml.document</code>: The input data consists of one or more Word documents (.docx).</p> </li> <li> <p> <code>application/vnd.openxmlformats-officedocument.presentationml.presentation</code>: The input data consists of one or more PowerPoint Presentation files (.pptx).</p> </li> <li> <p> <code>application/vnd.openxmlformats-officedocument.spreadsheetml.sheet</code>: The input data consists of one or more Excel Workbook files (.xlsx).</p> </li> <li> <p> <code>application/x-xliff+xml</code>: The input data consists of one or more XML Localization Interchange File Format (XLIFF) files (.xlf). Amazon Translate supports only XLIFF version 1.2.</p> </li> </ul> <important> <p>If you structure your input data as HTML, ensure that you set this parameter to <code>text/html</code>. By doing so, you cut costs by limiting the translation to the contents of the <code>html</code> element in each file. Otherwise, if you set this parameter to <code>text/plain</code>, your costs will cover the translation of every character.</p> </important>\"\
        }\
      },\
      \"documentation\":\"<p>The input configuration properties for requesting a batch translation job.</p>\"\
    },\
    \"Integer\":{\"type\":\"integer\"},\
    \"InternalServerException\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Message\":{\"shape\":\"String\"}\
      },\
      \"documentation\":\"<p>An internal server error occurred. Retry your request.</p>\",\
      \"exception\":true,\
      \"fault\":true\
    },\
    \"InvalidFilterException\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Message\":{\"shape\":\"String\"}\
      },\
      \"documentation\":\"<p>The filter specified for the operation is invalid. Specify a different filter.</p>\",\
      \"exception\":true\
    },\
    \"InvalidParameterValueException\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Message\":{\"shape\":\"String\"}\
      },\
      \"documentation\":\"<p>The value of the parameter is invalid. Review the value of the parameter you are using to correct it, and then retry your operation.</p>\",\
      \"exception\":true\
    },\
    \"InvalidRequestException\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Message\":{\"shape\":\"String\"}\
      },\
      \"documentation\":\"<p> The request that you made is invalid. Check your request to determine why it's invalid and then retry the request. </p>\",\
      \"exception\":true\
    },\
    \"JobDetails\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"TranslatedDocumentsCount\":{\
          \"shape\":\"Integer\",\
          \"documentation\":\"<p>The number of documents successfully processed during a translation job.</p>\"\
        },\
        \"DocumentsWithErrorsCount\":{\
          \"shape\":\"Integer\",\
          \"documentation\":\"<p>The number of documents that could not be processed during a translation job.</p>\"\
        },\
        \"InputDocumentsCount\":{\
          \"shape\":\"Integer\",\
          \"documentation\":\"<p>The number of documents used as input in a translation job.</p>\"\
        }\
      },\
      \"documentation\":\"<p>The number of documents successfully and unsuccessfully processed during a translation job.</p>\"\
    },\
    \"JobId\":{\
      \"type\":\"string\",\
      \"max\":32,\
      \"min\":1,\
      \"pattern\":\"^([\\\\p{L}\\\\p{Z}\\\\p{N}_.:/=+\\\\-%@]*)$\"\
    },\
    \"JobName\":{\
      \"type\":\"string\",\
      \"max\":256,\
      \"min\":1,\
      \"pattern\":\"^([\\\\p{L}\\\\p{Z}\\\\p{N}_.:/=+\\\\-%@]*)$\"\
    },\
    \"JobStatus\":{\
      \"type\":\"string\",\
      \"enum\":[\
        \"SUBMITTED\",\
        \"IN_PROGRESS\",\
        \"COMPLETED\",\
        \"COMPLETED_WITH_ERROR\",\
        \"FAILED\",\
        \"STOP_REQUESTED\",\
        \"STOPPED\"\
      ]\
    },\
    \"LanguageCodeString\":{\
      \"type\":\"string\",\
      \"max\":5,\
      \"min\":2\
    },\
    \"LanguageCodeStringList\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"LanguageCodeString\"}\
    },\
    \"LimitExceededException\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Message\":{\"shape\":\"String\"}\
      },\
      \"documentation\":\"<p>The specified limit has been exceeded. Review your request and retry it with a quantity below the stated limit.</p>\",\
      \"exception\":true\
    },\
    \"ListParallelDataRequest\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"NextToken\":{\
          \"shape\":\"NextToken\",\
          \"documentation\":\"<p>A string that specifies the next page of results to return in a paginated response.</p>\"\
        },\
        \"MaxResults\":{\
          \"shape\":\"MaxResultsInteger\",\
          \"documentation\":\"<p>The maximum number of parallel data resources returned for each request.</p>\"\
        }\
      }\
    },\
    \"ListParallelDataResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"ParallelDataPropertiesList\":{\
          \"shape\":\"ParallelDataPropertiesList\",\
          \"documentation\":\"<p>The properties of the parallel data resources returned by this request.</p>\"\
        },\
        \"NextToken\":{\
          \"shape\":\"NextToken\",\
          \"documentation\":\"<p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>\"\
        }\
      }\
    },\
    \"ListTerminologiesRequest\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"NextToken\":{\
          \"shape\":\"NextToken\",\
          \"documentation\":\"<p>If the result of the request to ListTerminologies was truncated, include the NextToken to fetch the next group of custom terminologies. </p>\"\
        },\
        \"MaxResults\":{\
          \"shape\":\"MaxResultsInteger\",\
          \"documentation\":\"<p>The maximum number of custom terminologies returned per list request.</p>\"\
        }\
      }\
    },\
    \"ListTerminologiesResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"TerminologyPropertiesList\":{\
          \"shape\":\"TerminologyPropertiesList\",\
          \"documentation\":\"<p>The properties list of the custom terminologies returned on the list request.</p>\"\
        },\
        \"NextToken\":{\
          \"shape\":\"NextToken\",\
          \"documentation\":\"<p> If the response to the ListTerminologies was truncated, the NextToken fetches the next group of custom terminologies.</p>\"\
        }\
      }\
    },\
    \"ListTextTranslationJobsRequest\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Filter\":{\
          \"shape\":\"TextTranslationJobFilter\",\
          \"documentation\":\"<p>The parameters that specify which batch translation jobs to retrieve. Filters include job name, job status, and submission time. You can only set one filter at a time.</p>\"\
        },\
        \"NextToken\":{\
          \"shape\":\"NextToken\",\
          \"documentation\":\"<p>The token to request the next page of results.</p>\"\
        },\
        \"MaxResults\":{\
          \"shape\":\"MaxResultsInteger\",\
          \"documentation\":\"<p>The maximum number of results to return in each page. The default value is 100.</p>\"\
        }\
      }\
    },\
    \"ListTextTranslationJobsResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"TextTranslationJobPropertiesList\":{\
          \"shape\":\"TextTranslationJobPropertiesList\",\
          \"documentation\":\"<p>A list containing the properties of each job that is returned.</p>\"\
        },\
        \"NextToken\":{\
          \"shape\":\"NextToken\",\
          \"documentation\":\"<p>The token to use to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>\"\
        }\
      }\
    },\
    \"Long\":{\"type\":\"long\"},\
    \"MaxResultsInteger\":{\
      \"type\":\"integer\",\
      \"max\":500,\
      \"min\":1\
    },\
    \"MergeStrategy\":{\
      \"type\":\"string\",\
      \"enum\":[\"OVERWRITE\"]\
    },\
    \"NextToken\":{\
      \"type\":\"string\",\
      \"max\":8192,\
      \"pattern\":\"\\\\p{ASCII}{0,8192}\"\
    },\
    \"OutputDataConfig\":{\
      \"type\":\"structure\",\
      \"required\":[\"S3Uri\"],\
      \"members\":{\
        \"S3Uri\":{\
          \"shape\":\"S3Uri\",\
          \"documentation\":\"<p>The URI of the S3 folder that contains a translation job's output file. The folder must be in the same Region as the API endpoint that you are calling.</p>\"\
        },\
        \"EncryptionKey\":{\"shape\":\"EncryptionKey\"}\
      },\
      \"documentation\":\"<p>The output configuration properties for a batch translation job.</p>\"\
    },\
    \"ParallelDataArn\":{\
      \"type\":\"string\",\
      \"max\":512,\
      \"min\":1\
    },\
    \"ParallelDataConfig\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"S3Uri\",\
        \"Format\"\
      ],\
      \"members\":{\
        \"S3Uri\":{\
          \"shape\":\"S3Uri\",\
          \"documentation\":\"<p>The URI of the Amazon S3 folder that contains the parallel data input file. The folder must be in the same Region as the API endpoint you are calling.</p>\"\
        },\
        \"Format\":{\
          \"shape\":\"ParallelDataFormat\",\
          \"documentation\":\"<p>The format of the parallel data input file.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Specifies the format and S3 location of the parallel data input file.</p>\"\
    },\
    \"ParallelDataDataLocation\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"RepositoryType\",\
        \"Location\"\
      ],\
      \"members\":{\
        \"RepositoryType\":{\
          \"shape\":\"String\",\
          \"documentation\":\"<p>Describes the repository that contains the parallel data input file.</p>\"\
        },\
        \"Location\":{\
          \"shape\":\"String\",\
          \"documentation\":\"<p>The Amazon S3 location of the parallel data input file. The location is returned as a presigned URL to that has a 30 minute expiration.</p> <important> <p>Amazon Translate doesn't scan parallel data input files for the risk of CSV injection attacks. </p> <p>CSV injection occurs when a .csv or .tsv file is altered so that a record contains malicious code. The record begins with a special character, such as =, +, -, or @. When the file is opened in a spreadsheet program, the program might interpret the record as a formula and run the code within it.</p> <p>Before you download a parallel data input file from Amazon S3, ensure that you recognize the file and trust its creator.</p> </important>\"\
        }\
      },\
      \"documentation\":\"<p>The location of the most recent parallel data input file that was successfully imported into Amazon Translate.</p>\"\
    },\
    \"ParallelDataFormat\":{\
      \"type\":\"string\",\
      \"enum\":[\
        \"TSV\",\
        \"CSV\",\
        \"TMX\"\
      ]\
    },\
    \"ParallelDataProperties\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Name\":{\
          \"shape\":\"ResourceName\",\
          \"documentation\":\"<p>The custom name assigned to the parallel data resource.</p>\"\
        },\
        \"Arn\":{\
          \"shape\":\"ParallelDataArn\",\
          \"documentation\":\"<p>The Amazon Resource Name (ARN) of the parallel data resource.</p>\"\
        },\
        \"Description\":{\
          \"shape\":\"Description\",\
          \"documentation\":\"<p>The description assigned to the parallel data resource.</p>\"\
        },\
        \"Status\":{\
          \"shape\":\"ParallelDataStatus\",\
          \"documentation\":\"<p>The status of the parallel data resource. When the parallel data is ready for you to use, the status is <code>ACTIVE</code>.</p>\"\
        },\
        \"SourceLanguageCode\":{\
          \"shape\":\"LanguageCodeString\",\
          \"documentation\":\"<p>The source language of the translations in the parallel data file.</p>\"\
        },\
        \"TargetLanguageCodes\":{\
          \"shape\":\"LanguageCodeStringList\",\
          \"documentation\":\"<p>The language codes for the target languages available in the parallel data file. All possible target languages are returned as an array.</p>\"\
        },\
        \"ParallelDataConfig\":{\
          \"shape\":\"ParallelDataConfig\",\
          \"documentation\":\"<p>Specifies the format and S3 location of the parallel data input file.</p>\"\
        },\
        \"Message\":{\
          \"shape\":\"UnboundedLengthString\",\
          \"documentation\":\"<p>Additional information from Amazon Translate about the parallel data resource. </p>\"\
        },\
        \"ImportedDataSize\":{\
          \"shape\":\"Long\",\
          \"documentation\":\"<p>The number of UTF-8 characters that Amazon Translate imported from the parallel data input file. This number includes only the characters in your translation examples. It does not include characters that are used to format your file. For example, if you provided a Translation Memory Exchange (.tmx) file, this number does not include the tags.</p>\"\
        },\
        \"ImportedRecordCount\":{\
          \"shape\":\"Long\",\
          \"documentation\":\"<p>The number of records successfully imported from the parallel data input file.</p>\"\
        },\
        \"FailedRecordCount\":{\
          \"shape\":\"Long\",\
          \"documentation\":\"<p>The number of records unsuccessfully imported from the parallel data input file.</p>\"\
        },\
        \"SkippedRecordCount\":{\
          \"shape\":\"Long\",\
          \"documentation\":\"<p>The number of items in the input file that Amazon Translate skipped when you created or updated the parallel data resource. For example, Amazon Translate skips empty records, empty target texts, and empty lines.</p>\"\
        },\
        \"EncryptionKey\":{\"shape\":\"EncryptionKey\"},\
        \"CreatedAt\":{\
          \"shape\":\"Timestamp\",\
          \"documentation\":\"<p>The time at which the parallel data resource was created.</p>\"\
        },\
        \"LastUpdatedAt\":{\
          \"shape\":\"Timestamp\",\
          \"documentation\":\"<p>The time at which the parallel data resource was last updated.</p>\"\
        },\
        \"LatestUpdateAttemptStatus\":{\
          \"shape\":\"ParallelDataStatus\",\
          \"documentation\":\"<p>The status of the most recent update attempt for the parallel data resource.</p>\"\
        },\
        \"LatestUpdateAttemptAt\":{\
          \"shape\":\"Timestamp\",\
          \"documentation\":\"<p>The time that the most recent update was attempted.</p>\"\
        }\
      },\
      \"documentation\":\"<p>The properties of a parallel data resource.</p>\"\
    },\
    \"ParallelDataPropertiesList\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"ParallelDataProperties\"}\
    },\
    \"ParallelDataStatus\":{\
      \"type\":\"string\",\
      \"enum\":[\
        \"CREATING\",\
        \"UPDATING\",\
        \"ACTIVE\",\
        \"DELETING\",\
        \"FAILED\"\
      ]\
    },\
    \"ResourceName\":{\
      \"type\":\"string\",\
      \"max\":256,\
      \"min\":1,\
      \"pattern\":\"^([A-Za-z0-9-]_?)+$\"\
    },\
    \"ResourceNameList\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"ResourceName\"}\
    },\
    \"ResourceNotFoundException\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Message\":{\"shape\":\"String\"}\
      },\
      \"documentation\":\"<p>The resource you are looking for has not been found. Review the resource you're looking for and see if a different resource will accomplish your needs before retrying the revised request.</p>\",\
      \"exception\":true\
    },\
    \"S3Uri\":{\
      \"type\":\"string\",\
      \"max\":1024,\
      \"pattern\":\"s3://[a-z0-9][\\\\.\\\\-a-z0-9]{1,61}[a-z0-9](/.*)?\"\
    },\
    \"ServiceUnavailableException\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Message\":{\"shape\":\"String\"}\
      },\
      \"documentation\":\"<p>The Amazon Translate service is temporarily unavailable. Please wait a bit and then retry your request.</p>\",\
      \"exception\":true,\
      \"fault\":true\
    },\
    \"StartTextTranslationJobRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"InputDataConfig\",\
        \"OutputDataConfig\",\
        \"DataAccessRoleArn\",\
        \"SourceLanguageCode\",\
        \"TargetLanguageCodes\",\
        \"ClientToken\"\
      ],\
      \"members\":{\
        \"JobName\":{\
          \"shape\":\"JobName\",\
          \"documentation\":\"<p>The name of the batch translation job to be performed.</p>\"\
        },\
        \"InputDataConfig\":{\
          \"shape\":\"InputDataConfig\",\
          \"documentation\":\"<p>Specifies the format and S3 location of the input documents for the translation job.</p>\"\
        },\
        \"OutputDataConfig\":{\
          \"shape\":\"OutputDataConfig\",\
          \"documentation\":\"<p>Specifies the S3 folder to which your job output will be saved. </p>\"\
        },\
        \"DataAccessRoleArn\":{\
          \"shape\":\"IamRoleArn\",\
          \"documentation\":\"<p>The Amazon Resource Name (ARN) of an AWS Identity Access and Management (IAM) role that grants Amazon Translate read access to your input data. For more information, see <a>identity-and-access-management</a>.</p>\"\
        },\
        \"SourceLanguageCode\":{\
          \"shape\":\"LanguageCodeString\",\
          \"documentation\":\"<p>The language code of the input language. For a list of language codes, see <a>what-is-languages</a>.</p> <p>Amazon Translate does not automatically detect a source language during batch translation jobs.</p>\"\
        },\
        \"TargetLanguageCodes\":{\
          \"shape\":\"TargetLanguageCodeStringList\",\
          \"documentation\":\"<p>The language code of the output language.</p>\"\
        },\
        \"TerminologyNames\":{\
          \"shape\":\"ResourceNameList\",\
          \"documentation\":\"<p>The name of a custom terminology resource to add to the translation job. This resource lists examples source terms and the desired translation for each term.</p> <p>This parameter accepts only one custom terminology resource.</p> <p>For a list of available custom terminology resources, use the <a>ListTerminologies</a> operation.</p> <p>For more information, see <a>how-custom-terminology</a>.</p>\"\
        },\
        \"ParallelDataNames\":{\
          \"shape\":\"ResourceNameList\",\
          \"documentation\":\"<p>The name of a parallel data resource to add to the translation job. This resource consists of examples that show how you want segments of text to be translated. When you add parallel data to a translation job, you create an <i>Active Custom Translation</i> job. </p> <p>This parameter accepts only one parallel data resource.</p> <note> <p>Active Custom Translation jobs are priced at a higher rate than other jobs that don't use parallel data. For more information, see <a href=\\\"http://aws.amazon.com/translate/pricing/\\\">Amazon Translate pricing</a>.</p> </note> <p>For a list of available parallel data resources, use the <a>ListParallelData</a> operation.</p> <p>For more information, see <a>customizing-translations-parallel-data</a>.</p>\"\
        },\
        \"ClientToken\":{\
          \"shape\":\"ClientTokenString\",\
          \"documentation\":\"<p>A unique identifier for the request. This token is auto-generated when using the Amazon Translate SDK.</p>\",\
          \"idempotencyToken\":true\
        }\
      }\
    },\
    \"StartTextTranslationJobResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"JobId\":{\
          \"shape\":\"JobId\",\
          \"documentation\":\"<p>The identifier generated for the job. To get the status of a job, use this ID with the <a>DescribeTextTranslationJob</a> operation.</p>\"\
        },\
        \"JobStatus\":{\
          \"shape\":\"JobStatus\",\
          \"documentation\":\"<p>The status of the job. Possible values include:</p> <ul> <li> <p> <code>SUBMITTED</code> - The job has been received and is queued for processing.</p> </li> <li> <p> <code>IN_PROGRESS</code> - Amazon Translate is processing the job.</p> </li> <li> <p> <code>COMPLETED</code> - The job was successfully completed and the output is available.</p> </li> <li> <p> <code>COMPLETED_WITH_ERROR</code> - The job was completed with errors. The errors can be analyzed in the job's output.</p> </li> <li> <p> <code>FAILED</code> - The job did not complete. To get details, use the <a>DescribeTextTranslationJob</a> operation.</p> </li> <li> <p> <code>STOP_REQUESTED</code> - The user who started the job has requested that it be stopped.</p> </li> <li> <p> <code>STOPPED</code> - The job has been stopped.</p> </li> </ul>\"\
        }\
      }\
    },\
    \"StopTextTranslationJobRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\"JobId\"],\
      \"members\":{\
        \"JobId\":{\
          \"shape\":\"JobId\",\
          \"documentation\":\"<p>The job ID of the job to be stopped.</p>\"\
        }\
      }\
    },\
    \"StopTextTranslationJobResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"JobId\":{\
          \"shape\":\"JobId\",\
          \"documentation\":\"<p>The job ID of the stopped batch translation job.</p>\"\
        },\
        \"JobStatus\":{\
          \"shape\":\"JobStatus\",\
          \"documentation\":\"<p>The status of the designated job. Upon successful completion, the job's status will be <code>STOPPED</code>.</p>\"\
        }\
      }\
    },\
    \"String\":{\
      \"type\":\"string\",\
      \"max\":10000,\
      \"pattern\":\"[\\\\P{M}\\\\p{M}]{0,10000}\"\
    },\
    \"TargetLanguageCodeStringList\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"LanguageCodeString\"},\
      \"max\":1,\
      \"min\":1\
    },\
    \"Term\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"SourceText\":{\
          \"shape\":\"String\",\
          \"documentation\":\"<p>The source text of the term being translated by the custom terminology.</p>\"\
        },\
        \"TargetText\":{\
          \"shape\":\"String\",\
          \"documentation\":\"<p>The target text of the term being translated by the custom terminology.</p>\"\
        }\
      },\
      \"documentation\":\"<p>The term being translated by the custom terminology.</p>\"\
    },\
    \"TermList\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"Term\"}\
    },\
    \"TerminologyArn\":{\
      \"type\":\"string\",\
      \"max\":512,\
      \"min\":1\
    },\
    \"TerminologyData\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"File\",\
        \"Format\"\
      ],\
      \"members\":{\
        \"File\":{\
          \"shape\":\"TerminologyFile\",\
          \"documentation\":\"<p>The file containing the custom terminology data. Your version of the AWS SDK performs a Base64-encoding on this field before sending a request to the AWS service. Users of the SDK should not perform Base64-encoding themselves.</p>\"\
        },\
        \"Format\":{\
          \"shape\":\"TerminologyDataFormat\",\
          \"documentation\":\"<p>The data format of the custom terminology.</p>\"\
        },\
        \"Directionality\":{\
          \"shape\":\"Directionality\",\
          \"documentation\":\"<p>The directionality of your terminology resource indicates whether it has one source language (uni-directional) or multiple (multi-directional).</p> <dl> <dt>UNI</dt> <dd> <p>The terminology resource has one source language (for example, the first column in a CSV file), and all of its other languages are target languages. </p> </dd> <dt>MULTI</dt> <dd> <p>Any language in the terminology resource can be the source language or a target language. A single multi-directional terminology resource can be used for jobs that translate different language pairs. For example, if the terminology contains terms in English and Spanish, then it can be used for jobs that translate English to Spanish and jobs that translate Spanish to English.</p> </dd> </dl> <p>When you create a custom terminology resource without specifying the directionality, it behaves as uni-directional terminology, although this parameter will have a null value.</p>\"\
        }\
      },\
      \"documentation\":\"<p>The data associated with the custom terminology.</p>\"\
    },\
    \"TerminologyDataFormat\":{\
      \"type\":\"string\",\
      \"enum\":[\
        \"CSV\",\
        \"TMX\",\
        \"TSV\"\
      ]\
    },\
    \"TerminologyDataLocation\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"RepositoryType\",\
        \"Location\"\
      ],\
      \"members\":{\
        \"RepositoryType\":{\
          \"shape\":\"String\",\
          \"documentation\":\"<p>The repository type for the custom terminology data.</p>\"\
        },\
        \"Location\":{\
          \"shape\":\"String\",\
          \"documentation\":\"<p>The location of the custom terminology data.</p>\"\
        }\
      },\
      \"documentation\":\"<p>The location of the custom terminology data.</p>\"\
    },\
    \"TerminologyFile\":{\
      \"type\":\"blob\",\
      \"max\":10485760,\
      \"sensitive\":true\
    },\
    \"TerminologyProperties\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Name\":{\
          \"shape\":\"ResourceName\",\
          \"documentation\":\"<p>The name of the custom terminology.</p>\"\
        },\
        \"Description\":{\
          \"shape\":\"Description\",\
          \"documentation\":\"<p>The description of the custom terminology properties.</p>\"\
        },\
        \"Arn\":{\
          \"shape\":\"TerminologyArn\",\
          \"documentation\":\"<p> The Amazon Resource Name (ARN) of the custom terminology. </p>\"\
        },\
        \"SourceLanguageCode\":{\
          \"shape\":\"LanguageCodeString\",\
          \"documentation\":\"<p>The language code for the source text of the translation request for which the custom terminology is being used.</p>\"\
        },\
        \"TargetLanguageCodes\":{\
          \"shape\":\"LanguageCodeStringList\",\
          \"documentation\":\"<p>The language codes for the target languages available with the custom terminology resource. All possible target languages are returned in array.</p>\"\
        },\
        \"EncryptionKey\":{\
          \"shape\":\"EncryptionKey\",\
          \"documentation\":\"<p>The encryption key for the custom terminology.</p>\"\
        },\
        \"SizeBytes\":{\
          \"shape\":\"Integer\",\
          \"documentation\":\"<p>The size of the file used when importing a custom terminology.</p>\"\
        },\
        \"TermCount\":{\
          \"shape\":\"Integer\",\
          \"documentation\":\"<p>The number of terms included in the custom terminology.</p>\"\
        },\
        \"CreatedAt\":{\
          \"shape\":\"Timestamp\",\
          \"documentation\":\"<p>The time at which the custom terminology was created, based on the timestamp.</p>\"\
        },\
        \"LastUpdatedAt\":{\
          \"shape\":\"Timestamp\",\
          \"documentation\":\"<p>The time at which the custom terminology was last update, based on the timestamp.</p>\"\
        },\
        \"Directionality\":{\
          \"shape\":\"Directionality\",\
          \"documentation\":\"<p>The directionality of your terminology resource indicates whether it has one source language (uni-directional) or multiple (multi-directional). </p> <dl> <dt>UNI</dt> <dd> <p>The terminology resource has one source language (the first column in a CSV file), and all of its other languages are target languages.</p> </dd> <dt>MULTI</dt> <dd> <p>Any language in the terminology resource can be the source language.</p> </dd> </dl>\"\
        },\
        \"Message\":{\
          \"shape\":\"UnboundedLengthString\",\
          \"documentation\":\"<p>Additional information from Amazon Translate about the terminology resource.</p>\"\
        },\
        \"SkippedTermCount\":{\
          \"shape\":\"Integer\",\
          \"documentation\":\"<p>The number of terms in the input file that Amazon Translate skipped when you created or updated the terminology resource.</p>\"\
        },\
        \"Format\":{\
          \"shape\":\"TerminologyDataFormat\",\
          \"documentation\":\"<p>The format of the custom terminology input file.</p>\"\
        }\
      },\
      \"documentation\":\"<p>The properties of the custom terminology.</p>\"\
    },\
    \"TerminologyPropertiesList\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"TerminologyProperties\"}\
    },\
    \"TextSizeLimitExceededException\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Message\":{\"shape\":\"String\"}\
      },\
      \"documentation\":\"<p> The size of the text you submitted exceeds the size limit. Reduce the size of the text or use a smaller document and then retry your request. </p>\",\
      \"exception\":true\
    },\
    \"TextTranslationJobFilter\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"JobName\":{\
          \"shape\":\"JobName\",\
          \"documentation\":\"<p>Filters the list of jobs by name.</p>\"\
        },\
        \"JobStatus\":{\
          \"shape\":\"JobStatus\",\
          \"documentation\":\"<p>Filters the list of jobs based by job status.</p>\"\
        },\
        \"SubmittedBeforeTime\":{\
          \"shape\":\"Timestamp\",\
          \"documentation\":\"<p>Filters the list of jobs based on the time that the job was submitted for processing and returns only the jobs submitted before the specified time. Jobs are returned in ascending order, oldest to newest.</p>\"\
        },\
        \"SubmittedAfterTime\":{\
          \"shape\":\"Timestamp\",\
          \"documentation\":\"<p>Filters the list of jobs based on the time that the job was submitted for processing and returns only the jobs submitted after the specified time. Jobs are returned in descending order, newest to oldest.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Provides information for filtering a list of translation jobs. For more information, see <a>ListTextTranslationJobs</a>.</p>\"\
    },\
    \"TextTranslationJobProperties\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"JobId\":{\
          \"shape\":\"JobId\",\
          \"documentation\":\"<p>The ID of the translation job.</p>\"\
        },\
        \"JobName\":{\
          \"shape\":\"JobName\",\
          \"documentation\":\"<p>The user-defined name of the translation job.</p>\"\
        },\
        \"JobStatus\":{\
          \"shape\":\"JobStatus\",\
          \"documentation\":\"<p>The status of the translation job.</p>\"\
        },\
        \"JobDetails\":{\
          \"shape\":\"JobDetails\",\
          \"documentation\":\"<p>The number of documents successfully and unsuccessfully processed during the translation job.</p>\"\
        },\
        \"SourceLanguageCode\":{\
          \"shape\":\"LanguageCodeString\",\
          \"documentation\":\"<p>The language code of the language of the source text. The language must be a language supported by Amazon Translate.</p>\"\
        },\
        \"TargetLanguageCodes\":{\
          \"shape\":\"TargetLanguageCodeStringList\",\
          \"documentation\":\"<p>The language code of the language of the target text. The language must be a language supported by Amazon Translate.</p>\"\
        },\
        \"TerminologyNames\":{\
          \"shape\":\"ResourceNameList\",\
          \"documentation\":\"<p>A list containing the names of the terminologies applied to a translation job. Only one terminology can be applied per <a>StartTextTranslationJob</a> request at this time.</p>\"\
        },\
        \"ParallelDataNames\":{\
          \"shape\":\"ResourceNameList\",\
          \"documentation\":\"<p>A list containing the names of the parallel data resources applied to the translation job.</p>\"\
        },\
        \"Message\":{\
          \"shape\":\"UnboundedLengthString\",\
          \"documentation\":\"<p>An explanation of any errors that may have occurred during the translation job.</p>\"\
        },\
        \"SubmittedTime\":{\
          \"shape\":\"Timestamp\",\
          \"documentation\":\"<p>The time at which the translation job was submitted.</p>\"\
        },\
        \"EndTime\":{\
          \"shape\":\"Timestamp\",\
          \"documentation\":\"<p>The time at which the translation job ended.</p>\"\
        },\
        \"InputDataConfig\":{\
          \"shape\":\"InputDataConfig\",\
          \"documentation\":\"<p>The input configuration properties that were specified when the job was requested.</p>\"\
        },\
        \"OutputDataConfig\":{\
          \"shape\":\"OutputDataConfig\",\
          \"documentation\":\"<p>The output configuration properties that were specified when the job was requested.</p>\"\
        },\
        \"DataAccessRoleArn\":{\
          \"shape\":\"IamRoleArn\",\
          \"documentation\":\"<p>The Amazon Resource Name (ARN) of an AWS Identity Access and Management (IAM) role that granted Amazon Translate read access to the job's input data.</p>\"\
        }\
      },\
      \"documentation\":\"<p>Provides information about a translation job.</p>\"\
    },\
    \"TextTranslationJobPropertiesList\":{\
      \"type\":\"list\",\
      \"member\":{\"shape\":\"TextTranslationJobProperties\"}\
    },\
    \"Timestamp\":{\"type\":\"timestamp\"},\
    \"TooManyRequestsException\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Message\":{\"shape\":\"String\"}\
      },\
      \"documentation\":\"<p> You have made too many requests within a short period of time. Wait for a short time and then try your request again.</p>\",\
      \"exception\":true\
    },\
    \"TranslateTextRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"Text\",\
        \"SourceLanguageCode\",\
        \"TargetLanguageCode\"\
      ],\
      \"members\":{\
        \"Text\":{\
          \"shape\":\"BoundedLengthString\",\
          \"documentation\":\"<p>The text to translate. The text string can be a maximum of 5,000 bytes long. Depending on your character set, this may be fewer than 5,000 characters.</p>\"\
        },\
        \"TerminologyNames\":{\
          \"shape\":\"ResourceNameList\",\
          \"documentation\":\"<p>The name of the terminology list file to be used in the TranslateText request. You can use 1 terminology list at most in a <code>TranslateText</code> request. Terminology lists can contain a maximum of 256 terms.</p>\"\
        },\
        \"SourceLanguageCode\":{\
          \"shape\":\"LanguageCodeString\",\
          \"documentation\":\"<p>The language code for the language of the source text. The language must be a language supported by Amazon Translate. For a list of language codes, see <a>what-is-languages</a>.</p> <p>To have Amazon Translate determine the source language of your text, you can specify <code>auto</code> in the <code>SourceLanguageCode</code> field. If you specify <code>auto</code>, Amazon Translate will call <a href=\\\"https://docs.aws.amazon.com/comprehend/latest/dg/comprehend-general.html\\\">Amazon Comprehend</a> to determine the source language.</p>\"\
        },\
        \"TargetLanguageCode\":{\
          \"shape\":\"LanguageCodeString\",\
          \"documentation\":\"<p>The language code requested for the language of the target text. The language must be a language supported by Amazon Translate.</p>\"\
        }\
      }\
    },\
    \"TranslateTextResponse\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"TranslatedText\",\
        \"SourceLanguageCode\",\
        \"TargetLanguageCode\"\
      ],\
      \"members\":{\
        \"TranslatedText\":{\
          \"shape\":\"String\",\
          \"documentation\":\"<p>The translated text.</p>\"\
        },\
        \"SourceLanguageCode\":{\
          \"shape\":\"LanguageCodeString\",\
          \"documentation\":\"<p>The language code for the language of the source text.</p>\"\
        },\
        \"TargetLanguageCode\":{\
          \"shape\":\"LanguageCodeString\",\
          \"documentation\":\"<p>The language code for the language of the target text. </p>\"\
        },\
        \"AppliedTerminologies\":{\
          \"shape\":\"AppliedTerminologyList\",\
          \"documentation\":\"<p>The names of the custom terminologies applied to the input text by Amazon Translate for the translated text response.</p>\"\
        }\
      }\
    },\
    \"UnboundedLengthString\":{\"type\":\"string\"},\
    \"UnsupportedLanguagePairException\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Message\":{\"shape\":\"String\"},\
        \"SourceLanguageCode\":{\
          \"shape\":\"LanguageCodeString\",\
          \"documentation\":\"<p>The language code for the language of the input text. </p>\"\
        },\
        \"TargetLanguageCode\":{\
          \"shape\":\"LanguageCodeString\",\
          \"documentation\":\"<p>The language code for the language of the translated text. </p>\"\
        }\
      },\
      \"documentation\":\"<p>Amazon Translate does not support translation from the language of the source text into the requested target language. For more information, see <a>how-to-error-msg</a>. </p>\",\
      \"exception\":true\
    },\
    \"UpdateParallelDataRequest\":{\
      \"type\":\"structure\",\
      \"required\":[\
        \"Name\",\
        \"ParallelDataConfig\",\
        \"ClientToken\"\
      ],\
      \"members\":{\
        \"Name\":{\
          \"shape\":\"ResourceName\",\
          \"documentation\":\"<p>The name of the parallel data resource being updated.</p>\"\
        },\
        \"Description\":{\
          \"shape\":\"Description\",\
          \"documentation\":\"<p>A custom description for the parallel data resource in Amazon Translate.</p>\"\
        },\
        \"ParallelDataConfig\":{\
          \"shape\":\"ParallelDataConfig\",\
          \"documentation\":\"<p>Specifies the format and S3 location of the parallel data input file.</p>\"\
        },\
        \"ClientToken\":{\
          \"shape\":\"ClientTokenString\",\
          \"documentation\":\"<p>A unique identifier for the request. This token is automatically generated when you use Amazon Translate through an AWS SDK.</p>\",\
          \"idempotencyToken\":true\
        }\
      }\
    },\
    \"UpdateParallelDataResponse\":{\
      \"type\":\"structure\",\
      \"members\":{\
        \"Name\":{\
          \"shape\":\"ResourceName\",\
          \"documentation\":\"<p>The name of the parallel data resource being updated.</p>\"\
        },\
        \"Status\":{\
          \"shape\":\"ParallelDataStatus\",\
          \"documentation\":\"<p>The status of the parallel data resource that you are attempting to update. Your update request is accepted only if this status is either <code>ACTIVE</code> or <code>FAILED</code>.</p>\"\
        },\
        \"LatestUpdateAttemptStatus\":{\
          \"shape\":\"ParallelDataStatus\",\
          \"documentation\":\"<p>The status of the parallel data update attempt. When the updated parallel data resource is ready for you to use, the status is <code>ACTIVE</code>.</p>\"\
        },\
        \"LatestUpdateAttemptAt\":{\
          \"shape\":\"Timestamp\",\
          \"documentation\":\"<p>The time that the most recent update was attempted.</p>\"\
        }\
      }\
    }\
  },\
  \"documentation\":\"<p>Provides translation between one source language and another of the same set of languages.</p>\"\
}\
";
}

@end
