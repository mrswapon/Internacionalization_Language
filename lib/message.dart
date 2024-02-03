import 'package:get/get_navigation/src/root/internacionalization.dart';

class Message extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {'hello': 'Hello'},
        'bn_BD': {'hello': 'হ্যালো'},
        'fr_FR': {'hello': 'Bonjour'},
      };
}
