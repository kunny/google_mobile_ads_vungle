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

import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'google_mobile_ads_vungle_method_channel.dart';

abstract class GoogleMobileAdsVunglePlatform extends PlatformInterface {
  /// Constructs a GoogleMobileAdsVunglePlatform.
  GoogleMobileAdsVunglePlatform() : super(token: _token);

  static final Object _token = Object();

  static GoogleMobileAdsVunglePlatform _instance = MethodChannelGoogleMobileAdsVungle();

  /// The default instance of [GoogleMobileAdsVunglePlatform] to use.
  ///
  /// Defaults to [MethodChannelGoogleMobileAdsVungle].
  static GoogleMobileAdsVunglePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [GoogleMobileAdsVunglePlatform] when
  /// they register themselves.
  static set instance(GoogleMobileAdsVunglePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }
}
