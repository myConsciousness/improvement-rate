// Copyright (c) 2021, Kato Shinya. All rights reserved.
// Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Project imports:
import 'package:improvement_rate/src/should_be.dart';
import 'package:improvement_rate/src/trend.dart';

/// This class represents the calculated improvement rate.
///
/// The previous and following data used to calculate the improvement rate
/// will be set to [before] and [after]. The improvement rate calculated using
/// these [before] and [after] values will be set in [value] in the form of a percentage.
///
/// The value set in [trend] indicates whether this calculated improvement rate is
/// trending toward better or toward worse.
class ImprovementRate {
  /// Returns the new instance of [ImprovementRate] based on arguments.
  ImprovementRate.from({
    required this.value,
    required this.trend,
    required this.policy,
    required this.before,
    required this.after,
  });

  /// The improvement rate calculated from [before] and [after] in percentage
  final double value;

  /// The trend of improvement rate
  final Trend trend;

  /// The policy for calculating the improvement rate
  final ShouldBe policy;

  /// The previous data
  final double before;

  /// The following data to be compared with previous data
  final double after;

  @override
  String toString() {
    return 'ImprovementRate(value: $value, trend: $trend, policy: $policy, before: $before, after: $after)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ImprovementRate &&
        other.value == value &&
        other.trend == trend &&
        other.policy == policy &&
        other.before == before &&
        other.after == after;
  }

  @override
  int get hashCode {
    return value.hashCode ^
        trend.hashCode ^
        policy.hashCode ^
        before.hashCode ^
        after.hashCode;
  }
}
