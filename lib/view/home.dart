import 'dart:developer';

import 'package:flutter/material.dart';

class HalamanAwal extends StatefulWidget {
  const HalamanAwal({Key? key}) : super(key: key);

  @override
  State<HalamanAwal> createState() => _HalamanAwalState();
}

class _HalamanAwalState extends State<HalamanAwal> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 90),
              child: Text(
                counter.toString(),
                style: const TextStyle(color: Colors.white, fontSize: 60),
              ),
            ),
          ),
          FloatingActionButton(
            onPressed: () {
              _showAddDialog(context);
            },
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }

  void _showAddDialog(BuildContext context) {
    TextEditingController textEditingController = TextEditingController();
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Anda Minum berapa ml?"),
          content: TextField(
            controller: textEditingController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(hintText: 'Masukan ml'),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Batal'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Tambah'),
              onPressed: () {
                setState(() {
                  counter += int.parse(textEditingController.text);
                });
                Navigator.of(context).pop();
              },
            )
          ],
        );
      },
    );
  }
}
