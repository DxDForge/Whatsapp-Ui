import 'package:flutter/material.dart';

class UiHelper {
  // Updated CustomButton to accept BuildContext as a parameter for MediaQuery usage
  static Widget customButton({
    required BuildContext context,
    required VoidCallback callback,
    required String buttonName,
  }) {
    return SizedBox(
      height: 45,
      width: MediaQuery.of(context).size.width - 20, // Responsive width based on screen size
      child: ElevatedButton(
        onPressed: callback,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
        child: Text(
          buttonName,
          style: const TextStyle(fontSize: 14, color: Colors.white),
        ),
      ),
    );
  }

  // Updated CustomText to follow Flutter naming conventions and added optional parameters
  static Widget customText({
    
    required String text,
    required double fontSize,
    Color color = const Color(0xFF5E5E5E), // Default color
    FontWeight fontWeight = FontWeight.normal,// Default font weight
  }) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: fontWeight,
        fontSize: fontSize,
        color: color,
        // height: fontHeight,
      ),
    );
  }
}







// import 'package:flutter/material.dart';

// class UiHelper{
//    static CustomButton({required VoidCallback callback,required String buttonName}){
//     return SizedBox(
//       height: 35,
//       width: MediaQuery.of(context).size.width-20,
//       child: ElevatedButton(
//         onPressed: (){
//           callback();
//         }, style: ElevatedButton.styleFrom(
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(40)
//           )
//         ),
//         child: Text(
//           buttonName,
//           style: const TextStyle(fontSize: 14,color:Colors.white),)
        
//         ),
//     );
//    }

//    static CustomText({required String text,
//    required double height,Color? color,FontWeight? fontWeight}){

//     return Text(
//       text,style: TextStyle(
//         fontWeight: fontWeight,
//         fontSize: height,
//         color: color??const Color(0XFF5E5E5E)),
        
//         );
//    }
// }