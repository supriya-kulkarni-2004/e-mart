import 'package:e_mart/consts/consts.dart';

Widget ourButton({onPress, color, textColor, title}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      primary: color,
      padding: EdgeInsets.all(12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5), // Adjust this value
      ),
    ),
    onPressed: () {
      onPress();
    },
    child: Text(
      title, // Use title directly without calling text property
      style: TextStyle(
        color: textColor,
        fontFamily: bold,
      ),
    ),
  );
}
