import 'package:appdev_proj/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BeneilLoginForm extends StatefulWidget {
  const BeneilLoginForm({super.key});

  @override
  _BeneilLoginFormState createState() => _BeneilLoginFormState();
}

class _BeneilLoginFormState extends State<BeneilLoginForm> {
  final _formKey = GlobalKey<FormState>();
  bool _rememberMe = false;
  String _email = '';
  String _password = '';

  final String _hardcodedEmail = 'bineil@example.com';
  final String _hardcodedPassword = 'password123';

  void _showLoginErrorDialog(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Login Error'),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _handleLogin(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      if (_email == _hardcodedEmail && _password == _hardcodedPassword) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const HomePage()));
      } else {
        _showLoginErrorDialog(context, 'Invalid email or password.');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return Scaffold(
      backgroundColor: colorScheme.primary,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 80),
                Text(
                  'BINEIL',
                  style: GoogleFonts.bodoniModa(
                    fontSize: 128,
                    fontWeight: FontWeight.w600,
                    letterSpacing: -20,
                    color: colorScheme.secondary,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: GoogleFonts.montserrat(
                        color: Colors.grey, fontSize: 14),
                    filled: true,
                    fillColor: colorScheme.secondary.withOpacity(0.1),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: colorScheme.secondary),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: colorScheme.secondary),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: colorScheme.secondary),
                    ),
                  ),
                  style: GoogleFonts.montserrat(color: colorScheme.secondary),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                        .hasMatch(value)) {
                      return 'Please enter a valid email address';
                    }
                    return null;
                  },
                  onSaved: (value) => _email = value!,
                ),
                const SizedBox(height: 16),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: GoogleFonts.montserrat(
                        color: Colors.grey, fontSize: 14),
                    filled: true,
                    fillColor: colorScheme.secondary.withOpacity(0.1),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: colorScheme.secondary),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: colorScheme.secondary),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: colorScheme.secondary),
                    ),
                    suffixIcon:
                        const Icon(Icons.visibility_off, color: Colors.grey),
                  ),
                  style: GoogleFonts.montserrat(color: colorScheme.secondary),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    if (value.length < 6) {
                      return 'Password must be at least 6 characters long';
                    }
                    return null;
                  },
                  onSaved: (value) => _password = value!,
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Checkbox(
                      value: _rememberMe,
                      onChanged: (value) {
                        setState(() {
                          _rememberMe = value!;
                        });
                      },
                      activeColor: colorScheme.secondary,
                      checkColor: colorScheme.primary,
                    ),
                    Expanded(
                      child: Text(
                        'Remember me',
                        style: GoogleFonts.montserrat(
                            color: Colors.grey, fontSize: 14),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0), // Rectangle shape
                      side: BorderSide(
                          color: colorScheme.secondary), // Border color
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 36.0, vertical: 8),
                    child: Text('SIGN IN',
                        style: GoogleFonts.montserrat(
                            color: colorScheme.primary, fontSize: 14)),
                  ),
                  onPressed: () => _handleLogin(context),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account yet? ",
                        style: GoogleFonts.montserrat(color: Colors.grey)),
                    TextButton(
                      child: Text('Sign Up Here',
                          style: GoogleFonts.montserrat(
                              color: colorScheme.secondary)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const BeneilSignUpForm()));
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BeneilSignUpForm extends StatefulWidget {
  const BeneilSignUpForm({super.key});

  @override
  _BeneilSignUpFormState createState() => _BeneilSignUpFormState();
}

class _BeneilSignUpFormState extends State<BeneilSignUpForm> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final _formKey = GlobalKey<FormState>();

  String? _validateEmail(String? value) {
    if (value!.isEmpty) {
      return 'Email is required';
    }
    String pattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(value)) {
      return 'Enter a valid email';
    }
    return null;
  }

  String? _validatePassword(String? value) {
    if (value!.isEmpty) {
      return 'Password is required';
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }
    return null;
  }

  String? _validateConfirmPassword(String? value) {
    if (value != passwordController.text) {
      return 'Passwords do not match';
    }
    return null;
  }

  void _showSuccessDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Success'),
          content: const Text('Registration successful!'),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return Scaffold(
      backgroundColor: colorScheme.primary,
      appBar: AppBar(
        backgroundColor: colorScheme.primary,
        foregroundColor: colorScheme.secondary,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 75),
                Text(
                  'CREATE ACCOUNT',
                  style: GoogleFonts.montserrat(
                      color: colorScheme.secondary,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 36),
                TextFormField(
                  controller: usernameController,
                  decoration: InputDecoration(
                    hintText: 'Username',
                    hintStyle: GoogleFonts.montserrat(
                        color: Colors.grey, fontSize: 14),
                    filled: true,
                    fillColor: colorScheme.secondary.withOpacity(0.1),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: colorScheme.secondary),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: colorScheme.secondary),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: colorScheme.secondary),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: GoogleFonts.montserrat(
                        color: Colors.grey, fontSize: 14),
                    filled: true,
                    fillColor: colorScheme.secondary.withOpacity(0.1),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: colorScheme.secondary),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: colorScheme.secondary),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: colorScheme.secondary),
                    ),
                  ),
                  validator: _validateEmail,
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: GoogleFonts.montserrat(
                        color: Colors.grey, fontSize: 14),
                    filled: true,
                    fillColor: colorScheme.secondary.withOpacity(0.1),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: colorScheme.secondary),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: colorScheme.secondary),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: colorScheme.secondary),
                    ),
                    suffixIcon: const Icon(Icons.visibility_off, color: Colors.grey),
                  ),
                  validator: _validatePassword,
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: confirmPasswordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Confirm Password',
                    hintStyle: GoogleFonts.montserrat(
                        color: Colors.grey, fontSize: 14),
                    filled: true,
                    fillColor: colorScheme.secondary.withOpacity(0.1),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: colorScheme.secondary),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: colorScheme.secondary),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: colorScheme.secondary),
                    ),
                    suffixIcon:
                        const Icon(Icons.visibility_off, color: Colors.grey),
                  ),
                  validator: _validateConfirmPassword,
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0), // Rectangle shape
                      side: BorderSide(
                          color: colorScheme.secondary), // Border color
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 36.0, vertical: 16.0),
                  ),
                  child: Text(
                    'Create Account',
                    style: GoogleFonts.montserrat(
                        fontSize: 14, color: colorScheme.primary),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _saveCredentials();
                      _showSuccessDialog();
                    }
                  },
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account? ",
                        style: GoogleFonts.montserrat(
                            color: Colors.grey, fontSize: 14)),
                    TextButton(
                      child: Text('Sign In here',
                          style: GoogleFonts.montserrat(
                              color: colorScheme.secondary, fontSize: 14)),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _saveCredentials() {
    print('Username: ${usernameController.text}');
    print('Email: ${emailController.text}');
    print('Password: ${passwordController.text}');
  }
}
