def solution(arr, divisor):
    answer = []
    for element in arr:
        if element % divisor == 0:
            answer.append(element)
            
    if not answer:
        return [-1]
    
    else:
        answer.sort()
        
    return answer