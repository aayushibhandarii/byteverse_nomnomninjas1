// // import 'dart:js';
//
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:rasoiriders/checkuser.dart';
// import 'package:rasoiriders/login.dart';
// import 'package:rasoiriders/paymentgateway.dart';
// import 'firebase_options.dart';
//
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
//   );
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//       ),
//       home: checkUser()            // FOR payment const paymentGateway()
//     );
//   }
// }
//
//
//   logout()async{
//     FirebaseAuth.instance.signOut().then((e){
//       Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => loginPage()));
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // TRY THIS: Try changing the color here to a specific color (to
//         // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
//         // change color while the other colors stay the same.
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: logout,
//         tooltip: 'Logout',
//         child: const Icon(Icons.logout),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:rasoiriders/adddata.dart';
import 'package:rasoiriders/checkuser.dart';
import 'package:rasoiriders/fetchdata.dart';
import 'package:rasoiriders/login.dart';
import 'package:rasoiriders/paymentgateway.dart';
import 'package:rasoiriders/signup.dart';
import 'package:rasoiriders/vegan.dart';
import 'package:rasoiriders/track.dart';
import 'package:rasoiriders/makecall.dart';
import 'makecall.dart';
import 'diet.dart';
import 'drinks.dart';
import 'firebase_options.dart';
import 'forgotpassword.dart';
import 'gym.dart';
import 'homepg.dart';
import 'location.dart';
import 'mealplan.dart';
import 'track.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      routes: {
        '/getStarted': (context) => GetStartedPage(),
        '/check': (context) => checkUser(),
        '/login': (context) => loginPage(),
        '/signup': (context) => signupPage(),
        '/forgot': (context) => forgotPassword(),
        '/homepg': (context) => HomePage(),
        '/gym': (context) => GymPage(),
        '/vegan': (context) => VeganPage(),
        '/diet': (context) => DietPage(),
        '/drinks': (context) => DrinksPage(),
        '/location': (context) => LocationSelectionPage(),
        '/mealplan': (context) => MealPlan(),
        '/payment': (context) => paymentGateway(),
        '/track': (context) => TrackYourOrderScreen(),
        '/calling': (context) => makeCall(),





      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacementNamed('/getStarted');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow,
        body:Center(
            child: Image.asset('assets/images/rasoi_.png')

        )

    );
  }
}

class GetStartedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            'assets/images/bg__.png', // Adjust path according to your asset location
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/check');
                },
                child: const Text(
                  'Get Started',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
              )
            ],
          ),
        ],
      ),
    );
  }
}



