import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class UserSetupPage extends StatelessWidget {
  const UserSetupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
        appBar: PlatformAppBar(
          title: Text('User Setup'),
        ),
        body: const Center(
          child: Text('User Setup Page'),
        )
    );
  }
}


