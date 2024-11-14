// import 'package:flutter/material.dart';

// class TypographyStyles {
//   static const TextStyle heading1 = TextStyle(
//     fontSize: 24,
//     fontWeight: FontWeight.bold,
//     color: Colors.black,
//   );

//   static const TextStyle heading2 = TextStyle(
//     fontSize: 20,
//     fontWeight: FontWeight.bold,
//     color: Colors.black,
//   );

//   static const TextStyle bodyText = TextStyle(
//     fontSize: 16,
//     color: Colors.black,
//   );

//   static const TextStyle linkTextBlue = TextStyle(
//     fontSize: 14,
//     color: Color(0xFF0C42CC),
//     fontWeight: FontWeight.w500,
//   );
  
//     static const TextStyle linkTextGrey = TextStyle(
//     fontSize: 14,
//     color: Color(0xFF5E5E5E),
//     fontWeight: FontWeight.w500,
//   );
//   // Add other text styles as needed
// }

// class UiHelper {
//   // Custom text widget with a style parameter for dynamic styling
//   static Widget customText({
//     required String text,
//     TextStyle? style,
//     TextAlign textAlign = TextAlign.left,
//   }) {
//     return Text(
//       text,
//       style: style ?? TypographyStyles.bodyText, // Defaults to body text style if no style is provided
//       textAlign: textAlign,
//     );
//   }

//   // Custom button widget with configurable colors and callback
//   static Widget customButton({
//     required BuildContext context,
//     required VoidCallback callback,
//     required String buttonName,
//     Color color = const Color(0xFF25D366), // WhatsApp green color as default
//   }) {
//     return ElevatedButton(
//       onPressed: callback,
//       style: ElevatedButton.styleFrom(
//         backgroundColor: color,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(8),
//         ),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.symmetric(vertical: 12.0),
//         child: Text(
//           buttonName,
//           style: TypographyStyles.heading2.copyWith(color: Colors.white), // Using heading2 style with white color for the button text
//         ),
//       ),
//     );
//   }

//   // Example method to show a custom dialog
//   static Future<void> showCustomDialog({
//     required BuildContext context,
//     required String title,
//     required String content,
//     required VoidCallback onConfirm,
//     String confirmText = 'OK',
//     String cancelText = 'Cancel',
//   }) {
//     return showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: Text(
//             title,
//             style: TypographyStyles.heading2,
//           ),
//           content: Text(
//             content,
//             style: TypographyStyles.bodyText,
//           ),
//           actions: [
//             TextButton(
//               onPressed: () => Navigator.of(context).pop(),
//               child: Text(
//                 cancelText,
//                 style: TypographyStyles.linkText,
//               ),
//             ),
//             TextButton(
//               onPressed: () {
//                 onConfirm();
//                 Navigator.of(context).pop();
//               },
//               child: Text(
//                 confirmText,
//                 style: TypographyStyles.linkText,
//               ),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
