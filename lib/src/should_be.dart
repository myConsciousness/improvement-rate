// Copyright (c) 2021, Kato Shinya. All rights reserved.
// Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/// The enum that represents the policy used to calculate the improvement rate.
enum ShouldBe {
  /// It indicates that the after should be increased over the before.
  increased,

  /// It indicates that the after should be decreased over the before.
  decreased,
}
