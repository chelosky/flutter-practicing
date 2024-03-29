import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class HomeScreen extends StatefulWidget {
  static const String routePath = '/home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool playing = false;
  final audioPlayer = AudioPlayer();

  @override
  void initState() {
    super.initState();
    audioPlayer.onPlayerComplete.listen((event) {
      playing = false;
      setState(() {});
    });
  }

  changePlayingState() async {
    playing = !playing;
    if (playing && audioPlayer.state == PlayerState.playing) {
      await audioPlayer.pause();
      return;
    }

    await audioPlayer.play(
      UrlSource(
          'https://drive.google.com/uc?export=download&id=1MbJot8q_z9BaELL0axaADwFmjeeXRBED'),
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: const Color(0xffefefef),
      appBar: _homeAppBar(),
      body: _homeBody(
        changePlayStatus: changePlayingState,
        playing: playing,
      ),
      bottomNavigationBar: _homeNavigationBar(),
    );
  }

  SizedBox _homeNavigationBar() {
    return SizedBox(
      height: 120,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {},
              child: const Icon(
                Icons.shuffle,
              ),
            ),
            Row(
              children: const [
                Icon(Icons.fast_rewind),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.pause_circle_filled,
                  size: 60,
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(Icons.fast_forward),
              ],
            ),
            InkWell(
              onTap: () {},
              child: const Icon(
                Icons.toc,
              ),
            ),
          ],
        ),
      ),
    );
  }

  SizedBox _homeBody({
    required Function changePlayStatus,
    required bool playing,
  }) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                bottom: -45,
                left: -40,
                child: SleekCircularSlider(
                  min: 0,
                  max: 10,
                  initialValue: 8,
                  appearance: CircularSliderAppearance(
                      size: 360,
                      counterClockwise: true,
                      startAngle: 150,
                      angleRange: 120,
                      customWidths: CustomSliderWidths(
                        trackWidth: 3,
                        progressBarWidth: 10,
                        shadowWidth: 0,
                      ),
                      customColors: CustomSliderColors(
                        trackColor: Colors.black12,
                        progressBarColor: Colors.black,
                      ),
                      infoProperties: InfoProperties(
                        mainLabelStyle: const TextStyle(
                          color: Colors.transparent,
                        ),
                      )),
                ),
              ),
              Container(
                width: 275,
                height: 390,
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      offset: Offset(0, 20),
                      blurRadius: 30,
                      spreadRadius: 0,
                    ),
                  ],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(200),
                    bottomRight: Radius.circular(200),
                  ),
                  image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                      Colors.red,
                      BlendMode.multiply,
                    ),
                    fit: BoxFit.fill,
                    image: NetworkImage(
                      'https://drive.google.com/uc?download=view&id=1om6uStSOnzCRxfdooKKROFiY3upjwXIZ',
                    ),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () => changePlayStatus(),
                      child: Icon(
                        !playing ? Icons.play_arrow : Icons.pause,
                        size: 200,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 75,
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      bottom: 40,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Small Text',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          '4:20',
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  AppBar _homeAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: IconButton(
        iconSize: 35,
        icon: const Icon(
          Icons.chevron_left,
          color: Colors.black,
        ),
        onPressed: () {
          print('xd');
        },
      ),
      actions: const [
        IconButton(
          onPressed: null,
          icon: Icon(
            Icons.question_mark,
            color: Colors.black,
            size: 35,
          ),
        )
      ],
    );
  }
}
