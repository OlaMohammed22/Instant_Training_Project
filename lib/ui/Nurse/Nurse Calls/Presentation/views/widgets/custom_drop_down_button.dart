import 'package:flutter/material.dart';
import 'package:untitled36/core/utils/text_styles.dart';

class CustomDropDownButton extends StatefulWidget {
  const CustomDropDownButton(
      {super.key,
      required this.dropDownList,
      required this.hintText,
      required this.validator,
      this.onChanged});
  final List<String> dropDownList;
  final String hintText;
  final String? Function(String?) validator;
  final void Function(String?)? onChanged;
  @override
  State<CustomDropDownButton> createState() => _CustomDropDownButtonState();
}

class _CustomDropDownButtonState extends State<CustomDropDownButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: DropdownButtonFormField<String>(
        elevation: 0,
        dropdownColor: const Color(0xffF7F9FA),
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: widget.validator,
        decoration: InputDecoration(
          border: InputBorder.none,
          enabledBorder: textFormFieldBorder(),
          focusedBorder: textFormFieldBorder(),
          errorBorder: textFormFieldErrorBorder(),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 10,
          ),
        ),
        value: null,
        iconSize: 42,
        icon: const Flexible(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Icon(
              Icons.arrow_drop_down,
              color: Colors.black,
            ),
          ),
        ),
        borderRadius: BorderRadius.circular(15),
        hint: Text(
          widget.hintText,
          style: TextStyles.style16Medium.copyWith(
            color: const Color(0xff919191),
          ),
        ),
        selectedItemBuilder: (context) {
          return List.generate(widget.dropDownList.length, (index) {
            return Text(
              widget.hintText,
              style: TextStyles.style16Medium.copyWith(
                color: const Color(0xff919191),
              ),
            );
          });
        },
        items: widget.dropDownList.map(
          (String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: TextStyles.style16Medium.copyWith(
                  color: const Color(
                    0xff919191,
                  ),
                ),
              ),
            );
          },
        ).toList(),
        onChanged: widget.onChanged,
      ),
    );
  }

  OutlineInputBorder textFormFieldErrorBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(
        color: Color(0xffE53935),
      ),
      borderRadius: BorderRadius.circular(15),
    );
  }

  OutlineInputBorder textFormFieldBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(
        color: Color(0xffE1E1E1),
      ),
      borderRadius: BorderRadius.circular(15),
    );
  }
}
