import 'package:change_language/my_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'message.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyController myController = Get.put(MyController());

  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: Message(),
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),
      title: 'Internationalization',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Internationalization',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('hello'.tr,
                    style: const TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    )),
                const SizedBox(height: 16),
                ElevatedButton(
                    onPressed: () {
                      myController.changeLanguage('bn', 'BD');
                    },
                    child: const Text('Bangla')),
                const SizedBox(height: 16),
                ElevatedButton(
                    onPressed: () {
                      myController.changeLanguage('en', 'US');
                    },
                    child: const Text('English')),
                const SizedBox(height: 16),
                ElevatedButton(
                    onPressed: () {
                      myController.changeLanguage('fr', 'FR');
                    },
                    child: const Text('French')),
              ]),
        ),
      ),
    );
  }
}
