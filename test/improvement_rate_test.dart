// Copyright (c) 2021, Kato Shinya. All rights reserved.
// Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Package imports:
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

// Project imports:
import 'package:improvement_rate/improvement_rate.dart';

void main() {
  final calculator = Calculator.instance;

  group('Test should be decreased.', () {
    test('Test worse case.', () {
      final result = calculator.evaluate(before: 35, after: 87);

      expect(result.before, 35);
      expect(result.after, 87);
      expect(result.value.toStringAsFixed(3), '-148.571');
      expect(result.trend, Trend.worse);
      expect(result.policy, ShouldBe.decreased);
    });

    test('Test better case.', () {
      final result = calculator.evaluate(before: 35, after: 10);

      expect(result.before, 35);
      expect(result.after, 10);
      expect(result.value.toStringAsFixed(3), '71.429');
      expect(result.trend, Trend.better);
      expect(result.policy, ShouldBe.decreased);
    });
  });

  group('Test should be increased.', () {
    test('Test worse case.', () {
      final result = calculator.evaluate(
        before: 35,
        after: 87,
        policy: ShouldBe.increased,
      );

      expect(result.before, 35);
      expect(result.after, 87);
      expect(result.value.toStringAsFixed(3), '148.571');
      expect(result.trend, Trend.better);
      expect(result.policy, ShouldBe.increased);
    });

    test('Test better case.', () {
      final result = calculator.evaluate(
        before: 35,
        after: 10,
        policy: ShouldBe.increased,
      );

      expect(result.before, 35);
      expect(result.after, 10);
      expect(result.value.toStringAsFixed(3), '-71.429');
      expect(result.trend, Trend.worse);
      expect(result.policy, ShouldBe.increased);
    });
  });
}
