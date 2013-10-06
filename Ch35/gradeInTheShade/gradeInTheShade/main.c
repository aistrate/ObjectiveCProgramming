//
//  main.c
//  gradeInTheShade
//
//  Created by Adrian Istrate on 06/10/2013.
//  Copyright (c) 2013 Adrian Istrate. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h> // malloc(), free()

//float averageFloats(float *data, int dataCount)
float averageFloats(float data[], int dataCount)
{
    float sum = 0.0;
    for (int i = 0; i < dataCount; i++) {
        sum = sum + data[i];
    }
    return sum / dataCount;
}

int main(int argc, const char * argv[])
{
    
//    // Create an array of floats
//    float *gradeBook = malloc(3 * sizeof(float));
    
//    // Declares the array as part of the frame
//    float gradeBook[3];
//    
//    gradeBook[0] = 60.2;
//    gradeBook[1] = 94.5;
//    gradeBook[2] = 81.1;
    
    float gradeBook[] = {60.2, 94.5, 81.1};
    
    // Calculate the average
    float average = averageFloats(gradeBook, 3);
    
//    // Free the array
//    free(gradeBook);
//    gradeBook = NULL;
    
    // No need to free the array!
    // Cleanup happens automatically when the function returns
    
    printf("Average = %.2f\n", average);
    
    return 0;
}

