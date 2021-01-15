// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated)

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

@TestOn('windows')

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';

import 'package:win32/win32.dart';

void main() {
  final ptr = zeroAllocate<COMObject>();

  final errorinfo = IErrorInfo(ptr);
  test('Can instantiate IErrorInfo.GetGUID', () {
    expect(errorinfo.GetGUID, isA<Function>());
  });
  test('Can instantiate IErrorInfo.GetSource', () {
    expect(errorinfo.GetSource, isA<Function>());
  });
  test('Can instantiate IErrorInfo.GetDescription', () {
    expect(errorinfo.GetDescription, isA<Function>());
  });
  test('Can instantiate IErrorInfo.GetHelpFile', () {
    expect(errorinfo.GetHelpFile, isA<Function>());
  });
  test('Can instantiate IErrorInfo.GetHelpContext', () {
    expect(errorinfo.GetHelpContext, isA<Function>());
  });
  free(ptr);
}