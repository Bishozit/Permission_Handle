import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class permission_Handle extends StatelessWidget {
  const permission_Handle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          checkPermission(Permission.location, context);
        },
        child: const Text("Check Permission", style: TextStyle(color: Colors.white, fontSize: 25 ),),
      ),
    );
  }

  Future<void> checkPermission(
      Permission permission, BuildContext context) async {
    final status = await permission.request();
    if (status.isGranted) {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("Permission is Granted")));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Permission is not Granted")));
    }
  }
}
