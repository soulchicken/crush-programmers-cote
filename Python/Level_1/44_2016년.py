def solution(a, b):
    return ['THU','FRI','SAT','SUN','MON','TUE','WED'][(sum([0,31,29,31,30,31,30,31,31,30,31,30,31][:a]) + b)%7]