from typing import List

class Solution:
    def transformArray(self, nums: List[int]) -> List[int]:
        output = []
        for num in nums:
            if num % 2 == 0:
                output.append(0)
            else:
                output.append(1)
        output.sort()
        return output


        