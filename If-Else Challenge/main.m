//
//  main.m
//  If-Else Challenge
//
//  Created by Michael Balsa on 5/10/22.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int i = 20;
        int j = 25;
        int k = ( i > j) ? 10 : 5;
        
        if(5 < j - k){
            printf("The first expression is true");
        }else if(j > i ) {
            printf("The second expression will execute ");
            } else {
                printf("Neither expression is true");
            }
            
        };
    return 0;
}
