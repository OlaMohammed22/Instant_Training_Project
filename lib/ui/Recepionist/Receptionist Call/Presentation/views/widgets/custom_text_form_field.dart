import 'package:flutter/material.dart';
import 'package:untitled36/core/utils/text_styles.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    required this.hint,
    required this.onSaved,
    required this.validator,
    this.keyboardType,
    this.maxLines,
    this.prefixIcon,
    this.padding,
    this.fillColor,
  });
  final String hint;
  final void Function(String?) onSaved;
  final String? Function(String?) validator;
  final TextInputType? keyboardType;
  final int? maxLines;
  final Widget? prefixIcon;
  final EdgeInsetsGeometry? padding;
  final Color? fillColor;
  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding ?? const EdgeInsets.symmetric(horizontal: 16),
      child: TextFormField(
        keyboardType: widget.keyboardType,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        cursorColor: Colors.grey,
        style: TextStyles.style16Regular,
        maxLines: widget.maxLines,
        onChanged: (value) {
          if (value == '') {
            isActive = false;
          } else {
            isActive = true;
          }
          setState(() {});
        },
        onSaved: widget.onSaved,
        validator: widget.validator,
        decoration: InputDecoration(
          hintText: widget.hint,
          fillColor: widget.fillColor ?? Colors.white,
          filled: true,
          hintStyle: TextStyles.style16Regular.copyWith(
            color: const Color(0xff7F7F7F),
          ),
          prefixIcon: widget.prefixIcon,
          border: textFormFieldBorder(),
          enabledBorder: textFormFieldBorder(),
          focusedBorder: textFormFieldBorder(),
          errorBorder: textFormFieldErrorBorder(),
          contentPadding: const EdgeInsets.all(16),
        ),
      ),
    );
  }

  OutlineInputBorder textFormFieldErrorBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.red,
      ),
      borderRadius: BorderRadius.circular(8),
    );
  }

  OutlineInputBorder textFormFieldBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(
        color: Color(0xffE0E0E0),
      ),
      borderRadius: BorderRadius.circular(8),
    );
  }
}
