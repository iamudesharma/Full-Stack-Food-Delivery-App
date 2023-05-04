import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
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
                BottomNavigationBarItem(
                  icon: Icon(PlatformIcons(context).home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(PlatformIcons(context).favoriteOutline),
                  label: 'fav',
                ),
                const BottomNavigationBarItem(
                  icon: Icon(Icons.restore_rounded),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(PlatformIcons(context).search),
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
            SliverPadding(
              padding: const EdgeInsets.all(15),
              sliver: SliverToBoxAdapter(
                child: DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      PlatformText("Delicious").animate().slideX(),
                      PlatformText("Food for you").animate().slideX(),
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                decoration: BoxDecoration(
                  backgroundBlendMode: BlendMode.saturation,
                  border: Border.all(
                    color: Colors.grey.withOpacity(0.5),
                  ),
                  borderRadius: BorderRadius.circular(30),
                  color: const Color(0xffEFEEEE),
                ),
                height: 50,
                // width: 200,
                margin: EdgeInsets.symmetric(horizontal: 25),
                child: Row(mainAxisSize: MainAxisSize.min, children: [
                  const SizedBox(width: 10),
                  Icon(PlatformIcons(context).search),
                  const SizedBox(width: 10),
                  PlatformText("Search"),
                ]),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
