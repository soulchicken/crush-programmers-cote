def solution(n):
    answer = [1]*(n+1)
    for i in range(2,n+1):
        if answer[i]:
            for j in range(i*2,n+1,i):answer[j]=0
    return sum(answer)-2