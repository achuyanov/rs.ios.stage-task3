#import "PlayersSeparator.h"

@implementation PlayersSeparator

- (NSInteger)dividePlayersIntoTeams:(NSArray<NSNumber *>*)arr {
    int len = (int)arr.count;
    int ret = 0;
    if (arr && len>=3) {
    double ai, aj, ak;
    for (int i=0; i<len-2; i++) {
        for (int j=i+1; j<len-1; j++) {
            for (int k=j+1; k<len; k++) {
                ai = arr[i].doubleValue;
                aj = arr[j].doubleValue;
                ak = arr[k].doubleValue;
                if (ai<aj && aj<ak) ret++;
                if (ai>aj && aj>ak) ret++;
            }}};
    }
    return ret;
}

@end
