import 'dart:async';

import 'package:alquran_new/common.dart';
import 'package:alquran_new/core/controller/alquran_controller.dart';
import 'package:alquran_new/core/models/alquran/surah.dart';
import 'package:alquran_new/core/redux/actions/alquran_action/alquran_action.dart';
import 'package:alquran_new/core/utils/utils.dart';
import 'package:alquran_new/ui/components/default_store_connector.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class DetailAlquranPage extends StatefulActionMapper {
  const DetailAlquranPage({
    super.key,
    required this.no,
  });

  final String no;

  @override
  State<DetailAlquranPage> createState() => _DetailAlquranPageState();
}

class _DetailAlquranPageState extends State<DetailAlquranPage> {
  late final List<AudioPlayer> _players;

  @override
  void initState() {
    super.initState();
    _players = [];
  }

  @override
  void dispose() {
    super.dispose();
    for (var e in _players) {
      e.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: widget.getIt.get<AlquranController>().getAlquranDetail(
            no: widget.no,
          ),
      builder: (_, snapshot) {
        if (snapshot.hasData) {
          final data = snapshot.data!;
          final surah = data.surah;

          if (_players.isEmpty) {
            _players.addAll(
              List.generate(
                surah.length,
                (index) => AudioPlayer(
                  playerId: '${data.alquran.name}-${index + 1}',
                ),
              ),
            );
          }

          return Scaffold(
            appBar: AppBar(
              title: Text(data.alquran.name),
            ),
            endDrawer: Drawer(
              child: DefaultStoreConnector(
                builder: (context, state) {
                  final alquranState = state.alquranState;
                  return ListView(
                    padding: EdgeInsets.only(
                      top: context.viewBottomArea + 50,
                    ),
                    children: [
                      const Center(
                        child: Text(
                          'Pengaturan Baca',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ListTile(
                        title: const Text(
                          'Tampilan Audio',
                        ),
                        trailing: CupertinoSwitch(
                          value: alquranState.showAudio,
                          onChanged: (value) => widget.store.dispatch(
                            SetAudioToggleAction(
                              value,
                            ),
                          ),
                        ),
                      ),
                      ListTile(
                        title: const Text(
                          'Tampilan Latin',
                        ),
                        trailing: CupertinoSwitch(
                          value: alquranState.showLatin,
                          onChanged: (value) => widget.store.dispatch(
                            SetLatinToggleAction(
                              value,
                            ),
                          ),
                        ),
                      ),
                      ListTile(
                        title: const Text(
                          'Tampilan Terjemahan',
                        ),
                        trailing: CupertinoSwitch(
                          value: alquranState.showTranslate,
                          onChanged: (value) => widget.store.dispatch(
                            SetTranslateToggleAction(
                              value,
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            body: ScrollablePositionedList.separated(
              itemCount: surah.length,
              padding: const EdgeInsets.only(bottom: 50),
              itemBuilder: (_, index) {
                final item = surah[index];
                return _AyahCard(
                  item: item,
                  player: _players[index],
                );
              },
              separatorBuilder: (_, __) => const SizedBox(height: 20),
            ),
          );
        }
        return const SizedBox();
      },
    );
  }
}

class _AyahCard extends StatelessWidget {
  const _AyahCard({
    required this.item,
    required this.player,
  });

  final Surah item;
  final AudioPlayer player;

  @override
  Widget build(BuildContext context) {
    return DefaultStoreConnector(
      builder: (context, state) {
        final alquranState = state.alquranState;
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Tooltip(
                      message: 'Nomor ${item.no}',
                      child: SizedBox.square(
                        dimension: 24,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: context.colorScheme.surfaceTint,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Text(
                              toArabicNumber(
                                item.no,
                              ),
                              style: const TextStyle(
                                fontFamily: 'Umani',
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        item.arab,
                        textAlign: TextAlign.right,
                        style: const TextStyle(
                          fontFamily: 'Umani',
                          fontSize: 26,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              if (alquranState.showLatin) ...[
                Text(
                  item.latin,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 4),
              ],
              if (alquranState.showTranslate) ...[
                Text(
                  item.translate.id,
                ),
                const SizedBox(height: 6),
              ],
              if (alquranState.showAudio) ...[
                const SizedBox(height: 4),
                _AudioControl(
                  surah: item,
                  player: player,
                ),
              ]
            ],
          ),
        );
      },
    );
  }
}

class _AudioControl extends StatefulWidget {
  const _AudioControl({
    required this.surah,
    required this.player,
  });

  final Surah surah;
  final AudioPlayer player;

  @override
  State<_AudioControl> createState() => __AudioControlState();
}

class __AudioControlState extends State<_AudioControl> {
  PlayerState? _playerState;
  Duration? _duration;
  Duration? _position;

  StreamSubscription? _durationSubscription;
  StreamSubscription? _positionSubscription;
  StreamSubscription? _playerCompleteSubscription;
  StreamSubscription? _playerStateChangeSubscription;

  @override
  void initState() {
    super.initState();
    _player.setSourceUrl(
      widget.surah.audio.primary,
    );
    _player.getDuration().then(
          (value) => setState(() {
            _duration = value;
          }),
        );
    _player.getCurrentPosition().then(
          (value) => setState(() {
            _position = value;
          }),
        );
    _initStreams();
  }

  AudioPlayer get _player => widget.player;

  void _initStreams() {
    _durationSubscription = _player.onDurationChanged.listen((duration) {
      setState(() => _duration = duration);
    });

    _positionSubscription = _player.onPositionChanged.listen(
      (p) => setState(
        () => _position = p,
      ),
    );

    _playerCompleteSubscription = _player.onPlayerComplete.listen((event) {
      setState(() {
        _playerState = PlayerState.stopped;
        _position = Duration.zero;
      });
    });

    _playerStateChangeSubscription =
        _player.onPlayerStateChanged.listen((state) {
      setState(() {
        _playerState = state;
      });
    });
  }

  Future<void> _play() async {
    await _player.resume();
    setState(() => _playerState = PlayerState.playing);
  }

  Future<void> _pause() async {
    await _player.pause();
    setState(() => _playerState = PlayerState.paused);
  }

  Future<void> _stop() async {
    await _player.stop();
    setState(() {
      _playerState = PlayerState.stopped;
      _position = Duration.zero;
    });
  }

  bool get _isPlaying => _playerState == PlayerState.playing;

  bool get _isPaused => _playerState == PlayerState.paused;

  String get _durationText => _duration?.toString().split('.').first ?? '';

  @override
  void setState(VoidCallback fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  @override
  void dispose() {
    super.dispose();
    _durationSubscription?.cancel();
    _positionSubscription?.cancel();
    _playerCompleteSubscription?.cancel();
    _playerStateChangeSubscription?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: context.colorScheme.secondaryContainer,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          const SizedBox(width: 5),
          Builder(
            builder: (context) {
              if (!_isPlaying) {
                return IconButton(
                  key: const Key('play_button'),
                  onPressed: _isPlaying ? null : _play,
                  icon: const Icon(Icons.play_arrow),
                );
              }
              if (_isPlaying && !_isPaused) {
                return IconButton(
                  key: const Key('pause_button'),
                  onPressed: _isPlaying ? _pause : null,
                  icon: const Icon(Icons.pause),
                );
              }
              return IconButton(
                key: const Key('stop_button'),
                onPressed: _isPlaying || _isPaused ? _stop : null,
                icon: const Icon(Icons.stop),
              );
            },
          ),
          Expanded(
            child: SliderTheme(
              data: context.theme.sliderTheme.copyWith(
                overlayShape: SliderComponentShape.noThumb,
              ),
              child: Slider(
                value: (_position != null &&
                        _duration != null &&
                        _position!.inMilliseconds > 0 &&
                        _position!.inMilliseconds < _duration!.inMilliseconds)
                    ? _position!.inMilliseconds / _duration!.inMilliseconds
                    : 0.0,
                onChanged: (value) {
                  final duration = _duration;
                  if (duration == null) {
                    return;
                  }
                  final position = value * duration.inMilliseconds;
                  _player.seek(Duration(milliseconds: position.round()));
                },
              ),
            ),
          ),
          Text(_durationText),
          const SizedBox(width: 20),
        ],
      ),
    );
  }
}
