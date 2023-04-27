import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:foodie_app_client/foodie_app_client.dart';
import 'package:foodie_app_flutter/main.dart';
// import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:package_for_food_app/package_for_food_app.dart';

import 'home_page.dart';

class UserSetupPage extends StatefulWidget {
  const UserSetupPage({super.key});

  @override
  State<UserSetupPage> createState() => _UserSetupPageState();
}

class _UserSetupPageState extends State<UserSetupPage> {
  late TextEditingController _nameController;
  late TextEditingController _emailController;
  late TextEditingController _phoneController;
  // late TextEditingController _addressController;

  @override
  void initState() {
    _nameController = TextEditingController();

    _emailController = TextEditingController();

    _phoneController = TextEditingController();
    super.initState();
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
        appBar: PlatformAppBar(
          title: const Text('User Setup'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                CustomTextFormFieldWidget(
                  enabled: true,
                  controller: _nameController,
                  hintText: "Enter your name",
                  labelText: "Name",
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextFormFieldWidget(
                  controller: _phoneController,
                  hintText: "Enter your Phone No",
                  labelText: "Phone No",
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextFormFieldWidget(
                  controller: _emailController,
                  hintText: "Enter your Email",
                  labelText: "Email",
                ),
                const SizedBox(
                  height: 50,
                ),
                PlatformElevatedButton(
                  onPressed: () async {
                    await EasyLoading.show();

                    await client.users.createUser(
                      User(
                        name: _nameController.text,
                        address: [],
                        userInfo: sessionManager.signedInUser!,
                        phone: int.parse(_phoneController.text),
                      ),
                    );

                    await EasyLoading.dismiss();

                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                            builder: (context) => const HomePage()),
                        (route) => false);
                  },
                  cupertino: (context, platform) =>
                      CupertinoElevatedButtonData(),
                  material: (context, platform) => MaterialElevatedButtonData(
                    child: const Text('Save'),
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size(MediaQuery.of(context).size.width, 35)),
                  ),
                  child: const Text('Save'),
                )
              ],
            ),
          ),
        ));
  }
}
