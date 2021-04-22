
#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@interface UnityPlugin : NSObject
+ (UnityPlugin * _Nonnull)shared;
- (NSInteger)addWithA:(NSInteger)a b:(NSInteger)b ;
- (NSInteger)retrieveRecordCount ;
- (nonnull instancetype)init ;
@end



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
