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
  final logger = Logger();
  final TextEditingController _phoneNumberController = TextEditingController();
  String? _phoneError;
  final RegExp phoneRegex = RegExp(r'^0\d{9}$');

  void _handleLogin() {
    final phoneNumber = _phoneNumberController.text;
    final phoneRegex = RegExp(
      r'^0\d{9}$',
    ); // ví dụ số VN: 10 số và bắt đầu bằng 0

    setState(() {
      if (!phoneRegex.hasMatch(phoneNumber)) {
        _phoneError = 'Số điện thoại không hợp lệ';
      } else {
        _phoneError = null;
        logger.d('Phone number: $phoneNumber');
        // Thực hiện login
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
          ),
          child: IntrinsicHeight(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const NormalText(text: 'Số điện thoại'),
                      const SizedBox(height: 8),
                      TextField(
                        controller: _phoneNumberController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: GZColor.borderInput),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: GZColor.primary),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          errorText: _phoneError,
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 14,
                          ),
                        ),
                      ),
                    ],
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
                          borderRadius: BorderRadius.circular(12.0),
                        ),
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
        ),
      ),
    );
  }
}
