//
//  PigLatin.h
//  Lab7
//
//  Created by Dylan Park on 2021-07-14.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface PigLatin : NSObject

- (NSString *) returnPigLatinWord: (NSString *) inputWord;
- (NSString *) returnPigLatinSentence: (NSString *) inputSentence;

@end

NS_ASSUME_NONNULL_END
