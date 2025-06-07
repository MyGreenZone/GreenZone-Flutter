import 'package:flutter/material.dart';
import 'package:greenzone_customer/components/texts/normal_text.dart';
import 'package:greenzone_customer/components/texts/title_text.dart';
import 'package:greenzone_customer/constants/gz_color.dart';
import 'package:logger/logger.dart';
class LoginScreen extends StatefulWidget {
  // constructor
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final TextEditingController _phoneNumberController = TextEditingController();

  void _handleLogin() {
    final phoneNumber = _phoneNumberController.text;

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/logo_app.png'),
              const SizedBox(height: 24.0),
              const TitleText(text: 'Chào mừng bạn đến với'),
              const SizedBox(height: 24.0),
              const TitleText(
                text: 'GREEN ZONE',
                textStyle: TextStyle(
                  fontSize: 24.0,
                  color: GZColor.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 24.0),
              TextField(
                controller: _phoneNumberController,
                decoration: const InputDecoration(
                  labelText: 'Số điện thoại',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  ),
                ),
              ),
              const SizedBox(height: 24.0),


              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _handleLogin,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: GZColor.primary,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)
                    )
                  ),

                  child: const NormalText(
                    text: 'Đăng nhập',
                    fontWeight: FontWeight.bold,
                    color: GZColor.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
