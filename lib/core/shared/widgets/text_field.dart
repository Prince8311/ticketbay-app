import 'package:flutter/material.dart';
import 'package:ticket_bay/gen/colors.gen.dart';
import 'package:ticket_bay/gen/fonts.gen.dart';

class AppTextField extends StatefulWidget {
  final String label;
  final TextEditingController? controller;
  final bool obscureText; // pass true for password field
  final TextInputType keyboardType;

  const AppTextField({
    super.key,
    required this.label,
    this.controller,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
  });

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  bool _isObscured = true;

  @override
  void initState() {
    super.initState();
    _isObscured = widget.obscureText; // enabled only when required
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextField(
        controller: widget.controller,
        obscureText: widget.obscureText ? _isObscured : false,
        keyboardType: widget.keyboardType,
        style: const TextStyle(
          fontSize: 13,
          color: ColorName.black1,
          fontFamily: FontFamily.poppins,
        ),
        cursorColor: ColorName.themeColor,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 20),

          // Default label color
          labelText: widget.label,
          labelStyle: const TextStyle(
            fontFamily: FontFamily.poppins,
            fontSize: 13,
            color: ColorName.black2,
          ),

          // Focused label color
          floatingLabelStyle: const TextStyle(
            fontFamily: FontFamily.poppins,
            fontSize: 13,
            color: ColorName.blueColor,
            fontWeight: FontWeight.w500,
          ),

          // Eye icon only for password fields
          suffixIcon: widget.obscureText
              ? IconButton(
                  icon: Icon(
                    _isObscured ? Icons.visibility_off : Icons.visibility,
                    size: 20,
                    color: ColorName.black3,
                  ),
                  onPressed: () {
                    setState(() => _isObscured = !_isObscured);
                  },
                )
              : null,

          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: ColorName.borderColor,
              width: 1.25,
            ),
          ),

          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: ColorName.themeColor,
              width: 1.25,
            ),
          ),
        ),
      ),
    );
  }
}
