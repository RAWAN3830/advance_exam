import 'package:exam/main.dart';
import 'package:flutter/material.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        decoration: const BoxDecoration(
         image: DecorationImage(image: AssetImage('assets/images/img.png'),fit: BoxFit.fitHeight),

        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Stand-up, at least in the form it is known today, is a fairly recent entertainment phenomenon.',
              style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.w600, ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32,),
            MaterialButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(31)),
              height: 58,
               color: Colors.green,
               onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) =>  MyHomePage())),
              child: const Text('Get Started', style: TextStyle(color: Colors.black, fontSize: 18),) ,
            ),
            const SizedBox(height: 32,)
          ],
        ),
      ),
    );
  }
}
