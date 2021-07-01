// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';

// const AndroidNotificationChannel channel = AndroidNotificationChannel(
//     'alert_id', 'alert_name', 'alert_description',
//     importance: Importance.high, playSound: true);

// final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
//     FlutterLocalNotificationsPlugin();

// Future<void> _firebaseMSGBackgroundHandler(RemoteMessage message) async {
//   await Firebase.initializeApp();

//   print('show msg just show up :' '${message.messageId}');
// }

// Future<void> classFirstRUn() async {
//   await Firebase.initializeApp();
//     FirebaseMessaging.onBackgroundMessage(_firebaseMSGBackgroundHandler);

//   await Firebase.initializeApp();
//  String? token = await FirebaseMessaging.instance.getToken();
//  print("============================" + token.toString());
//   await flutterLocalNotificationsPlugin
//       .resolvePlatformSpecificImplementation<
//           AndroidFlutterLocalNotificationsPlugin>()
//       ?.createNotificationChannel(channel);
//   await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
//       alert: true, sound: true, badge: true);
// }
// Future<void> initReal() async {
//      FirebaseMessaging.onMessage.listen((RemoteMessage message) {
//       RemoteNotification? notification = message.notification;
//       AndroidNotification? android = message.notification?.android;
//       if (notification != null && android != null) {
//         flutterLocalNotificationsPlugin.show(
//           notification.hashCode,
//           notification.title,
//           notification.body, 
          
//           NotificationDetails(
//             android: AndroidNotificationDetails(
//               channel.id,
//               channel.name,
//               channel.description,
              
//               // color: Colors.blue,
//               playSound: true,
//               icon: '@mipmap/ic_launcher',
//               priority: Priority.high, importance: Importance.high
//             ),
//           ),
//         );
//       }
//     });
// }
