from typing import List

class Solution:
    def convertTemperature(self, celsius: float) -> List[float]:
        f = 1.80 * celsius + 32.00
        k = celsius + 273.15
        Output = [k,f]
        return Output
