import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screen/profile_screen.dart';
import 'package:whatsapp_clone/widget/ui_helper.dart';

class OtpScreen extends StatefulWidget {
  final String phoneNumber;
  const OtpScreen({super.key, required this.phoneNumber});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {

  TextEditingController otp1 =TextEditingController();
  TextEditingController otp2 =TextEditingController();
  TextEditingController otp3 =TextEditingController();
  TextEditingController otp4 =TextEditingController();
  TextEditingController otp5 =TextEditingController();
  TextEditingController otp6 =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: UiHelper.customText(
            text: 'Verifying your number',
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: const Color(0xFF00A884)),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            UiHelper.customText(
              text: 'You’ve tried to register +880${widget.phoneNumber}',
              fontSize: 14,
            ),
            UiHelper.customText(
              text: 'recently. Wait before requesting an sms or a call.',
              fontSize: 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.customText(
                  text: ' with your code.',
                  fontSize: 14,
                ),
                UiHelper.customText(
              text: ' What’s my number?',
              color: const Color(0xFF00A884),
              fontSize: 14,
            ),
              ],
            ),

            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.customContainer(otp1),
                const SizedBox(width: 5,),
                UiHelper.customContainer(otp2),
                const SizedBox(width: 5,),
                UiHelper.customContainer(otp3),
                const SizedBox(width: 5,),
                UiHelper.customContainer(otp4),
                const SizedBox(width: 5,),
                UiHelper.customContainer(otp5),
                const SizedBox(width: 5,),
                UiHelper.customContainer(otp6),

              ],
            ),
              SizedBox(height: 50,),
            UiHelper.customText(text: 'Didn’t receive code?', fontSize: 14,color: const Color(0XFF00A884))
          ],
        ),
      ),
      floatingActionButton:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: UiHelper.customButton(
          context: context, 
          callback: (){
            Navigator.push(context, MaterialPageRoute(builder:(context)=> ProfileScreen()));
          }, 
          buttonName: 'Next', 
          ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
