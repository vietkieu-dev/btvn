import 'package:flutter/material.dart';

void main() {

  // Bài 3
  void main(List<String> arguments) {
    List<int> list = [2, 7, 11, 15, -2]; //target = 9
    twoSum1(list, 9);
  }

  List<int> twoSum1(List<int> numbers, int target) {
    int n = numbers.length;

    for (var i = 0; i < n - 1; i++) {
      for (var j = i + 1; j < n; j++) {
        if (numbers[i] + numbers[j] == target) {
          print('$target vị trí phần tử thứ: $i + $j' );
          return [i, j];
        }
      }
    }
    return [];
  }

  // Bài 4
  // Đề bài và output, input như bài 3.
  // Nhưng sử dụng Map để tối ưu hóa perfomance.
  // Độ phức tạp O(n).
  List<int> twoSum2(List<int> nums, int target) {
    final Map<int, int> map = Map<int, int>();

    for (var i = 0; i < nums.length; i++) {
      final int value = nums[i];
      final int key = target - value;
      if (map.containsKey(key)) {
        print("$target = $key + $value");
        return [map[key]!, i];
      }
      map[value] = i;
    }
    return [];
  }
}