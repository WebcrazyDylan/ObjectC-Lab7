//
//  PigLatin.m
//  Lab7
//
//  Created by Dylan Park on 2021-07-14.
//

#import "PigLatin.h"

@implementation PigLatin

- (NSString *) returnPigLatinWord: (NSString *) inputWord {
    NSString *pigLatinaizedWord = @"";
    if (inputWord.length == 0) {
        pigLatinaizedWord = inputWord;
    }
    NSString *lowercaseInputWord = [inputWord lowercaseString];
    NSArray *clusters = @[@"ch", @"sh", @"sm", @"st", @"th", @"ps", @"ph", @"pl", @"gl"];
    NSArray *vowels = @[@"a", @"e", @"i", @"o", @"u"];
    NSString *firstChar = [lowercaseInputWord substringToIndex:1];
    
    if (inputWord.length > 1) {
        NSString *firstTwoChar = [lowercaseInputWord substringToIndex:2];
        if ([clusters containsObject:firstTwoChar]) {
            pigLatinaizedWord = [NSString stringWithFormat:@"%@%@%@", [lowercaseInputWord substringFromIndex:2], firstTwoChar, @"ay"];
        } else if (![vowels containsObject:firstChar]) {
            pigLatinaizedWord = [NSString stringWithFormat:@"%@%@%@", [lowercaseInputWord substringFromIndex:1], firstChar, @"ay"];
        } else {
            pigLatinaizedWord = [NSString stringWithFormat:@"%@%@", lowercaseInputWord, @"yay"];
        }
    } else {
        if ([vowels containsObject:firstChar]) {
            pigLatinaizedWord = [NSString stringWithFormat:@"%@%@", lowercaseInputWord, @"yay"];
        } else {
            pigLatinaizedWord = [NSString stringWithFormat:@"%@%@", lowercaseInputWord, @"ay"];
        }
    }
        
    
    return pigLatinaizedWord;
}

- (NSString *) returnPigLatinSentence: (NSString *) inputSentence {
    NSArray *arrayOfWords = [inputSentence componentsSeparatedByString:@" "];
    NSMutableArray *pigLatinWordsContainer = [NSMutableArray new];
    NSString *pigLatinaizedSentence = @"";
    for (NSString *eachWord in arrayOfWords) {
        NSString *pigLatinWord = [self returnPigLatinWord:eachWord];
        [pigLatinWordsContainer addObject:pigLatinWord];
    }
    pigLatinaizedSentence = [pigLatinWordsContainer componentsJoinedByString:@" "];
    return pigLatinaizedSentence;
}

@end

