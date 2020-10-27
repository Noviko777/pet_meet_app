import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_badged/flutter_badge.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(top: 4.0, bottom: 0.0, right: 27.0),
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
                  padding:
                      const EdgeInsets.only(top: 4.0, bottom: 0.0, right: 24.0),
                  child: CircularProfileAvatar(
                    '',
                    child: FlutterLogo(),
                    borderColor: Colors.white,
                    borderWidth: 5,
                    elevation: 2,
                    radius: 24,
                  ),
                )
              ],
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 24.0, top: 16.0),
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
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
