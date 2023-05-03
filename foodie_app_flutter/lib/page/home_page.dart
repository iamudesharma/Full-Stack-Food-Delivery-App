import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:foodie_app_client/foodie_app_client.dart';
// import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:foodie_app_flutter/main.dart';
import 'package:foodie_app_flutter/page/sign_in_page.dart';
import 'package:foodie_app_flutter/page/user_setup.dart';

import 'package:package_for_food_app/package_for_food_app.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

ValueNotifier<User?> user = ValueNotifier(null);

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    if (mounted) {
      Future.microtask(() async {
        if (!sessionManager.isSignedIn) {
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => const SignInPage()),
              (route) => false);
        } else {
          if (!await client.users.checkUserExists()) {
            // ignore: use_build_context_synchronously
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                  builder: (context) => const UserSetupPage(),
                ),
                (route) => false);
          }
        }
      });
    }

    client.users.getUser().then((value) {
      if (value != null) {
        user = ValueNotifier(value);
        setState(() {});
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<User?>(
      valueListenable: user,
      builder: (context, value, child) => PlatformScaffold(
        bottomNavBar: PlatformNavBar(
          material: (context, platform) => MaterialNavBarData(
              type: BottomNavigationBarType.fixed,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              // selectedItemColor: Colors/,
              unselectedItemColor: Colors.grey,
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              currentIndex: 0,
              items: [
                const BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                const BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_border),
                  label: 'fav',
                ),
                const BottomNavigationBarItem(
                  icon: Icon(Icons.restore_rounded),
                  label: 'Home',
                ),
                const BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: 'Search',
                ),
              ]),
          backgroundColor: Colors.transparent,
        ),
        body: SafeArea(
          child: CustomScrollView(slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 10,
                ),
                child: Row(children: const [
                  Icon(Icons.menu_sharp),
                  Spacer(),
                  Icon(Icons.card_travel)
                ]),
              ),
            ),


            SliverToBoxAdapter(child: PlatformText("De"),)
          ]),
        ),
      ),
    );
  }
}
