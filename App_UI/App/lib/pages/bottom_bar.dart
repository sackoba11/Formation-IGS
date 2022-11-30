import 'package:flutter/material.dart';
import 'package:mon_app/pages/profil.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
  int _selectedIndex = 0;
  static final List<Widget> _widgetoptions = <Widget>[
    const Profils(),
    const Text('Person'),
    const Text('Camera'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldkey,
        drawer: Drawer(
          width: 210,
          child: ListView(
            //padding: const EdgeInsets.only(left: 20),
            children: [
              DrawerHeader(
                padding: const EdgeInsets.all(0),
                margin: const EdgeInsets.only(bottom: 35),
                decoration: const BoxDecoration(
                  border: Border(
                    // top: BorderSide(color: Color(0xFFFFFFFF)),
                    // left: BorderSide(color: Color(0xFFFFFFFF)),
                    // right: BorderSide(color: Color(0xFFFFFFFF)),
                    bottom: BorderSide(color: Colors.grey),
                  ),
                  //color: Color.fromARGB(206, 5, 60, 116),
                ),
                child: Center(
                  child: ListTile(
                    leading: const CircleAvatar(
                      radius: 20,
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.black,
                      child: Icon(Icons.person),
                    ),
                    title: const Text(
                      'Non',
                      style: TextStyle(fontSize: 17),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(
                  Icons.home,
                  size: 30,
                  color: Colors.black,
                ),
                title: const Text(
                  'Home',
                  style: TextStyle(fontSize: 17),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              const SizedBox(height: 25),
              ListTile(
                leading: const Icon(
                  Icons.all_inbox,
                  size: 30,
                  color: Colors.black,
                ),
                title: const Text(
                  'About',
                  style: TextStyle(fontSize: 17),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              const SizedBox(height: 25),
              ListTile(
                leading: const Icon(
                  Icons.settings,
                  size: 30,
                  color: Colors.black,
                ),
                title: const Text(
                  'Settings',
                  style: TextStyle(fontSize: 17),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              const SizedBox(
                height: 200,
              ),
              const Divider(
                thickness: 1,
                height: 10,
                color: Colors.grey,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // ignore: prefer_const_constructors
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: const IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.facebook,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(
                      "images/Twitter1.png",
                      width: 20,
                      height: 20,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Image.asset(
                      "images/goole.png",
                      width: 20,
                      height: 20,
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: const IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.apple,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Center(
                child: Text(
                  "app name",
                  style: TextStyle(
                      color: Colors.grey,
                      decorationColor: Colors.grey,
                      fontSize: 17,
                      decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
        ),
        body: ListView(scrollDirection: Axis.vertical, children: [
          Container(
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      child: IconButton(
                        icon: const Icon(
                          Icons.menu,
                          color: Colors.black,
                          size: 30,
                        ),
                        onPressed: () =>
                            _scaffoldkey.currentState?.openDrawer(),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 10),
                          child: const Icon(
                            Icons.notifications_none,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 15),
                          child: const Icon(
                            Icons.shopping_cart_outlined,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15),
                  child: Divider(
                    thickness: 1,
                    height: 5,
                  ),
                ),
                Container(child: _widgetoptions[_selectedIndex]),
              ],
            ),
          ),
        ]),
        bottomNavigationBar: BottomAppBar(
            shape: const CircularNotchedRectangle(),
            notchMargin: 10,
            clipBehavior: Clip.antiAlias,
            child: SizedBox(
                height: 60.0,
                child: BottomNavigationBar(
                  type: BottomNavigationBarType.fixed,
                  onTap: _onItemTapped,
                  currentIndex: _selectedIndex,
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  selectedItemColor: Colors.black,
                  unselectedItemColor: Colors.grey,
                  items: const [
                    BottomNavigationBarItem(
                      tooltip: 'home',
                      icon: Padding(
                        padding: EdgeInsets.only(right: 100),
                        child: Icon(Icons.home, size: 28),
                      ),
                      label: ' ',
                    ),
                    BottomNavigationBarItem(
                      tooltip: 'Profile',
                      icon: Padding(
                        padding: EdgeInsets.only(left: 100),
                        child: Icon(
                          Icons.person,
                          size: 29,
                        ),
                      ),
                      label: ' ',
                    ),
                  ],
                ))),
        floatingActionButton: FloatingActionButton(
          disabledElevation: 0,
          backgroundColor: Colors.black,
          onPressed: () => setState(() {}),
          tooltip: 'Camera',
          elevation: 0,
          child: const Icon(Icons.camera_alt),
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.centerDocked);
  }
}
