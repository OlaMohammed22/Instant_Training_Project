import 'dart:async';

import 'package:flutter/material.dart';
import 'package:untitled36/bloc/bloc.dart';
import 'package:untitled36/bloc/bloc_event.dart';
import 'package:untitled36/bloc/bloc_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled36/ui/analysis_employee/successscreen.dart';


class FingerprintScreen extends StatefulWidget {
  @override
  State<FingerprintScreen> createState() => _FingerprintScreenState();
}

class _FingerprintScreenState extends State<FingerprintScreen> {
    Timer? _timer;

  _startDelay() {
    _timer = Timer(const Duration(seconds: 3), _goNext);
  }

  _goNext() {
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => SuccessScreen()),
  );
  }

  @override
  void initState() {
    _startDelay();
    super.initState();
    //  _startDelay();
  }
   void dispose() {
    // TODO: implement dispose
    _timer!.cancel();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return BlocProvider(
      create: (context) => FingerprintBloc(),
      child: Scaffold(
        backgroundColor: Color(0xFF22C7BB),
        body: SafeArea(
          child: Center(
            child: BlocConsumer<FingerprintBloc, FingerprintState>(
              listener: (context, state) {
                if (state is FingerprintSuccess) {
                  Future.delayed(Duration(milliseconds: 500), () {
                     Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => SuccessScreen()),
  );
                  });
                }
              },
              builder: (context, state) {
                if (state is FingerprintLoading) {
                  return CircularProgressIndicator(color: Colors.white);
                }

                return GestureDetector(
                  onTap: () => context.read<FingerprintBloc>(). add(VerifyFingerprint()),
                  child: Column(
  children: [
    Spacer(), 
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/pasa.png'),
        SizedBox(height: screenHeight * 0.02),
         TweenAnimationBuilder<Offset>(
          tween: Tween<Offset>(
            begin: const Offset(-0.5,0), 
            end: const Offset(0, 0),    
          ),
          duration: const Duration(seconds: 3), 
          curve: Curves.easeInOut, 
          builder: (context, offset, child) {
            return Transform.translate(
              offset: Offset(offset.dx * MediaQuery.of(context).size.width, 0),
              child: child,
            );
          },
         

      child:  Text(
          "Please touch ID sensor to verify registration",
          style: TextStyle(fontSize: screenWidth * 0.02, color: Colors.white),
        ),
         ),
      ],
    ),
    Spacer(),
     SizedBox(
      width: double.infinity,
  child:   Image.asset('assets/jkjk.png',fit: BoxFit.cover,),
     ),
    SizedBox(height: screenHeight * 0.03),
  ],
)
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}