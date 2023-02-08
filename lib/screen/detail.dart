import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gpo/widget/strings.dart';

class DetailPage extends StatelessWidget {
  // final String imagePath;
  // final String details;

  // DetailPage({
  //   required this.imagePath,
  //   required this.text,
  // });

  final faker = Faker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: const Color.fromARGB(255, 248, 248, 246),
        leading: const BackButton(color: Colors.black),
        title: Wrap(
          children: [
            // const Icon(
            //   Icons.settings,
            //   color: Colors.black45,
            // ),
            Text("Details", style: Theme.of(context).textTheme.headline4),
          ],
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Get.arguments[0]),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            child: Text(
              Get.arguments[1],
              style: const TextStyle(fontSize: 18),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            child: Text(
              lormp,
              style: const TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
