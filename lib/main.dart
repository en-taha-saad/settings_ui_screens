import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:icofont_flutter/icofont_flutter.dart';

void main() {
  runApp(const MaterialAppWidget());
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.light,
      statusBarColor: Colors.transparent,
    ),
  );
}

class MaterialAppWidget extends StatelessWidget {
  const MaterialAppWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(
          Icons.keyboard_backspace,
          color: Colors.black,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Center(
            child: Icon(
              Icons.settings_applications,
              size: 170,
              color: Colors.black,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: const Text(
              'Settings',
              style: TextStyle(
                fontSize: 40,
                color: Colors.black,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          const DividerWidget(),
          ListTile(
            leading: Image.asset(
              'assets/download.jpeg',
              height: 80,
              width: 80,
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
            ),
            title: const Text(
              'Josie Packard',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w900,
              ),
            ),
            subtitle: const Text(
              'Personal information',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const DividerWidget(),
          const CardWidget(
            icon: Icons.credit_card,
            text: 'My cards',
          ),
          const CardWidget(
            icon: Icons.notifications,
            text: 'Notifications',
          ),
          const CardWidget(
            icon: Icons.security,
            text: 'Security',
          ),
          const DividerWidget(),
          const CardWidget(
            icon: Icons.language,
            text: 'Language',
          ),
          const CardWidget(
            icon: Icons.text_fields,
            text: 'Text Size',
          ),
        ],
      ),
    );
  }
}

class DividerWidget extends StatelessWidget {
  const DividerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: const Divider(color: Colors.black, height: 2),
    );
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget({this.text, this.icon, Key? key}) : super(key: key);
  final String? text;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 17, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Icon(
                icon!,
                size: 40,
                color: Colors.black,
              ),
              const SizedBox(width: 10),
              Text(
                text!,
                style: const TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                ),
              )
            ],
          ),
          const Icon(
            Icons.arrow_forward_ios,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: const Icon(
          Icons.keyboard_backspace,
          color: Colors.white,
        ),
      ),
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Center(
            child: Icon(
              IcoFontIcons.recyclingMan,
              size: 250,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 50),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 45),
            child: const Text(
              'Delete personal information',
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 60),
            child: const Text(
              'Are you sure you want to delete all personal data?',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                ),
                child: const Text(
                  'Cancel',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                onPressed: () {},
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                  padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                ),
                child: const Text(
                  'Delete',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
