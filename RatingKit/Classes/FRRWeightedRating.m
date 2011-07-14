//
//  FRRWeightedRating.m
//  RatingKit
//
//  Created by Fernando Rodríguez Romero on 7/14/11.
//  Copyright 2011 AGBO Business Architecture, SL. All rights reserved.
//
/*
 Copyright 2011 AGBO Business Architecture, SL. All rights reserved.
 
 Redistribution and use in source and binary forms, with or without modification, are
 permitted provided that the following conditions are met:
 
 1. Redistributions of source code must retain the above copyright notice, this list of
 conditions and the following disclaimer.
 
 2. Redistributions in binary form must reproduce the above copyright notice, this list
 of conditions and the following disclaimer in the documentation and/or other materials
 provided with the distribution.
 
 THIS SOFTWARE IS PROVIDED BY AGBO Business Architecture, SL ``AS IS'' AND ANY EXPRESS OR IMPLIED
 WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND
 FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL AGBO Business Architecture, SL OR
 CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
 ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
 NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
 ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 
 The views and conclusions contained in the software and documentation are those of the
 authors and should not be interpreted as representing official policies, either expressed
 or implied, of AGBO Business Architecture, SL.
 
 */

#import "FRRWeightedRating.h"

#pragma mark - private interface
@interface FRRWeightedRating()
@property (nonatomic) float weightOfTheAverageRating;

@end

@implementation FRRWeightedRating

#pragma mark - Properties
@synthesize rating, weightOfTheAverageRating;


#pragma mark - initialization
-(id) initWithWeightingFactor: (float) aWeight 
               andInitialRate: (float) aRate{
    if ((self = [super init])) {
        self.weightOfTheAverageRating = aWeight;
        rating = aRate;
    }
    return self;
}

-(id) init{
    return [self initWithWeightingFactor:10
                          andInitialRate:0];
}

#pragma mark - methods
-(void) rateAs: (float) aRating{
    rating = ((self.weightOfTheAverageRating * self.rating) + aRating) / (self.weightOfTheAverageRating + 1);
}

@end
