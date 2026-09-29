// Copyright (c) 2015-present, salesforce.com, inc. All rights reserved
// Licensed under BSD 3-Clause - see LICENSE.txt or git.io/sfdc-license

#import "SLDSFont.h"

@implementation SLDSFont

+(NSBundle*)frameworkBundle
{
    #ifdef SWIFTPM_MODULE_BUNDLE
        return SWIFTPM_MODULE_BUNDLE;
    #else
        return nil;
    #endif
}

@end