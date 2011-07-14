//
//  RatingKitTests.m
//  RatingKitTests
//
//  Created by Fernando Rodríguez Romero on 7/14/11.
//  Copyright 2011 AGBO Business Architecture, SL. All rights reserved.
//

#import "RatingKitTests.h"

@implementation RatingKitTests

@synthesize ratedItem;

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
    self.ratedItem = [[FRRWeightedRating alloc] init];
    
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
    self.ratedItem = nil;
    
}




-(void) testFirstRate{
    [self.ratedItem rateAs:2];
    NSString *res = [NSString stringWithFormat:@"%2.2f", self.ratedItem.rating];
    STAssertTrue([res isEqualToString: @"0.18"], @"Result should be 0.18");
}

-(void) test2ratings{
    [self.ratedItem rateAs:2];
    [self.ratedItem rateAs:2];
    NSString *res = [NSString stringWithFormat:@"%2.3f", self.ratedItem.rating];
    NSLog(@"%@", res);
    STAssertTrue([res isEqualToString: @"0.347"], @"SHould be 0.347");
                  
}

@end
