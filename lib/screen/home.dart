import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 202, 207, 209),
      body: _body(),
    );
  }

  Widget _body() {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      // decoration: BoxDecoration(
      //     image: DecorationImage(
      //         image: AssetImage(
      //   "assets/images/gpo_bgg.png",
      // ))),
      child: Stack(
        children: [
          // Expanded(
          //   child: Image.asset(
          //     "assets/images/bg.png",
          //     height: MediaQuery.of(context).size.height,
          //     width: MediaQuery.of(context).size.width,
          //   ),
          // )
        ],
      ),
    );
  }
}
