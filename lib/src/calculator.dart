// Copyright (c) 2021, Kato Shinya. All rights reserved.
// Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Project imports:
import 'package:improvement_rate/src/improvement_rate.dart';
import 'package:improvement_rate/src/improvement_rate_calculator.dart';
import 'package:improvement_rate/src/should_be.dart';

/// This abstract class represents a calculator that compute the improvement rate.
///
/// **_Example:_**
///
/// ```dart
/// import 'package:improvement_rate/improvement_rate.dart';
///
/// void main() {
///   final calculator = Calculator.instance;
///
///   final resultShouldBeDecreased = calculator.evaluate(
///     before: 100,
///     after: 37,
///   );
///
///   final resultShouldBeIncreased = calculator.evaluate(
///     before: 100,
///     after: 37,
///     policy: ShouldBe.increased,
///   );
///
///   print(resultShouldBeDecreased);
///   // => ImprovementRate(value: 63.0, trend: Trend.better, policy: ShouldBe.decreased, before: 100.0, after: 37.0)
///
///   print(resultShouldBeIncreased);
///   // => ImprovementRate(value: -63.0, trend: Trend.worse, policy: ShouldBe.increased, before: 100.0, after: 37.0)
///
///   switch (resultShouldBeDecreased.trend) {
///     case Trend.better:
///       return;
///     case Trend.worse:
///       return;
///   }
/// }
/// ```
abstract class Calculator {
  /// Returns the singleton instance of [Calculator].
  static Calculator get instance => ImprovementRateCalculator.instance;

  /// Returns the improvement rate calculated from [before] and [after] based on [policy].
  ///
  /// If the [policy] is `increased`, a good trend is considered when the value of
  /// [before] increases more than the value of [after]. Conversely, when the policy is
  /// `decreased`, a good trend is considered when the value of [before] is less than
  /// the value of [after]. By default, the policy is set to `decreased`.
  ///
  /// The following formula is used to calculate the improvement rate.
  ///
  /// ```math
  /// Rate = (after - before) / |before| × 100.0
  /// ```
  ImprovementRate evaluate({
    required double before,
    required double after,
    ShouldBe policy = ShouldBe.decreased,
  });
}
