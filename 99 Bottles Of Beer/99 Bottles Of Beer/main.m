//
//  main.m
//  99 Bottles Of Beer
//
//  Created by Michael Balsa on 5/11/22.
//

#import <Foundation/Foundation.h>


void singSongFor(int numberOfBottles) {
    if(numberOfBottles == 0 ) {
        printf("There are simply no more bottles of beer on wall. \n\n");
    } else {
        printf("%d bottles of beer on the wall. %d bottles of beer. \n", numberOfBottles, numberOfBottles);
        int oneFewer = numberOfBottles  - 1;
        printf("Take one down, pass it around, %d bottles of beer on the wall. \n", oneFewer);
        singSongFor(oneFewer);
        
        printf("Put a bottle in the recycling, %d empty bottles in the bin. \n", numberOfBottles);
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        singSongFor(8);
    }
    return 0;
}
