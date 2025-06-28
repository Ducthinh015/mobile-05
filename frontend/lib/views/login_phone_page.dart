import 'package:flutter/material.dart';
import 'package:frontend/widgets/background_img.dart';
import 'package:frontend/widgets/custom_button.dart';
import 'package:frontend/widgets/custom_textfield.dart';
import 'package:frontend/routes/app_routes.dart';

class LoginWithPhonePage extends StatefulWidget {
  const LoginWithPhonePage({super.key});

  @override
  State<LoginWithPhonePage> createState() => _LoginWithPhonePageState();
}

class _LoginWithPhonePageState extends State<LoginWithPhonePage> {
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void handleLogin() {
    final phone = phoneController.text.trim();
    final password = passwordController.text.trim();
    print('Phone: $phone, Password: $password');
  }

  void goToRegisterPage() {
    Navigator.pushNamed(context, AppRoutes.register);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F4),
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          padding: const EdgeInsets.all(20),
          width: 400,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const BackgroundImage(imagePath: 'assets/images/login_bg.jpg'),
              const SizedBox(height: 24),
              CustomTextField(
                labelText: 'Phone number',
                controller: phoneController,
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(height: 16),
              CustomTextField(
                labelText: 'Password',
                controller: passwordController,
                obscureText: true,
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: goToRegisterPage,
                    child: const Text(
                      'Register',
                      style: TextStyle(
                        color: Colors.grey,
                        decoration: TextDecoration.none,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  CustomButton(text: 'Login', onPressed: handleLogin),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
