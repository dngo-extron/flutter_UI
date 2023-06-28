import 'package:flutter/material.dart';
import 'package:flutter_application_1/room_info.dart';
import 'package:flutter_application_1/vltp_list_page.dart';

import 'info.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextFormField(
                controller: InfoState.roomNameController,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter Room Name',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextFormField(
                controller: InfoState.tokenController,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter room Token',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextFormField(
                controller: InfoState.ecwURLController,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter room URL',
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  RoomInfo newRoom = RoomInfo(
                      InfoState.roomNameController.text,
                      InfoState.tokenController.text,
                      InfoState.ecwURLController.text);

                  InfoState.vltpList[newRoom.name] = newRoom;

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const VTLPListPage()),
                  );
                },
                child: const Text("Login"))
          ],
        ),
      ),
    );
  }
}
