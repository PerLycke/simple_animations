import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sa_stateless_animation/sa_stateless_animation.dart';
import 'package:supercharged/supercharged.dart';

import './widget_tester_extension.dart';

void main() {
  testWidgets('LoopAnimation case1', (WidgetTester tester) async {
    var values = <int>[];
    final animation = MaterialApp(
        home: LoopAnimation<int>(
      duration: 100.days,
      tween: 0.tweenTo(100),
      curve: Curves.easeInOut,
      builder: (context, child, value) {
        values.add(value);
        return Container();
      },
    ));

    await tester.addAnimationWidget(animation);

    for (var i = 0; i < 1000; i++) {
      await tester.wait(1.days);
    }

    expect(values, expectedValues1);
  });
}

const expectedValues1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 5, 5, 5, 5, 6, 6, 7, 7, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 17, 17, 19, 19, 20, 20, 21, 21, 23, 23, 24, 24, 25, 25, 27, 27, 28, 28, 30, 30, 32, 32, 33, 33, 35, 35, 36, 36, 38, 38, 40, 40, 42, 42, 43, 43, 45, 45, 46, 46, 48, 48, 50, 50, 52, 52, 54, 54, 55, 55, 57, 57, 58, 58, 60, 60, 62, 62, 64, 64, 65, 65, 67, 67, 68, 68, 70, 70, 72, 72, 73, 73, 75, 75, 76, 76, 77, 77, 79, 79, 80, 80, 81, 81, 83, 83, 84, 84, 85, 85, 86, 86, 87, 87, 88, 88, 89, 89, 90, 90, 91, 91, 92, 92, 93, 93, 93, 93, 94, 94, 95, 95, 95, 95, 96, 96, 97, 97, 97, 97, 98, 98, 98, 98, 98, 98, 99, 99, 99, 99, 99, 99, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 5, 5, 5, 5, 6, 6, 7, 7, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 17, 17, 19, 19, 20, 20, 21, 21, 23, 23, 24, 24, 25, 25, 27, 27, 28, 28, 30, 30, 32, 32, 33, 33, 35, 35, 36, 36, 38, 38, 40, 40, 42, 42, 43, 43, 45, 45, 46, 46, 48, 48, 50, 50, 52, 52, 54, 54, 55, 55, 57, 57, 58, 58, 60, 60, 62, 62, 64, 64, 65, 65, 67, 67, 68, 68, 70, 70, 72, 72, 73, 73, 75, 75, 76, 76, 77, 77, 79, 79, 80, 80, 81, 81, 83, 83, 84, 84, 85, 85, 86, 86, 87, 87, 88, 88, 89, 89, 90, 90, 91, 91, 92, 92, 93, 93, 93, 93, 94, 94, 95, 95, 95, 95, 96, 96, 97, 97, 97, 97, 98, 98, 98, 98, 98, 98, 99, 99, 99, 99, 99, 99, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 5, 5, 5, 5, 6, 6, 7, 7, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 17, 17, 19, 19, 20, 20, 21, 21, 23, 23, 24, 24, 25, 25, 27, 27, 28, 28, 30, 30, 32, 32, 33, 33, 35, 35, 36, 36, 38, 38, 40, 40, 42, 42, 43, 43, 45, 45, 46, 46, 48, 48, 50, 50, 52, 52, 54, 54, 55, 55, 57, 57, 58, 58, 60, 60, 62, 62, 64, 64, 65, 65, 67, 67, 68, 68, 70, 70, 72, 72, 73, 73, 75, 75, 76, 76, 77, 77, 79, 79, 80, 80, 81, 81, 83, 83, 84, 84, 85, 85, 86, 86, 87, 87, 88, 88, 89, 89, 90, 90, 91, 91, 92, 92, 93, 93, 93, 93, 94, 94, 95, 95, 95, 95, 96, 96, 97, 97, 97, 97, 98, 98, 98, 98, 98, 98, 99, 99, 99, 99, 99, 99, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 5, 5, 5, 5, 6, 6, 7, 7, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 17, 17, 19, 19, 20, 20, 21, 21, 23, 23, 24, 24, 25, 25, 27, 27, 28, 28, 30, 30, 32, 32, 33, 33, 35, 35, 36, 36, 38, 38, 40, 40, 42, 42, 43, 43, 45, 45, 46, 46, 48, 48, 50, 50, 52, 52, 54, 54, 55, 55, 57, 57, 58, 58, 60, 60, 62, 62, 64, 64, 65, 65, 67, 67, 68, 68, 70, 70, 72, 72, 73, 73, 75, 75, 76, 76, 77, 77, 79, 79, 80, 80, 81, 81, 83, 83, 84, 84, 85, 85, 86, 86, 87, 87, 88, 88, 89, 89, 90, 90, 91, 91, 92, 92, 93, 93, 93, 93, 94, 94, 95, 95, 95, 95, 96, 96, 97, 97, 97, 97, 98, 98, 98, 98, 98, 98, 99, 99, 99, 99, 99, 99, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 5, 5, 5, 5, 6, 6, 7, 7, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 17, 17, 19, 19, 20, 20, 21, 21, 23, 23, 24, 24, 25, 25, 27, 27, 28, 28, 30, 30, 32, 32, 33, 33, 35, 35, 36, 36, 38, 38, 40, 40, 42, 42, 43, 43, 45, 45, 46, 46, 48, 48, 50, 50, 52, 52, 54, 54, 55, 55, 57, 57, 58, 58, 60, 60, 62, 62, 64, 64, 65, 65, 67, 67, 68, 68, 70, 70, 72, 72, 73, 73, 75, 75, 76, 76, 77, 77, 79, 79, 80, 80, 81, 81, 83, 83, 84, 84, 85, 85, 86, 86, 87, 87, 88, 88, 89, 89, 90, 90, 91, 91, 92, 92, 93, 93, 93, 93, 94, 94, 95, 95, 95, 95, 96, 96, 97, 97, 97, 97, 98, 98, 98, 98, 98, 98, 99, 99, 99, 99, 99, 99, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 5, 5, 5, 5, 6, 6, 7, 7, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 17, 17, 19, 19, 20, 20, 21, 21, 23, 23, 24, 24, 25, 25, 27, 27, 28, 28, 30, 30, 32, 32, 33, 33, 35, 35, 36, 36, 38, 38, 40, 40, 42, 42, 43, 43, 45, 45, 46, 46, 48, 48, 50, 50, 52, 52, 54, 54, 55, 55, 57, 57, 58, 58, 60, 60, 62, 62, 64, 64, 65, 65, 67, 67, 68, 68, 70, 70, 72, 72, 73, 73, 75, 75, 76, 76, 77, 77, 79, 79, 80, 80, 81, 81, 83, 83, 84, 84, 85, 85, 86, 86, 87, 87, 88, 88, 89, 89, 90, 90, 91, 91, 92, 92, 93, 93, 93, 93, 94, 94, 95, 95, 95, 95, 96, 96, 97, 97, 97, 97, 98, 98, 98, 98, 98, 98, 99, 99, 99, 99, 99, 99, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 5, 5, 5, 5, 6, 6, 7, 7, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 17, 17, 19, 19, 20, 20, 21, 21, 23, 23, 24, 24, 25, 25, 27, 27, 28, 28, 30, 30, 32, 32, 33, 33, 35, 35, 36, 36, 38, 38, 40, 40, 42, 42, 43, 43, 45, 45, 46, 46, 48, 48, 50, 50, 52, 52, 54, 54, 55, 55, 57, 57, 58, 58, 60, 60, 62, 62, 64, 64, 65, 65, 67, 67, 68, 68, 70, 70, 72, 72, 73, 73, 75, 75, 76, 76, 77, 77, 79, 79, 80, 80, 81, 81, 83, 83, 84, 84, 85, 85, 86, 86, 87, 87, 88, 88, 89, 89, 90, 90, 91, 91, 92, 92, 93, 93, 93, 93, 94, 94, 95, 95, 95, 95, 96, 96, 97, 97, 97, 97, 98, 98, 98, 98, 98, 98, 99, 99, 99, 99, 99, 99, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 5, 5, 5, 5, 6, 6, 7, 7, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 17, 17, 19, 19, 20, 20, 21, 21, 23, 23, 24, 24, 25, 25, 27, 27, 28, 28, 30, 30, 32, 32, 33, 33, 35, 35, 36, 36, 38, 38, 40, 40, 42, 42, 43, 43, 45, 45, 46, 46, 48, 48, 50, 50, 52, 52, 54, 54, 55, 55, 57, 57, 58, 58, 60, 60, 62, 62, 64, 64, 65, 65, 67, 67, 68, 68, 70, 70, 72, 72, 73, 73, 75, 75, 76, 76, 77, 77, 79, 79, 80, 80, 81, 81, 83, 83, 84, 84, 85, 85, 86, 86, 87, 87, 88, 88, 89, 89, 90, 90, 91, 91, 92, 92, 93, 93, 93, 93, 94, 94, 95, 95, 95, 95, 96, 96, 97, 97, 97, 97, 98, 98, 98, 98, 98, 98, 99, 99, 99, 99, 99, 99, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 5, 5, 5, 5, 6, 6, 7, 7, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 17, 17, 19, 19, 20, 20, 21, 21, 23, 23, 24, 24, 25, 25, 27, 27, 28, 28, 30, 30, 32, 32, 33, 33, 35, 35, 36, 36, 38, 38, 40, 40, 42, 42, 43, 43, 45, 45, 46, 46, 48, 48, 50, 50, 52, 52, 54, 54, 55, 55, 57, 57, 58, 58, 60, 60, 62, 62, 64, 64, 65, 65, 67, 67, 68, 68, 70, 70, 72, 72, 73, 73, 75, 75, 76, 76, 77, 77, 79, 79, 80, 80, 81, 81, 83, 83, 84, 84, 85, 85, 86, 86, 87, 87, 88, 88, 89, 89, 90, 90, 91, 91, 92, 92, 93, 93, 93, 93, 94, 94, 95, 95, 95, 95, 96, 96, 97, 97, 97, 97, 98, 98, 98, 98, 98, 98, 99, 99, 99, 99, 99, 99, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 5, 5, 5, 5, 6, 6, 7, 7, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 17, 17, 19, 19, 20, 20, 21, 21, 23, 23, 24, 24, 25, 25, 27, 27, 28, 28, 30, 30, 32, 32, 33, 33, 35, 35, 36, 36, 38, 38, 40, 40, 42, 42, 43, 43, 45, 45, 46, 46, 48, 48, 50, 50, 52, 52, 54, 54, 55, 55, 57, 57, 58, 58, 60, 60, 62, 62, 64, 64, 65, 65, 67, 67, 68, 68, 70, 70, 72, 72, 73, 73, 75, 75, 76, 76, 77, 77, 79, 79, 80, 80, 81, 81, 83, 83, 84, 84, 85, 85, 86, 86, 87, 87, 88, 88, 89, 89, 90, 90, 91, 91, 92, 92, 93, 93, 93, 93, 94, 94, 95, 95, 95, 95, 96, 96, 97, 97, 97, 97, 98, 98, 98, 98, 98, 98, 99, 99, 99, 99, 99, 99, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 0, 0];
