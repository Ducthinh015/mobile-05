import 'package:flutter/material.dart';
import 'package:frontend/widgets/custom_textfield.dart';
import 'package:frontend/widgets/custom_button.dart';
import 'package:frontend/routes/app_routes.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
  final TextEditingController birthdayController = TextEditingController();

  void handleRegister() {
    // TODO: implement register logic
  }

  void goToLoginPage() {
    Navigator.pushNamed(context, AppRoutes.loginEmail);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          SizedBox.expand(
            child: Image.asset(
              'assets/images/login_bg.jpg',
              fit: BoxFit.cover,
            ),
          ),

          // Overlay with semi-transparent form
          Center(
            child: Container(
              width: 400,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.85),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.brown,
                    ),
                  ),
                  const SizedBox(height: 20),

                  CustomTextField(labelText: 'Username', controller: nameController),
                  const SizedBox(height: 12),

                  CustomTextField(labelText: 'Gmail', controller: emailController),
                  const SizedBox(height: 12),

                  CustomTextField(
                    labelText: 'Phone Number',
                    controller: phoneController,
                    keyboardType: TextInputType.phone,
                  ),
                  const SizedBox(height: 12),

                  CustomTextField(
                    labelText: 'Password',
                    controller: passwordController,
                    obscureText: true,
                  ),
                  const SizedBox(height: 12),

                  CustomTextField(
                    labelText: 'Enter Password Again',
                    controller: confirmPasswordController,
                    obscureText: true,
                  ),
                  const SizedBox(height: 12),

                  CustomTextField(
                    labelText: 'Your Birthday',
                    controller: birthdayController,
                    keyboardType: TextInputType.datetime,
                    suffixIcon: const Icon(Icons.calendar_today, size: 20),
                  ),
                  const SizedBox(height: 20),

                  CustomButton(text: 'Register', onPressed: handleRegister),
                  const SizedBox(height: 12),

                  TextButton(
                    onPressed: goToLoginPage,
                    child: const Text(
                      'Login',
                      style: TextStyle(color: Colors.grey, fontSize: 16,),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}