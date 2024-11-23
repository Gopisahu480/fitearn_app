import 'package:fitearn_app/google_sign_up_page.dart';
import 'package:fitearn_app/login_page.dart';
import 'package:fitearn_app/signup_opt.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // App logo
            Image.asset(
              'assets/logo.png', // Replace with your app logo asset
              fit: BoxFit.cover,
              height: 50,
              width: 50,
            ),
            const SizedBox(height: 20),
            // Welcome text
            const Text(
              "Welcome to FitnEarn",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Please sign up below.",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 30),
            // Mobile number input
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Enter Mobile Number",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[900],
                hintText: "Enter Your Mobile Number",
                hintStyle: const TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
              ),
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 10),
            // Terms and Conditions
            const Text.rich(
              TextSpan(
                text: "By Signing Up, I Accept ",
                style: TextStyle(color: Colors.grey, fontSize: 12),
                children: [
                  TextSpan(
                    text: "Terms & Conditions ",
                    style: TextStyle(color: Colors.red),
                  ),
                  TextSpan(
                    text: "& ",
                  ),
                  TextSpan(
                    text: "Privacy policy.",
                    style: TextStyle(color: Colors.red),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            // Continue button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => OtpScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  backgroundColor: Colors.pink,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: const Text(
                  "Continue With Mobile",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // OR Divider
            Row(
              children: [
                Expanded(
                  child: Divider(color: Colors.grey[800]),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    "OR",
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                ),
                Expanded(
                  child: Divider(color: Colors.grey[800]),
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Sign up with Google
            SizedBox(
              width: double.infinity,
              child: OutlinedButton.icon(
                onPressed: () {
                  // Add Google sign-up logic here
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => GoogleSignInPage()),
                  );
                },
                // icon: const Icon(Icons.g_mobiledata, color: Colors.white),
                Image(
                  image: AssetImage('assets/icons-google.png'),
                  color: Colors.white,
                  height: 24,
                  width: 24,
                ),
                label: const Text(
                  "Sign up with Google",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  side: const BorderSide(color: Colors.white),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Already have an account?
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already have an account? ",
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
                GestureDetector(
                  onTap: () {
                    // Add navigation to login logic here
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => LoginPage()),
                    );
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
