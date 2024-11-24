import 'package:flutter/material.dart';

import 'read.dart'; // Import ReadScreen

import 'Identify.dart'; 
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Title Text
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Hello',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 10),

              // Subtitle Text
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Let’s Learn More About Plants',
                  style: TextStyle(
                    color: Colors.black, // Dark green color
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Username TextField with Check Icon
              TextField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  hintText: 'Taylor Swift',
                  border: const OutlineInputBorder(),
                  suffixIcon: Icon(
                    Icons.check,
                    color: Color(0xFF25B889), // Green color
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Password TextField
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),

              // Remember Me and Forgot Password Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: false, // Set initial value
                        onChanged: (value) {
                          // Handle Remember Me change
                        },
                      ),
                      const Text('Remember me'),
                    ],
                  ),
                  TextButton(
                    onPressed: () {
                      // Handle Forgot Password action
                    },
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Login Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF25B889),
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  onPressed: () {
                    // Navigate to IdentifyScreen
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => IdentifyScreen()),
                    );
                  },
                  child: const Text(
                    'LOGIN',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 40),

              // Sign Up Row
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't Have Account? "),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ReadScreen()),
                      );
                    },
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(color: Color(0xFF25B889)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
