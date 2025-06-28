import 'package:flutter/material.dart';
import 'routes/app_routes.dart';
import 'views/login_email_page.dart';
import 'views/login_phone_page.dart';
import 'views/register_page.dart';
import 'views/home.dart'; // màn hình chính sau khi đăng nhập
import 'config/theme.dart'; // nếu có custom theme riêng

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auth UI',
      debugShowCheckedModeBanner: false,
      theme: appTheme, // hoặc dùng ThemeData ở dưới nếu không cần file theme riêng
      initialRoute: AppRoutes.loginEmail,
      routes: {
        AppRoutes.loginEmail: (context) => const LoginWithEmailPage(),
        AppRoutes.loginPhone: (context) => const LoginWithPhonePage(),
        AppRoutes.register: (context) => const RegisterPage(),
        AppRoutes.home: (context) => const HomeMain(),
      },
    );
  }
}
