"""
Given an array of integers nums sorted in non-decreasing order, find the starting and ending position of a given target value.
If target is not found in the array, return [-1, -1].
You must write an algorithm with O(log n) runtime complexity.



Example 1:
Input: nums = [5,7,7,8,8,10], target = 8
Output: [3,4]

Example 2:
Input: nums = [5,7,7,8,8,10], target = 6
Output: [-1,-1]
Example 3:

Input: nums = [], target = 0
Output: [-1,-1]


Constraints:
0 <= nums.length <= 105
-109 <= nums[i] <= 109
nums is a non-decreasing array.
-109 <= target <= 109
"""

class Solution:
    def searchRange(self, nums: List[int], target: int) -> List[int]:
        start = self.bin_search(nums, target, True)
        end = self.bin_search(nums, target, False)
        return [start, end]


    def bin_search(self, nums, target, left_search = True):
        left, right = 0, len(nums) - 1
        res = -1
        while left <= right:
            mid = (right + left) // 2
            print(left, mid, right)
            if nums[mid] < target:
                left = mid +1
            elif nums[mid] > target:
                right = mid - 1
            else:
                res = mid
                if left_search:
                    right = mid - 1
                else:
                    left = mid + 1
        return res
