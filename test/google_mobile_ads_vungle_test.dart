// Copyright 2022 Taeho Kim <jyte82@gmail.com>
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// https://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter_test/flutter_test.dart';
import 'package:google_mobile_ads_vungle/google_mobile_ads_vungle_method_channel.dart';
import 'package:google_mobile_ads_vungle/google_mobile_ads_vungle_platform_interface.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockGoogleMobileAdsVunglePlatform
    with MockPlatformInterfaceMixin
    implements GoogleMobileAdsVunglePlatform {}

void main() {
  final GoogleMobileAdsVunglePlatform initialPlatform =
      GoogleMobileAdsVunglePlatform.instance;

  test('$MethodChannelGoogleMobileAdsVungle is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelGoogleMobileAdsVungle>());
  });
}
