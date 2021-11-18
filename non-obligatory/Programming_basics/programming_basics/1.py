def func(nums, target):
        seen = {}
        for index, num in enumerate(nums):
            if (target - num) in seen:
                return [index, seen[target-num]]
            seen[num] = index