import 'package:clubhouse/screens/room_screens.dart';
import 'package:clubhouse/widgetS/users_profile_images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/room.dart';

class RoomCard extends StatelessWidget {
  final Room room;

  const RoomCard({super.key, required this.room});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
          fullscreenDialog: true,
          builder: (_) =>Roomscreen(room: room),
      )),
      child: Padding(
        padding: const EdgeInsets.only(top: 6.0),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${room.club}🏠",
                  style: Theme.of(context).textTheme.overline!.copyWith(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1.0,
                      ),
                ),
                Text(room.name,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        )),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 100,
                        child: Stack(
                          //نسيت ليه
                          children: [
                            Positioned(
                              //بعد الصوره الثانيه عن الصوره الاولى
                              left: 24.0,
                              top: 24.0,
                              child: UserProfileImage(
                                image: room.speakers[0]
                                    .image, //انا هنا بستدغي بروفيل الاسبيكر الاول
                                size: 48.0,
                              ),
                            ),
                            UserProfileImage(
                                image: room.speakers[1].image, size: 48.0),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ...room.speakers.map((e) => Text(
                                  '${e.firstName} ${e.lastName} 💭',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                        fontSize: 16.0,
                                      ),
                                )),
                            const SizedBox(
                              height: 8,
                            ),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                      text:
                                          '${room.speakers.length + room.followedBySpeakers.length + room.others.length}  '),
                                  const WidgetSpan(
                                      child: Icon(
                                    CupertinoIcons.person_2_fill,
                                    size: 18,
                                    color: Colors.grey,
                                  )),
                                  TextSpan(
                                      text:
                                          '  /  ${room.followedBySpeakers.length}  '),
                                  const WidgetSpan(
                                      child: Icon(
                                    CupertinoIcons.chat_bubble_fill,
                                    size: 18,
                                    color: Colors.grey,
                                  )),
                                ],
                              ),
                              style: TextStyle(color: Colors.grey[600]),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
