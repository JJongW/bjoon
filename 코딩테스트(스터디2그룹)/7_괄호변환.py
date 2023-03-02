def solution(number, k):
    answer = [] # Stack
    print(number)
    for num in number:
        while k > 0 and answer and answer[-1] < num:
            answer.pop()
            k -= 1
        answer.append(num)
    print(answer)
    return ''.join(answer[:len(answer) - k])

print(solution("1924", 2))