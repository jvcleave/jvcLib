
#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#include <jvcLib/jvcLib-Swift.h>

#if 0
@interface UnityPlugin : NSObject
+ (UnityPlugin * _Nonnull)shared;
- (NSInteger)addWithA:(NSInteger)a b:(NSInteger)b ;
- (NSInteger)retrieveRecordCount ;
- (nonnull instancetype)init ;
@end
#endif

extern "C" {

#pragma mark - Functions

int addNumbers(int a , int b)
{
    
    int result = [[UnityPlugin shared] addWithA:a b:b];
    return result;
}

int getRecordCount()
{
    int result = [[UnityPlugin shared] retrieveRecordCount];
    return result;
}

}
