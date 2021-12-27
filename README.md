**_A most easily usable improvement rate calculator library in Dart!_**

[![pub package](https://img.shields.io/pub/v/improvement_rate.svg)](https://pub.dev/packages/improvement_rate)
[![codecov](https://codecov.io/gh/myConsciousness/improvement-rate/branch/main/graph/badge.svg?token=2JMUAZOIGB)](https://codecov.io/gh/myConsciousness/improvement-rate)
[![Analyzer](https://github.com/myConsciousness/improvement-rate/actions/workflows/analyzer.yml/badge.svg)](https://github.com/myConsciousness/improvement-rate/actions/workflows/analyzer.yml)
[![Test](https://github.com/myConsciousness/improvement-rate/actions/workflows/test.yml/badge.svg)](https://github.com/myConsciousness/improvement-rate/actions/workflows/test.yml)

<!-- TOC -->

- [1. About](#1-about)
  - [1.1. Introduction](#11-introduction)
    - [1.1.1. Install Library](#111-install-library)
    - [1.1.2. Import It](#112-import-it)
    - [1.1.3. Use ImprovementRate](#113-use-improvementrate)
  - [1.2. License](#12-license)
  - [1.3. More Information](#13-more-information)

<!-- /TOC -->

# 1. About

`ImprovementRate` is an open-sourced Dart library.</br>
With `ImprovementRate`, you can easily calculate improvement rate on your application.

The following formula is used to calculate the improvement rate.

**_When after value should be increased:_**

```math
Rate = (after - before) / before × 100.0
```

**_When after value should be decreased:_**

```math
Rate = -((after - before) / before × 100.0)
```

## 1.1. Introduction

### 1.1.1. Install Library

**_With Dart:_**

```terminal
 dart pub add improvement_rate
```

**_With Flutter:_**

```terminal
 flutter pub add improvement_rate
```

### 1.1.2. Import It

```dart
import 'package:improvement_rate/improvement_rate.dart';
```

### 1.1.3. Use ImprovementRate

```dart
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
}
```

## 1.2. License

```license
Copyright (c) 2021, Kato Shinya. All rights reserved.
Use of this source code is governed by a
BSD-style license that can be found in the LICENSE file.
```

## 1.3. More Information

`ImprovementRate` was designed and implemented by **_Kato Shinya_**.

- [Creator Profile](https://github.com/myConsciousness)
- [License](https://github.com/myConsciousness/improvement-rate/blob/main/LICENSE)
- [API Document](https://pub.dev/documentation/improvement_rate/latest/improvement_rate/improvement_rate-library.html)
- [Release Note](https://github.com/myConsciousness/improvement-rate/releases)
- [Bug Report](https://github.com/myConsciousness/improvement-rate/issues)
