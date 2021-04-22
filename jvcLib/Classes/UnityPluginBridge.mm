
#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#include <jvcLib/jvcLib-Swift.h>

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


void printString(const char* value)
{
    
    [[UnityPlugin shared] printStringWithS:[[NSString alloc] initWithCString:value encoding:NSUTF8StringEncoding]];
}


}
