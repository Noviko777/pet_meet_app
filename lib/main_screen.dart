import 'package:auto_size_text/auto_size_text.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_badged/flutter_badge.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var _selectedTab = _SelectedTab.home;

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 4.0, bottom: 0.0, right: 27.0),
                      child: FlutterBadge(
                        icon: Icon(
                          Icons.notifications_none,
                          color: Colors.grey,
                          size: 28,
                        ),
                        borderRadius: 20.0,
                        itemCount: 2,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 4.0, bottom: 0.0, right: 24.0),
                      child: CircularProfileAvatar(
                        '',
                        child: Image.asset("assets/profile.jpg"),
                        borderColor: Colors.white,
                        borderWidth: 2,
                        elevation: 6,
                        radius: 24,
                      ),
                    )
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 24.0, top: 16.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Find Your",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 28.0,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Lovely pet in anywhere",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 25.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 24.0),
                                  child: TextField(
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16.0),
                                    cursorColor: Color(0xFF64C7FA),
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.search,
                                        color: Colors.black,
                                      ),
                                      hintText: "Search",
                                      fillColor: Color(0xFFF9F9F9),
                                      filled: true,
                                      border: new OutlineInputBorder(
                                        borderSide: BorderSide(
                                          width: 0,
                                          style: BorderStyle.none,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          bottomLeft:
                                              const Radius.circular(35.0),
                                          topLeft: const Radius.circular(35.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 24.0, right: 24.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Pet category",
                                        style: TextStyle(
                                          color: Color(0xFF6D6D6D),
                                          fontSize: 19.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Icon(
                                        Icons.more_horiz,
                                        color: Color(0xFF6D6D6D),
                                        size: 28.0,
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 16.0, right: 24.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Expanded(
                                              flex: 2,
                                              child: PetCategory(
                                                  "Hamster",
                                                  "Total of 56",
                                                  "assets/hamster.png",
                                                  Color(0xFFFCEBD3))),
                                          SizedBox(
                                            width: 16.0,
                                          ),
                                          Expanded(
                                              flex: 2,
                                              child: PetCategory(
                                                  "Cats",
                                                  "Total of 210",
                                                  "assets/cat.png",
                                                  Color(0xFFD8F1FE)))
                                        ],
                                      ),
                                      SizedBox(
                                        height: 16.0,
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                              flex: 2,
                                              child: PetCategory(
                                                  "Bunnies",
                                                  "Total of 90",
                                                  "assets/rabbit.png",
                                                  Color(0xFFE5F2E7))),
                                          SizedBox(
                                            width: 16.0,
                                          ),
                                          Expanded(
                                              flex: 2,
                                              child: PetCategory(
                                                  "Dogs",
                                                  "Total of 340",
                                                  "assets/dog.png",
                                                  Color(0xFFFAE0D8)))
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 24.0, right: 24.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Newest pet",
                                        style: TextStyle(
                                          color: Color(0xFF6D6D6D),
                                          fontSize: 19.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Icon(
                                        Icons.more_horiz,
                                        color: Color(0xFF6D6D6D),
                                        size: 28.0,
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 16.0),
                                  child: Container(
                                    height: 300,
                                    child: ListView.builder(
                                        itemExtent: 200,
                                        scrollDirection: Axis.horizontal,
                                        itemCount: 5,
                                        itemBuilder: (context, index) {
                                          return Container(
                                              width: 200,
                                              height: 300,
                                              child: Card());
                                        }),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: kBottomNavigationBarHeight,
                )
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: kBottomNavigationBarHeight,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: SalomonBottomBar(
                  currentIndex: _SelectedTab.values.indexOf(_selectedTab),
                  onTap: _handleIndexChanged,
                  items: [
                    /// Home
                    SalomonBottomBarItem(
                      icon: Icon(Icons.home),
                      title: Text("Home"),
                      selectedColor: Color(0xFF64C7FA),
                    ),

                    /// Messages
                    SalomonBottomBarItem(
                      icon: Icon(Icons.message),
                      title: Text("Messages"),
                      selectedColor: Color(0xFF64C7FA),
                    ),

                    /// Likes
                    SalomonBottomBarItem(
                      icon: Icon(Icons.favorite_border),
                      title: Text("Likes"),
                      selectedColor: Color(0xFF64C7FA),
                    ),

                    /// Profile
                    SalomonBottomBarItem(
                      icon: Icon(Icons.person),
                      title: Text("Profile"),
                      selectedColor: Color(0xFF64C7FA),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

enum _SelectedTab { home, likes, search, profile }

class PetCategory extends StatelessWidget {
  PetCategory(this.name, this.total, this.imagePath, this.color);

  final String name;
  final String total;
  final String imagePath;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              flex: 5,
              child: CircularProfileAvatar(
                '',
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(imagePath),
                ),
                backgroundColor: color,
                borderColor: Colors.white,
                borderWidth: 0,
                elevation: 0,
                radius: 22,
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(),
            ),
            Expanded(
              flex: 10,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(
                    name ?? "Name",
                    maxLines: 1,
                    minFontSize: 10,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Color(0xFF6D6D6D),
                        fontWeight: FontWeight.w500,
                        fontSize: 16.0),
                  ),
                  SizedBox(
                    height: 2.0,
                  ),
                  AutoSizeText(
                    total ?? "Total",
                    maxLines: 1,
                    minFontSize: 10,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Color(0xFF6D6D6D),
                        fontWeight: FontWeight.w400,
                        fontSize: 13.0),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Color(0xFFF6F5F4),
          ),
          borderRadius: BorderRadius.all(Radius.circular(14.0))),
    );
  }
}
