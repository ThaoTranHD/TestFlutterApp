import 'dart:ui';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GetStartedPage(),
    );
  }
}

class GetStartedPage extends StatefulWidget {
  const GetStartedPage({super.key});

  @override
  _GetStartedPageState createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          verticalDirection: VerticalDirection.down,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 180,
                  height: 180,
                  decoration: BoxDecoration(
                    color: Colors.red.shade200,
                    borderRadius: const BorderRadius.all(Radius.circular(90)),
                  ),
                ),
                Column(children: [
                  const SizedBox(
                    height: 150,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade300,
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                    ),
                  ),
                ])
              ],
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
        Positioned(
          top: 100,
          right: 80,
          child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
              child: Center(
                child: Image(
                  image: const AssetImage('assets/images/image_logo_swift.png'),
                  width: (MediaQuery.of(context).size.width) / 2,
                  height: (MediaQuery.of(context).size.width) / 2,
                  fit: BoxFit.contain,
                ),
              )),
        )
      ],
    ));
  }
}
