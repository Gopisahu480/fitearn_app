import 'package:fitearn_app/google_sign_up_page.dart';
import 'package:fitearn_app/login_page.dart';
import 'package:fitearn_app/signup_opt.dart';
import 'package:fitearn_app/signup_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
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
                icon: Image.asset(
                  'assets/icons-google.png', // Replace with your Google logo asset
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
                  "Don't have an account? ",
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
                GestureDetector(
                  onTap: () {
                    // Add navigation to login logic here
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => SignUpPage()),
                    );
                  },
                  child: const Text(
                    "Sign Up",
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














// import 'package:flutter/material.dart';

// class LoginPage extends StatelessWidget {
//   const LoginPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: SafeArea(
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const SizedBox(height: 20),
//               Image.asset(
//                 'assets/logo.png', // Replace with your app logo asset
//                 fit: BoxFit.cover,
//                 height: 50,
//                 width: 50,
//               ),
//               const SizedBox(height: 20),
//               const Text(
//                 'Welcome to FitEarn',
//                 style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 24,
//                     fontWeight: FontWeight.bold),
//               ),
//               const SizedBox(height: 10),
//               const Text(
//                 'Please sign in below.',
//                 style: TextStyle(color: Colors.white, fontSize: 16),
//               ),
//               const SizedBox(height: 20),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 20),
//                 child: TextField(
//                   style: const TextStyle(color: Colors.white),
//                   decoration: const InputDecoration(
//                     hintText: 'Enter Your Mobile Number',
//                     hintStyle: TextStyle(color: Colors.white),
//                     enabledBorder: UnderlineInputBorder(
//                       borderSide: BorderSide(color: Colors.white),
//                     ),
//                     focusedBorder: UnderlineInputBorder(
//                       borderSide: BorderSide(color: Colors.white),
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 20),
//               Container(
//                 width: 250,
//                 decoration: BoxDecoration(
//                   color: Colors.pink,
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: TextButton(
//                   onPressed: () {
//                     // Implement login logic here
//                   },
//                   child: const Text(
//                     'Continue With Mobile',
//                     style: TextStyle(color: Colors.white),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 10),
//               const Text(
//                 'OR',
//                 style: TextStyle(color: Colors.white),
//               ),
//               const SizedBox(height: 10),
//               Container(
//                 width: 250,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: TextButton(
//                   onPressed: () {
//                     // Implement Google sign-in logic here
//                   },
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       const Icon(Icons.g_mobiledata),
//                       const SizedBox(width: 10),
//                       const Text('Sign in with Google'),
//                     ],
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 20),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: const [
//                   Text(
//                     "Don't have an account?",
//                     style: TextStyle(color: Colors.white),
//                   ),
//                   SizedBox(width: 5),
//                   Text(
//                     'Sign Up',
//                     style: TextStyle(
//                         color: Colors.white, fontWeight: FontWeight.bold),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
