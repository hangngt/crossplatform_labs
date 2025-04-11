import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    body: XylophoneApp(),
  )));
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Xylophone(),
    );
  }
}

class Xylophone extends StatelessWidget {
  final AudioPlayer player = AudioPlayer(); // Tạo một instance của AudioPlayer

  void play(int notenum) async {
    await player.stop(); // Dừng âm thanh trước đó để tránh bị chồng tiếng
    await player.play(AssetSource('note$notenum.wav'));
  }

  Expanded buildButton({required Color color, required int notenum}) {
    return Expanded(
      child: GestureDetector(
        //dung nhu textButton nhung khong co am bao
        onTap: () => play(notenum), // Phát âm thanh khi nhấn
        child: Container(
          color: color,
          alignment: Alignment.center,
          child: Text(
            'Note $notenum',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    player.dispose(); //giai phong bo nho khi widget bi huy
    // super.dispose();
  }

  @override
  Widget build(BuildContext) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Xylophone App'),
        backgroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildButton(color: Colors.red, notenum: 1),
          buildButton(color: Colors.orange, notenum: 2),
          buildButton(color: Colors.yellow, notenum: 3),
          buildButton(color: Colors.green, notenum: 4),
          buildButton(color: Colors.blue, notenum: 5),
          buildButton(color: Colors.indigo, notenum: 6),
          buildButton(color: Colors.purple, notenum: 7),
        ],
      ),
    );
  }
}
