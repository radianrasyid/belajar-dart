// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';

// import 'package:fazztrack_batch1/main.dart';

void main() {
  List<int> target = [90, 30, 36, 60];
  List<int> components = [2, 6, 5, 3];
  final int len = components.length;
  countTriplets(components, len, target);
  palindrome("civil");
}

countTriplets(arr, n, m) {
  // Consider all triplets and count if
  // their product is equal to m
  List<String> temp = [];
  for (var x = 0; x < m.length; x++) {
    for (var i = 0; i < n - 2; i++) {
      for (var j = i + 1; j < n - 1; j++) {
        for (var k = j + 1; k < n; k++) {
          if (arr[i] * arr[j] * arr[k] == m[x]) {
            temp.add("${arr[i]} * ${arr[j]} * ${arr[k]}");
          }
        }
      }
    }
  }

  print(temp);
}

palindrome(test) {
  test = test.toLowerCase();

  List<String> list = [];
  var len = test.length;
  for (var i = 0; i < len / 2; i++) {
    if (test[0] == test[len - 1 - i]) {
      list.add("true");
    } else {
      list.add("false");
    }
  }
  print(list);
  return print(list.contains("true"));
}
