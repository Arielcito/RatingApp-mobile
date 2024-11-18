// login_screen.dart
import 'package:flutter/material.dart';
import 'package:ratingapp_mobile/services/auth_service.dart';
import 'package:ratingapp_mobile/theme/custom_colors.dart';
import 'package:ratingapp_mobile/ui/screens/login/widgets/bottom_stack.dart';
import 'package:ratingapp_mobile/ui/screens/login/widgets/top_stack.dart';
import 'package:ratingapp_mobile/ui/widgets/app_bars/simple_app_bar.dart';
import 'package:ratingapp_mobile/ui/screens/login/widgets/content_section.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _authService = AuthService();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isLoading = false;
  String? _errorMessage;

  Future<void> _handleLogin() async {
    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    try {
      final response = await _authService.login(
        _emailController.text,
        _passwordController.text,
      );

      if (response.success) {
        if (mounted) {
          Navigator.pushReplacementNamed(context, '/home');
        }
      } else {
        setState(() {
          _errorMessage = response.error ?? 'Error al iniciar sesión';
        });
      }
    } catch (e) {
      setState(() {
        _errorMessage = 'Error de conexión. Intente nuevamente.';
      });
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final double paddingHorizontal = size.width * 0.06;
    final double separatorVertical = size.height * 0.03;
    final double titleFontSize = size.width * 0.06;
    final double subtitleFontSize = size.width * 0.04;

    return Scaffold(
      appBar: const SimpleAppBar(),
      backgroundColor: CustomColors.blackBg,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child: Stack(
                  children: [
                    const TopStack(),
                    const BottomStack(),
                    ContentSection(
                      paddingHorizontal: paddingHorizontal,
                      separatorVertical: separatorVertical,
                      titleFontSize: titleFontSize,
                      subtitleFontSize: subtitleFontSize,
                      emailController: _emailController,
                      passwordController: _passwordController,
                      isLoading: _isLoading,
                      errorMessage: _errorMessage,
                      onLogin: _handleLogin,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}