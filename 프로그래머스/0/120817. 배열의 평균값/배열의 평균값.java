class Solution {
    public double solution(int[] numbers) {
        double answer = 0;
        double sum = 0;
        for(Integer number:numbers) {
            sum += number;
        }
        answer = sum / numbers.length;
        return answer;
    }
}