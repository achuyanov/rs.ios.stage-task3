#import "LexicographicallyMinimal.h"

@interface LexicographicallyMinimal()

@property (nonatomic, strong) NSMutableString *resultString;

@end

@implementation LexicographicallyMinimal

-(NSString *)findLexicographicallyMinimalForString1:(NSString *)string1 andString2:(NSString *)string2 {
    
    NSMutableString *st1 = [string1 mutableCopy];
    NSMutableString *st2 = [string2 mutableCopy];
    NSMutableString *ret = [NSMutableString new];
    
    while (st1.length!=0 || st2.length!=0) {
        
        if (st1.length==0) {[ret appendString:st2];break;}
        if (st2.length==0) {[ret appendString:st1];break;}

        if ([st1 characterAtIndex:0] <= [st2 characterAtIndex:0]) {
            [ret appendString:[st1 substringToIndex:1]];
            st1 = [[st1 substringFromIndex:1] mutableCopy];}
        else {
            [ret appendString:[st2 substringToIndex:1]];
            st2 = [[st2 substringFromIndex:1] mutableCopy];}
    }
    return ret;
}

@end
