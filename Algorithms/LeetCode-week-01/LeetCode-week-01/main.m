//
//  main.m
//  LeetCode-week-01
//
//  Created by cf on 2019/12/15.
//  Copyright © 2019 cf. All rights reserved.
//

#import <Foundation/Foundation.h>

int trap(int* height, int heightSize){
    
    int left = 0, right = heightSize - 1;
    int ans = 0;
    int left_max = 0, right_max = 0;
    while (left < right) {
        if (height[left] < height[right]) {
            if (height[left] >= left_max) {
                left_max = height[left];
            }
            else {
                ans += (left_max - height[left]);
            }
            ++left;
        }
        else {
            if (height[right] >= right_max) {
                right_max = height[right];
            }
            else {
                ans += (right_max - height[right]);
            }
            --right;
        }
    }
    return ans;
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int nums1[] = {0,1,0,2,1,0,1,3,2,1,2,1};
        int ans = trap(nums1, 12);
        printf("===%d \n",ans);
    }
    return 0;
}
