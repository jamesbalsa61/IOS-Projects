//
//  main.m
//  Degrees
//
//  Created by Michael Balsa on 5/11/22.
//

#import <Foundation/Foundation.h>

float lastTemperature;

float fahrenheitFromCelsius(float cel){
    lastTemperature = cel;
    float fahr = cel * 1.8 + 32.0;
    printf("%f Celsius is %f Fahrenheit\n", cel, fahr);
    return fahr;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        float freezeInC = 0;
        float freezeInF = fahrenheitFromCelsius(freezeInC);
        printf("Water freezes at %f degrees Fahrenheit.\n", freezeInF);
        printf("The last temperature converted was %f. \n", lastTemperature);
        return EXIT_SUCCESS;
    }
    return 0;
}
