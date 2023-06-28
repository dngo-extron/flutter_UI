import 'package:flutter/material.dart';
import 'package:flutter_application_1/info.dart';
import 'package:flutter_application_1/vltp_page.dart';

class VTLPListPage extends StatelessWidget {
  const VTLPListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VTLP Lists'),
      ),
      body: Center(
          child: ListView.builder(
        itemCount: InfoState.vltpList.length,
        itemBuilder: (context, index) {
          String key = InfoState.vltpList.keys.elementAt(index);
          return ListTile(
            title: Text(key),
            trailing: IconButton(
                icon: const Icon(Icons.play_arrow),
                onPressed: () {
                  InfoState.selectedChoice = InfoState.vltpList[key];
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const VTLPPage()),
                  );
                }),
          );
        },
      )),
    );
  }
}
