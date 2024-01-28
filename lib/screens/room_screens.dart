import 'dart:math';

import 'package:clubhouse/widgets/room_user_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/date.dart';
import '../models/room.dart';
import '../widgetS/users_profile_images.dart';

class Roomscreen extends StatelessWidget {
  final Room room;

  const Roomscreen({
    super.key,
    required this.room,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 130,
        leading: TextButton.icon(
          onPressed: () => Navigator.of(context).pop,
          icon: const Icon(CupertinoIcons.chevron_down),
          label: const Text('Halway'),
          style: TextButton.styleFrom(foregroundColor: Colors.black),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              CupertinoIcons.doc,
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
      body: Container(
        padding: const EdgeInsets.all(20),
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${room.club}🏠'.toUpperCase(),
                        style: Theme.of(context).textTheme.overline!.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 1.0,
                            ),
                      ),
                      const Icon(CupertinoIcons.ellipsis),
                    ],
                  ),
                  Text(
                    room.name,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.0,
                        ),
                  ),
                ],
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(14.0),
              sliver: SliverGrid.count(
                  crossAxisCount: 3,
                  mainAxisSpacing: 20,
                  children: room.speakers
                      .map((e) => RoomUserProfile(
                            image: e.image,
                            name: e.firstName,
                            size: 66,
                            isNew: Random().nextBool(),
                            isMuted: Random().nextBool(),
                          ))
                      .toList()),
            ),
            SliverToBoxAdapter(
              child: Text(
                'followed by speakers',
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      fontSize: 14,
                      color: Colors.grey[600],
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(14.0),
              sliver: SliverGrid.count(
                  crossAxisCount: 4,
                  childAspectRatio: 0.7,
                  mainAxisSpacing: 20,
                  children: room.followedBySpeakers
                      .map((e) => RoomUserProfile(
                            image: e.image,
                            name: e.firstName,
                            size: 66,
                            isNew: Random().nextBool(),
                          ))
                      .toList()),
            ),
            SliverToBoxAdapter(
              child: Text(
                'others in the room',
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      fontSize: 14,
                      color: Colors.grey[600],
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(14.0),
              sliver: SliverGrid.count(
                  crossAxisCount: 4,
                  childAspectRatio: 0.7,
                  mainAxisSpacing: 20,
                  children: room.others
                      .map((e) => RoomUserProfile(
                            image: e.image,
                            name: e.firstName,
                            size: 66,
                            isNew: Random().nextBool(),
                          ))
                      .toList()),
            ),
            const SliverPadding(padding: EdgeInsets.only(bottom: 50))
          ],
        ),
      ),
      bottomSheet: Container(
        padding:const EdgeInsets.symmetric(horizontal: 20,vertical: 12),
        height: 100,

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [TextButton(
              onPressed: () {},
             child:Text(
                '✌ leave quietly',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.red,
                  fontWeight: FontWeight.w500,
                ),
              ),
            style: TextButton.styleFrom(
              padding: const EdgeInsets.all(12),
              backgroundColor: Colors.grey[400],
                shape:const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
            ),
          ),
            Row(
              children: [
                GestureDetector(
                  onTap: (){},
                  child: Container(
                  decoration:const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                     ),
                  padding:const EdgeInsets.all(6),
                  child:const Icon(
                    CupertinoIcons.add,
                    size: 20,
                  ),
              ),
                ),
                const SizedBox(
                  width: 16,
                ),
                GestureDetector(
                  onTap: (){},
                  child: Container(
                    decoration:const BoxDecoration(
                      shape: BoxShape.circle,
                      color:Colors.grey,
                    ),
                    padding:const EdgeInsets.all(6),
                    child:const Icon(
                      CupertinoIcons.hand_raised,
                      size: 20,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
