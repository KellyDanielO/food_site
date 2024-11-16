import 'dart:math';

class AppHelpers {
  static String randomIdGen() {
    const String chars =
        'abscdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    final random = Random();
    return List.generate(10, (_) => chars[random.nextInt(chars.length)]).join();
  }
}
