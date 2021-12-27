// Copyright (c) 2021, Kato Shinya. All rights reserved.
// Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Project imports:
import 'package:improvement_rate/src/calculator.dart';
import 'package:improvement_rate/src/improvement_rate.dart';
import 'package:improvement_rate/src/should_be.dart';
import 'package:improvement_rate/src/trend.dart';

/// This is an implementation class of the [Calculator] class.
class ImprovementRateCalculator implements Calculator {
  /// The internal constructor for singleton.
  ImprovementRateCalculator._internal();

  /// Returns the singleton instance of [ImprovementRateCalculator].
  static ImprovementRateCalculator get instance => _singletonInstance;

  /// The singleton instance of [ImprovementRateCalculator].
  static final _singletonInstance = ImprovementRateCalculator._internal();

  @override
  ImprovementRate evaluate({
    required double before,
    required double after,
    ShouldBe policy = ShouldBe.decreased,
  }) {
    final value = _computeImprovementRate(
      before: before,
      after: after,
      policy: policy,
    );

    return ImprovementRate.from(
      value: value,
      trend: value >= 0.0 ? Trend.better : Trend.worse,
      policy: policy,
      before: before,
      after: after,
    );
  }

  double _computeImprovementRate({
    required double before,
    required double after,
    required ShouldBe policy,
  }) {
    switch (policy) {
      case ShouldBe.increased:
        return (after - before) / before * 100.0;
      case ShouldBe.decreased:
        return -((after - before) / before * 100.0);
    }
  }
}
