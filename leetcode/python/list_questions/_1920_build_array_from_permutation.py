from typing import List
class Solution:
    @staticmethod
    def buildArray(nums: List[int]) -> List[int]:
        output = []
        for i in range(len(nums)):
            output.append(nums[nums[i]])
        return output
    
