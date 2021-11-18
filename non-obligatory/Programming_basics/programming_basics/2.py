"""
В условии задачи стоит странный вопрос. 

Но если я правильно поняла, 
то Вы попросили переписать ту же задачу с условием,
что ответ только один, 
и нельзя использовать один и тот же элемент дважды.  

"""
def func(nums, target):
        seen = {}
        for index, num in enumerate(nums):
            if (target - num) in seen:
                return [index, seen[target-num]]
            seen[num] = index