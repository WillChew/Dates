//
//  main.m
//  Dates
//
//  Created by Will Chew on 2018-05-17.
//  Copyright © 2018 Will Chew. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //creating age object with type NSNumber
        NSNumber *age = [NSNumber numberWithInt:23];
        NSLog(@"age: %@", age);
        
        //unboxing object to int
        int age2 = [age intValue] +1;
        NSLog(@"age after birthday: %i", age2);
        
        //converting age back into object
        age = [NSNumber numberWithInt:age2];
        NSLog(@"new age: %@", age);
        

        //Create a date
        NSString *dateString;
        NSString *birthdayString = @"1995-01-20";

        //Create a date
        NSDate *now = [NSDate date];
        NSLog(@"today's date: %@", now);

        //Create a formatted date string
        NSDateFormatter *formatter = [[NSDateFormatter alloc]init];

        [formatter setDateFormat:@"yyyy-MM-dd"];
        dateString = [formatter stringFromDate:[NSDate date]];
        NSLog(@"%@", dateString);

        //date formatter methods
        NSDate *birthday = [formatter dateFromString:birthdayString];
        NSLog(@"birthday:%@", birthday);

        //NSDate's time interval

        NSTimeInterval different = [birthday timeIntervalSinceNow];
        NSLog(@"alive for %f seconds", different);
        
        
        
    }
    return 0;
}
