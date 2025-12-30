#include <Foundation/Foundation.h>

@interface MyClass : NSObject 

// - needs to have objec to class
// + no needs

- (void)instanceHello; // Defination of instance method
+ (void)classHello; // Defination of class method

@end

@implementation MyClass
 - (void)instanceHello{
    NSLog(@"Instance Hello");
 }
 + (void)classHello{
    NSLog(@"Class Hello");
 }

 @end

 int main(){
    // NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    [MyClass classHello];

   //   MyClass *obj = [[MyClass alloc] init];

   //  [obj instanceHello];

   

    // [obj release];
    // [pool drain];

    @autoreleasepool{
      MyClass *obj = [[MyClass alloc] init];

       [obj instanceHello];
    }

    return 0;


 }