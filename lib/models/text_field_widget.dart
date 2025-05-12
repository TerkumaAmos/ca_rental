import 'package:car_rental_app/core/app_colors.dart';
import 'package:flutter/material.dart';
//import 'package:techumas_food_app/core/app_colors.dart';

class TextFieldWidget extends StatefulWidget {
  final String? hintText;
  final Icon? prefixIcon;
  const TextFieldWidget({
    super.key,
    required this.hintText,
    required this.prefixIcon,
  });

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        //  hintText: 'Sushi',
        hintText: widget.hintText,
        prefixIcon: widget.prefixIcon,
        // prefixIcon: Icon(Icons.search, color: AppColors.primary),
        filled: true,
        fillColor: AppColors.primary,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide.none,
        ),
        suffixIcon: Icon(Icons.tune, color: AppColors.primary),
      ),
    );
  }
}
