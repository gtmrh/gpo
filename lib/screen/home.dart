import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gpo/model/menu_model.dart';
import 'package:gpo/widget/strings.dart';
import 'package:gpo/widget/widget_util.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      backgroundColor: const Color.fromARGB(255, 164, 205, 211),
      body: _body(),
    );
  }

  Widget _body() {
    return Column(
      children: [
        Container(
          height: 150,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              image: DecorationImage(
                  image: AssetImage(
                    "assets/images/banner.jpg",
                  ),
                  // opacity: 180,
                  fit: BoxFit.fill)),
        ),
        const SizedBox(
          height: 30,
        ),
        WidgetUtil.servicesLottie(),
        const SizedBox(
          height: 30,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                // childAspectRatio: 1 / 2
              ),
              itemCount: WidgetUtil.menus.length,
              itemBuilder: (BuildContext context, int index) {
                return Center(child: Menu(menu: WidgetUtil.menus[index]));
              },

              // children: List.generate(WidgetUtil.menus.length, (index) {
              //   return Center(child: Menu(menu: WidgetUtil.menus[index]));
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}

class Menu extends StatelessWidget {
  const Menu({super.key, required this.menu});

  final MenuModel menu;

  @override
  Widget build(BuildContext context) {
    TextStyle? textStyle = Theme.of(context).textTheme.headline5;

    return Card(
        color: Colors.white,
        // shape: ShapeBorder(c),
        child: InkWell(
          onTap: () {
            Get.toNamed(DETAIL_SCREEN, arguments: [
              menu.image,
              menu.title,
            ]);
          },
          child: Center(
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      // flex: 2,
                      child: Image.asset(
                    menu.image,

                    // height: 100,
                    // width: double.infinity,
                    fit: BoxFit.fitWidth,
                  )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      menu.title,
                      style: textStyle,
                    ),
                  ),
                ]),
          ),
        ));
  }
}
