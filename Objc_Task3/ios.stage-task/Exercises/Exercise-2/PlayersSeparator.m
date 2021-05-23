#import "PlayersSeparator.h"

@implementation PlayersSeparator
- (NSInteger)dividePlayersIntoTeams:(NSArray<NSNumber *>*)ratingArray {
    
    
    NSInteger count = 0;
    
    for (int i = 0 ; i < ratingArray.count; i ++) {
        for( int j = i; j< ratingArray.count; j ++) {
            for( int k = j; ratingArray.count; k++){
                
                if((ratingArray[i].intValue < ratingArray[j].intValue &&
                    ratingArray[j].intValue < ratingArray[k].intValue) ||
                   (ratingArray[i].intValue > ratingArray[j].intValue &&
                    ratingArray[j].intValue > ratingArray[k].intValue)) {
                    
                    count ++;
                }
            }
        }
    }
    return count;
}

@end
