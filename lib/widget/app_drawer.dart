import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          _header(),
          ListTile(
            leading: const Icon(Icons.home),
            title: Text(
              "Home",
              style: Theme.of(context).textTheme.headline4,
            ),
            onTap: () {
              // Navigator.of(context)
              //     .push(MaterialPageRoute(builder: (context) => StudentHome()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: Text(
              "Logout",
              style: Theme.of(context).textTheme.headline4,
            ),
            onTap: () {
              // logoutAlert();
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        title: const Text("Do you really want to logut?"),
                        actions: [
                          ElevatedButton(
                            child: const Text("Logout"),
                            onPressed: () {
                              // SharedPref().clearSharedPref();
                              // Navigator.of(context).pop();

                              // Navigator.of(context).push(MaterialPageRoute(
                              //   builder: (context) => Login(),
                              // ));
                            },
                          )
                        ],
                      ));
            },
          ),
        ],
      ),
    );
  }

  Widget _header() {
    return DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration:
            const BoxDecoration(color: Color.fromARGB(255, 241, 228, 235)),
        // ignore: prefer_const_literals_to_create_immutables
        child: Stack(children: <Widget>[
          const Center(
            child: Image(
              image: AssetImage('assets/images/demo.png'),
              width: 100,
              height: 100,
              fit: BoxFit.scaleDown,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          // Positioned(
          //     bottom: 12.0,
          //     left: 16.0,
          //     child: Text("Gyanpeeth",
          //         style: TextStyle(
          //             color: Colors.white,
          //             fontSize: 20.0,
          //             fontWeight: FontWeight.w500))),
        ]));
  }

  // logoutAlert() {
  //   return showDialog(
  //       context: context,
  //       builder: (context) => AlertDialog(
  //             title: Text("Do you really want to logut?"),
  //             actions: [
  //               ElevatedButton(
  //                 child: Text("Logout"),
  //                 onPressed: () {
  //                   Navigator.of(context).pop();

  //                   // downloadFile();
  //                 },
  //               )
  //             ],
  //           ));
  // }
}
