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
   double fontHeight = 1.2, // Default line height
}) {
  return Text(
    text,
    style: TextStyle(
      fontWeight: fontWeight,
      fontSize: fontSize,
      color: color,
      height: fontHeight, // Apply the line height
    ),
  );
}

  static customContainer(TextEditingController controller){
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0XFFD9D9D9),
        // border: Border.all(color:const Color(0XFFD9D9D9A1)),
      ),
      padding: const EdgeInsets.only(left: 5),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          controller: controller,
          // onChanged: (text) {},
          decoration: const InputDecoration(
            border: InputBorder.none,
          ),
        ),
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