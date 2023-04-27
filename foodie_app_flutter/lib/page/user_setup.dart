import 'package:flutter/material.dart';
// import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:package_for_food_app/package_for_food_app.dart';

class UserSetupPage extends StatelessWidget {
  const UserSetupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
        appBar: PlatformAppBar(
          title: Text('User Setup'),
        ),
        body: Column(
          children: [
            const Center(
              child: Text('User Setup Page'),
            ),
            CustomTextFormFieldWidget(),
          ],
        ));
  }
}
