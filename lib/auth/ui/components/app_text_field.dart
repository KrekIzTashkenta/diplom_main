import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    this.controller,
    required this.labelText,
    this.obscureText = false,
    this.onChanged,
    this.onTap,
    this.keyboardType,
    this.validator,
  });

  final TextEditingController? controller;
  final String labelText;
  final bool obscureText;
  final Function(String value)? onChanged;
  final Function()? onTap;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      onChanged: onChanged,
      onTap: onTap,
      obscureText: obscureText,
      validator: validator ?? emptyValidator,
      maxLines: 1,
      controller: controller,
      //style: AppTextStyle.bold24,
      //cursorColor: AppColors.orange,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 10),
        hintText: labelText,
        //hintStyle: AppTextStyle.bold24,
        //fillColor: AppColors.grey,
        filled: false,
        //focusColor: AppColors.orange,
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            //color: AppColors.orange,
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            //color: AppColors.orange,
            width: 2,
          ),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            //color: AppColors.orange,
          ),
        ),
      ),
    );
  }

  String? emptyValidator(String? value) {
    if (value?.isEmpty == true) {
      return "обязательное поле";
    }
    return null;
  }
}
