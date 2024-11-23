import 'package:fitearn_app/signup_page.dart';
import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(FitnEarnApp());
}

class FitnEarnApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FitnEarn',
      theme: ThemeData(
        primarySwatch: Colors.red,
        scaffoldBackgroundColor: Colors.black,
      ),
      home: SplashScreenWrapper(),
    );
  }
}

class SplashScreenWrapper extends StatefulWidget {
  @override
  _SplashScreenWrapperState createState() => _SplashScreenWrapperState();
}

class _SplashScreenWrapperState extends State<SplashScreenWrapper> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  Timer? _timer;

  final List<Map<String, String>> splashData = [
    {
      "image": "assets/Ani3.gif",
      "title": "Track Your Progress",
      "text": "Monitor your fitness journey with ease"
    },
    {
      "image": "assets/Ani1.gif",
      "title": "Personalized Workouts",
      "text": "Get custom routines tailored to your goals"
    },
    {
      "image": "assets/Ani2.gif",
      "title": "Nutrition Guidance",
      "text": "Receive expert advice on healthy eating"
    },
    {
      "image": "assets/Ani4.gif",
      "title": "Community Support",
      "text": "Connect with like-minded fitness enthusiasts"
    },
  ];

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (_currentPage < splashData.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 350),
        curve: Curves.easeIn,
      );
    });

    Timer(Duration(seconds: 18), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => CustomSplashScreen()),
      );
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: splashData.length,
              itemBuilder: (context, index) => SplashContent(
                image: splashData[index]["image"]!,
                title: splashData[index]["title"]!,
                text: splashData[index]["text"]!,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                splashData.length,
                (index) => buildDot(index: index),
              ),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: _currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: _currentPage == index ? Colors.red : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    required this.image,
    required this.title,
    required this.text,
  }) : super(key: key);

  final String image, title, text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(
          "FitnEarn",
          style: TextStyle(
            fontSize: 36,
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white70,
          ),
        ),
        Spacer(flex: 2),
        Image.asset(
          image,
          height: 265,
          width: 235,
        ),
      ],
    );
  }
}

class CustomSplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(height: 40),
              Text(
                'Start your fitness\ntraining journey',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
              Expanded(
                child: Center(
                  child: Image.asset(
                    'assets/splash_screen.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Handle "Already have an account" action
                },
                child: Text('Already have an account',
                    style: TextStyle(color: Colors.white)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 51, 49, 49),
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  // Handle "Get Started" action
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => SignUpPage()),
                  );
                },
                child:
                    Text('Get Started', style: TextStyle(color: Colors.white)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
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








// import 'package:flutter/material.dart';

// void main() {
//   runApp(FitnEarnApp());
// }

// class FitnEarnApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'FitnEarn',
//       theme: ThemeData(
//         primarySwatch: Colors.red,
//         scaffoldBackgroundColor: Colors.black,
//       ),
//       home: SplashScreen(),
//     );
//   }
// }

// class SplashScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: Column(
//             // crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               SizedBox(height: 40),
//               Text(
//                 'Start your fitness\ntraining journey',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 28,
//                   fontWeight: FontWeight.bold,
//                 ),
//                 textAlign: TextAlign.left,
//               ),
//               Expanded(
//                 child: Center(
//                   child: _buildIllustration(),
//                 ),
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   // Handle "Get Started" action
//                 },
//                 child: Text('Already have an account',
//                     style: TextStyle(color: Colors.white)),
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: const Color.fromARGB(255, 51, 49, 49),
//                   minimumSize: Size(double.infinity, 50),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 10),
//               ElevatedButton(
//                 onPressed: () {
//                   // Handle "Get Started" action
//                 },
//                 child:
//                     Text('Get Started', style: TextStyle(color: Colors.white)),
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.red,
//                   minimumSize: Size(double.infinity, 50),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildIllustration() {
//     return Container(
//       height: 300,
//       child: Image.asset(
//         'assets/splash_screen.png',
//         fit: BoxFit.contain,
//       ),
//     );
//   }
// }
