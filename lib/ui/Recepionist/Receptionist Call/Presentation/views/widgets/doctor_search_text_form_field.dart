import 'package:flutter/material.dart';
import 'package:untitled36/core/utils/text_styles.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/Presentation/views/widgets/container_with_shadow.dart';

class SearchTextField extends StatefulWidget {
  const SearchTextField({
    super.key,
    required this.hint,
    required this.onSaved,
    required this.validator,
    this.keyboardType,
    this.maxLines,
    this.prefixIcon,
  });
  final String hint;
  final void Function(String?) onSaved;
  final String? Function(String?) validator;
  final TextInputType? keyboardType;
  final int? maxLines;
  final Widget? prefixIcon;
  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxHeight: 60),
        child: Stack(
          children: [
            const ContainerWithShadow(),
            TextFormField(
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
                hintStyle: TextStyles.style16Regular.copyWith(
                  color: const Color(0xff7F7F7F),
                ),
                filled: true,
                fillColor: Colors.white,
                prefixIcon: widget.prefixIcon,
                border: textFormFieldBorder(),
                enabledBorder: textFormFieldBorder(),
                focusedBorder: textFormFieldBorder(),
                errorBorder: textFormFieldErrorBorder(),
                contentPadding: const EdgeInsets.all(16),
              ),
            ),
          ],
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
