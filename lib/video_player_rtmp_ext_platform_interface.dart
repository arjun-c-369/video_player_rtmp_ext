import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'models/android_play_manager.dart';
import 'models/play_source.dart';

abstract class VideoPlayerRtmpExtPlatform extends PlatformInterface {
  VideoPlayerRtmpExtPlatform() : super(token: _token);

  static final Object _token = Object();

  ///组件初始化
  Future<dynamic> init();

  ///拉流
  Future<void> initIJKPlayController(PlaySource source);

  ///开始播放
  Future<void> play();

  ///销毁
  void dispose();

  ///暂停
  Future<void> pause();

  ///是否正在播放
  Future<bool> isPlaying();

  ///结束播放
  Future<void> stop();

  ///更换安卓播放器内核
  ///仅安卓可以设置
  /// only android
  Future<void> changeModel(PlayerFactory playerFactory);

}
