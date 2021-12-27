// Copyright (c) 2021, Kato Shinya. All rights reserved.
// Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:improvement_rate/improvement_rate.dart';

void main() {
  final calculator = Calculator.instance;

  final resultShouldBeDecreased = calculator.evaluate(
    before: 100,
    after: 37,
  );

  final resultShouldBeIncreased = calculator.evaluate(
    before: 100,
    after: 37,
    policy: ShouldBe.increased,
  );

  print(resultShouldBeDecreased);
  print(resultShouldBeIncreased);

  switch (resultShouldBeDecreased.trend) {
    case Trend.better:
      return;
    case Trend.worse:
      return;
  }
}
