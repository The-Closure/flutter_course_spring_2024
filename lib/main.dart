import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:theme_darwer_easy_localization/app_strings.dart';

import 'config/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
        supportedLocales: const [
          Locale('en'),
          Locale('ar'),
        ],
        path:
            'assets/translation', // <-- change the path of the translation files
        fallbackLocale: const Locale('en'),
        child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: darkTheme,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      // endDrawer: const Drawer(),
      drawer: Drawer(
        backgroundColor: const Color(0xff0f111a),
        child: SizedBox(
          child: ListView(
            children: [
              const DrawerHeader(
                  decoration: BoxDecoration(color: Color(0xff090b10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        child: Text("A"),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Ahmad@gmail.com",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )),
              ListTile(
                title: Text(
                  AppStrings().MY_PROFILE,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
                leading: const Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ListTile(
                title: Text(
                  AppStrings().FAVORITE,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
                leading: const Icon(
                  Icons.favorite,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ListTile(
                title: Text(
                  AppStrings().SETTINGS,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
                leading: const Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ListTile(
                title: Text(
                  AppStrings().LOGOUT,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
                leading: const Icon(
                  Icons.logout,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Text(AppStrings().HELLO_WORLD),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppStrings().WELOCME_TO_HADARA_CENTER,
              style: Theme.of(context).textTheme.displayLarge,
            ),
            const SizedBox(height: 10),
            Text(
              AppStrings().WELOCME_TO_HADARA_CENTER,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {},
              child: Text(AppStrings().SIGN_IN),
            ),
            const SizedBox(height: 25),
            ElevatedButton(
                onPressed: () async {
                  if (context.locale.languageCode == 'ar') {
                    await context.setLocale(const Locale('en'));
                  } else {
                    await context.setLocale(const Locale('ar'));
                  }
                  setState(() {});
                },
                child: Text(AppStrings().CHANGE_LANGUAGE))
          ],
        ),
      ),
    );
  }
}
