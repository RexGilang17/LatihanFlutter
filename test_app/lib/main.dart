import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(title: const Text("First APP"), actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        ]),
        body: ListView(
          padding: const EdgeInsets.all(20),
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            const CircleAvatar(
              maxRadius: 50,
              backgroundColor: Colors.black,
              child: Icon(Icons.person, color: Colors.white, size: 50),
            ),
            const Center(
              child: Text(
                'YoW',
                style: TextStyle(
                  fontSize: 50,
                ),
              ),
            ),
            const Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry.",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                ), //BoxDecoration
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.blueAccent),
                  accountName: Text(
                    "GilangIlang",
                    style: TextStyle(fontSize: 18),
                  ),
                  accountEmail: Text("GilangRamadhan@gmail.com"),
                  currentAccountPictureSize: Size.square(50),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    child: Text(
                      "A",
                      style: TextStyle(fontSize: 30.0, color: Colors.blue),
                    ), //Text
                  ), //circleAvatar
                ), //UserAccountDrawerHeader
              ),
              ListTile(
                onTap: () {
                  print("menu 1 pressed");
                },
                leading: const Icon(Icons.list_alt_rounded),
                title: const Text("MENU 1"),
                trailing: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.more_horiz)),
              ),
              ListTile(
                onTap: () {
                  print("menu 2 pressed");
                },
                leading: const Icon(Icons.line_style_rounded),
                title: const Text("MENU 2"),
                trailing: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.more_horiz)),
              ),
              ListTile(
                onTap: () {
                  print("menu 3 pressed");
                },
                leading: const Icon(Icons.library_add_rounded),
                title: const Text("MENU 3"),
                trailing: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.more_horiz)),
              ),
              ListTile(
                onTap: () {
                  print("menu 4 pressed");
                },
                leading: const Icon(Icons.lightbulb_circle_rounded),
                title: const Text("MENU 4"),
                trailing: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.more_horiz)),
              ),
              ListTile(
                onTap: () {
                  print("menu 5 pressed");
                },
                leading: const Icon(Icons.line_weight_rounded),
                title: const Text("MENU 5"),
                trailing: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.more_horiz)),
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text('LogOut'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          elevation: 10.0,
          child: const Icon(Icons.add),
          onPressed: () {},
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: 0,
            fixedColor: Colors.lightBlueAccent,
            items: const [
              BottomNavigationBarItem(
                label: "Home",
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                label: "Search",
                icon: Icon(Icons.search),
              ),
              BottomNavigationBarItem(
                label: "Profile",
                icon: Icon(Icons.account_circle),
              ),
            ],
            onTap: (int indexOfItem) {}),
      ),
    );
  }
}
