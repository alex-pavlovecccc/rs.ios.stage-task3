#import "PlayersSeparator.h"

@implementation PlayersSeparator
- (NSInteger)dividePlayersIntoTeams:(NSArray<NSNumber *>*)ratingArray {

    
    NSMutableArray *results = [[NSMutableArray alloc] init];
    NSMutableArray *countArray = [[NSMutableArray alloc] init];
    
    
    for (int i = 0; i < ratingArray.count; i++) {
        for (int j = i + 1; j < ratingArray.count; j++) {
            for (int k = j + 1; k < ratingArray.count; k++) {
                if (i < j && j < k) {
                    if (((ratingArray[i].intValue < ratingArray[j].intValue) &&
                         (ratingArray[j].intValue < ratingArray[k].intValue)) ||
                        ((ratingArray[i].intValue > ratingArray[j].intValue) &&
                         (ratingArray[j].intValue > ratingArray[k].intValue))) {
                        
                        [countArray addObject:ratingArray[i]];
                        [countArray addObject:ratingArray[j]];
                        [countArray addObject:ratingArray[k]];
                        
                        [results addObject:countArray];
                        
                    }
                }
            }
        }
    }
    
    return results.count;
}

@end

/*
 
 */
