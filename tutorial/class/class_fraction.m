/* 
 * This example is from Programing in Objective-C 2.0 by Stephen G. Kochan 
 */

#include <stdio.h>
#include <Foundation/Foundation.h>  

@interface Test : NSObject
+ (const char *) classStringValue;
@end

@implementation Test
+ (const char *) classStringValue;
{
  return "This is the string value of the Test class";
}
@end

@interface Fraction: NSObject {
  int numerator;
  int denominator;
}

-(void) print;
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;
@end

@implementation Fraction
-(void) print {
  NSLog (@"%i/%i", numerator, denominator);
}

-(void) setNumerator: (int) n {
  numerator = n;
}

-(void) setDenominator: (int) d {
  denominator = d;
}
@end

int main(void) {

  Fraction* myFraction;
 
  myFraction = [Fraction alloc];
  myFraction = [myFraction init];

  [myFraction setNumerator: 1];
  [myFraction setDenominator: 3];

  NSLog(@"The value of myFraction is:");
  [myFraction print];

  return 0;
}

