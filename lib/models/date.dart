

import 'package:clubhouse/models/room.dart';
import 'package:clubhouse/models/users.dart';

User currentUSer =User(
  firstName: "sondos",
  lastName:  "mahmoud",
  image : 'assets/profile.jpeg',
);

 List<User> allUser=[
 User(
firstName: "marwa",
lastName:  "fathy",
   image :'image2/marwa.jpeg',
 ),
 User(
firstName: "asmaa",
lastName:  "mahmoud",
   image :'image/asmaa.jpeg',
),
 User(
firstName: "hala",
lastName:  "ezat",
   image :'image3/hala.jpeg',

),
 User(
firstName: "nada",
lastName:  "mohamed",
   image :'image4/nada.jpeg',
),
];
final List<Room> listRoom =[
  Room(
      club: "Flutter time" ,
      name: "special time with flutter& dart",
      speakers: (List<User>.from(allUser)..shuffle()).getRange(0, 2).toList(), //يعني بنظاااام
      followedBySpeakers:(List<User>.from(allUser)..shuffle()) ,
      others:(List<User>.from(allUser)..shuffle()),

  ),
  Room(
    club: "any thing" ,
    name: "special time with flutter& dart",
    speakers: (List<User>.from(allUser)..shuffle()).getRange(0, 2).toList(), //يعني بنظاااام
    followedBySpeakers:(List<User>.from(allUser)..shuffle()) ,
    others:(List<User>.from(allUser)..shuffle()),
  ),
  Room(
    club: "free palatine" ,
    name: "special time with flutter& dart",
    speakers: (List<User>.from(allUser)..shuffle()).getRange(0, 2).toList(), //يعني بنظاااام
    followedBySpeakers:(List<User>.from(allUser)..shuffle()) ,
    others:(List<User>.from(allUser)..shuffle()),
  ),
  Room(
    club: "I love gaza" ,
    name: "special time with flutter& dart",
    speakers: (List<User>.from(allUser)..shuffle()).getRange(0, 2).toList(), //يعني بنظاااام
    followedBySpeakers:(List<User>.from(allUser)..shuffle()) ,
    others:(List<User>.from(allUser)..shuffle()),
  ),

];

