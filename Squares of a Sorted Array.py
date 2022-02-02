'''
Given an integer array nums sorted in non-decreasing order, return an array of the squares of each number sorted in non-decreasing order.

Example 1:
Input: nums = [-4,-1,0,3,10]
Output: [0,1,9,16,100]
Explanation: After squaring, the array becomes [16,1,0,9,100].
After sorting, it becomes [0,1,9,16,100].

Example 2:
Input: nums = [-7,-3,2,3,11]
Output: [4,9,9,49,121]


Constraints:
1 <= nums.length <= 104
-104 <= nums[i] <= 104
nums is sorted in non-decreasing order.

'''

class Solution1:
    def sortedSquares(self, nums: List[int]) -> List[int]:
        sqt_list = [n**2 for n in nums]
        return sorted(sqt_list)

class Solution2:
    def sortedSquares(self, nums: List[int]) -> List[int]:
        abs_nums = sorted([abs(n) for n in nums])
        sqt_nums = [n**2 for n in abs_nums]
        return sqt_nums
