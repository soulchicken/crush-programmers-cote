def solution(num_list):
    a,b = 0,0
    for i in num_list:
        if i % 2 == 0: a += 1
        else : b += 1
    return [a, b]