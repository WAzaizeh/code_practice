"""
Given a positive integer num, write a function which returns True if num is a perfect square else False.
Follow up: Do not use any built-in library function such as sqrt.

Example 1:
Input: num = 16
Output: true

Example 2:
Input: num = 14
Output: false


Constraints:
1 <= num <= 2^31 - 1
"""

class Solution:
    def isPerfectSquare(self, num: int) -> bool:
        if num < 2:
            return True
        left , right = 0, num - 1
        while left <= right:
            mid = (left + right) // 2
            if mid * mid > num :
                right = mid - 1
            elif (mid + 1)*( mid + 1) > num:
                return mid*mid == num
            else:
                left = mid + 1    
