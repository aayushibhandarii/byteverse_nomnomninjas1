import 'package:flutter/material.dart';
class TrackYourOrderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Track Your Order'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Your Order is on the Way!',
              style: TextStyle(fontSize: 24.0),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                //navigate back to the previous screen
                Navigator.pop(context);},
              child: const Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}
