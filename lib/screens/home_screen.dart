import 'package:clubhouse/models/date.dart';
import 'package:clubhouse/widgets/room_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgetS/users_profile_images.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.black,
              size: 20,
            ),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: const Icon(
                CupertinoIcons.envelope_open,
                color: Colors.black,
                size: 30,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                CupertinoIcons.calendar,
                color: Colors.black,
                size: 30,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                CupertinoIcons.bell,
                color: Colors.black,
                size: 30,
              ),
              onPressed: () {},
            ),
            GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: UserProfileImage(
                  size: 30.0,
                  image: currentUSer.image,
                ),
              ),
            ),
          ],
        ),
        body: Stack(
          alignment: Alignment.center,
          children: [
            ListView(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 100),
              children: [...listRoom.map((e) => RoomCard(room: e))],
            ),
            Positioned(
              right: 0,
              left: 0,
              bottom: 0,
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Theme.of(context).scaffoldBackgroundColor.withOpacity(0.1),
                    Theme.of(context).scaffoldBackgroundColor,
                  ],
                )),
              ),
            ),
            Positioned(
              bottom: 50,
              child: ElevatedButton.icon(onPressed: () {},
                  icon:const Icon(
                    CupertinoIcons.add,
                    color: Colors.white,
                    size: 21,
                  ),
                  label:const Text(
                    'start room',
                   style: TextStyle(
                     color: Colors.white,
                     fontSize: 21,
                     fontWeight: FontWeight.w500),
                  ),
                    style:ElevatedButton.styleFrom(
                      padding:const EdgeInsets.all(12),
                      primary: Theme.of(context).hintColor,
                      shape:const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))
                      )
                    )
              ),
            ),
          ],
        ));
  }
}
