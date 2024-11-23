import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInPage extends StatefulWidget {
  @override
  _GoogleSignInPageState createState() => _GoogleSignInPageState();
}

class _GoogleSignInPageState extends State<GoogleSignInPage> {
  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email', 'profile']);
  GoogleSignInAccount? _currentUser;

  @override
  void initState() {
    super.initState();
    _googleSignIn.onCurrentUserChanged.listen((account) {
      setState(() {
        _currentUser = account;
      });
    });
    _googleSignIn.signInSilently(); // Try to sign in silently if possible
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign in with Google'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_currentUser == null)
              ElevatedButton(
                onPressed: () async {
                  try {
                    final GoogleSignInAccount? account =
                        await _googleSignIn.signIn();
                    setState(() {
                      _currentUser = account;
                    });
                    // Handle successful sign-in
                    print('Signed in as ${_currentUser?.displayName}');
                    // Navigate to the next screen or perform other actions
                  } catch (error) {
                    // Handle sign-in errors
                    print('Sign-in failed: $error');
                  }
                },
                child: Text('Sign in with Google'),
              ),
            if (_currentUser != null)
              Column(
                children: [
                  Text('Welcome, ${_currentUser?.displayName}!'),
                  Text(_currentUser?.email ?? ''),
                  ElevatedButton(
                    onPressed: () {
                      _googleSignIn.signOut();
                      setState(() {
                        _currentUser = null;
                      });
                    },
                    child: Text('Sign Out'),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
