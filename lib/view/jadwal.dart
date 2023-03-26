import 'package:flutter/material.dart';
import 'dart:async';

import 'package:pengingat_minum/notif/notif.dart';

class Jadwal extends StatefulWidget {
  const Jadwal({Key? key}) : super(key: key);

  @override
  State<Jadwal> createState() => _JadwalState();
}

class _JadwalState extends State<Jadwal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text(
          'Pengingat Minum 2 jam sekali',
          textAlign: TextAlign.center,
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            NotificationService().showNotification();

            const twoHours = Duration(hours: 2);
            // ignore: unnecessary_new
            new Timer.periodic(twoHours,
                (Timer t) => NotificationService().showNotification());
          },
          child: const Text('Mulai Pengingat'),
        ),
      ),
    );
  }
}
