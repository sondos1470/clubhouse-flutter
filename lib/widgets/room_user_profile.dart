import 'package:clubhouse/widgetS/users_profile_images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/date.dart';


class RoomUserProfile extends StatelessWidget {
  final String image;
  final String name;
  final double size;
  final bool isNew;
  final bool isMuted;

  const RoomUserProfile(
      {super.key,
      required this.image,
      required this.name,
      this.size=42,
      this.isNew=false,
       this.isMuted=false,
      });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: UserProfileImage(image:RoomUserProfile(image: image,name: name,).image, size: size),
            ),
            if (isNew)
              Positioned(
                left: 0,
                bottom: 0,
                child: Container(
                  padding: const EdgeInsets.all(6.0),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 2),
                          blurRadius: 4,
                        ),
                      ]),
                  child: const Text(
                    '🎉',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            if (isMuted)
              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                    padding: const EdgeInsets.all(6.0),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0, 2),
                            blurRadius: 4,
                          ),
                        ]),
                    child: const Icon(
                      CupertinoIcons.mic_slash_fill,
                    )),
              ),
          ],
        ),
        Flexible(
          child: Text(
            name,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
