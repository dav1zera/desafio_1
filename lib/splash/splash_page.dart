import 'package:desafio_1/commons/widgets/screen_image.dart';
import 'package:desafio_1/splash/splash_controller.dart';

import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({
    Key? key,
  }) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  final SplashController controller = SplashController();

  @override
  void initState() {
    controller.loadData(context);
    animationController =
        new AnimationController(vsync: this, duration: Duration(seconds: 3));
    animationController.repeat(reverse: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: ListView(
        physics: NeverScrollableScrollPhysics(),
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.30,
          ),
          FadeTransition(
            opacity: animationController,
            child: ScreenImage(
              image: "assets/images/screen.png",
            ),
          ),
        ],
      ),
    );
  }

  void dispose() {
    animationController.dispose();
    super.dispose();
  }
}
