import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 38),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/error.png',
              ),
              SizedBox(
                height: 70,
              ),
              Text(
                'Where are you going',
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Text(
                'Seems like the page that you were \nrequested is already gone',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: Color(0xff82868E),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: 210,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xff5843BE),
                  borderRadius: BorderRadius.circular(17),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  child: Text(
                    'Back To Home',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
