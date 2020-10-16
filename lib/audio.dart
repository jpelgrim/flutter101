import 'dart:io';

import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

class Audio {
  static bool mute = false;

  AudioCache _audioCache;
  AudioPlayer _audioPlayer;
  String _audioFile;

  Audio(String audioFile) {
    AudioPlayer.logEnabled = false;
    _audioFile = audioFile;
    _audioPlayer = AudioPlayer(mode: PlayerMode.MEDIA_PLAYER);
    _audioCache =
        AudioCache(prefix: 'assets/sounds/', fixedPlayer: _audioPlayer)
          ..loadAll([audioFile]);
    _fixCallbackLookupFailedIssue();
  }

  // https://github.com/luanpotter/audioplayers/issues/344
  void _fixCallbackLookupFailedIssue() {
    if (Platform.isIOS) {
      _audioPlayer
          .monitorNotificationStateChanges(_audioPlayerStateChangeHandler);
    }
  }

  void start() {
    if (!mute) _audioCache.play(_audioFile);
  }

  void loop() {
    if (!mute) _audioCache.loop(_audioFile);
  }

  void stop() => _audioPlayer.stop();

  Future<void> dispose() async {
    await _audioPlayer.pause();
    await _audioPlayer.dispose();
  }
}

void _audioPlayerStateChangeHandler(AudioPlayerState state) => null;
