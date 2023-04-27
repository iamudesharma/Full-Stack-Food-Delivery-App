// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class CustomTextFormFieldWidget extends StatelessWidget {
  const CustomTextFormFieldWidget({
    Key? key,
    required this.controller,
    this.hintText,
    this.labelText,
    this.helperText,
    this.errorText,
    this.enabled = true,
    this.obscureText,
    this.autocorrect,
    this.autovalidate,
    this.maxLines,
    this.maxLength,
    this.validator,
  }) : super(key: key);

  final TextEditingController controller;
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final String? errorText;
  final bool? enabled;
  final bool? obscureText;
  final bool? autocorrect;
  final bool? autovalidate;
  final int? maxLines;
  final int? maxLength;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return PlatformTextFormField(
      validator: validator,
      controller: controller,
      autocorrect: autocorrect,
      material: (context, platform) => MaterialTextFormFieldData(
        decoration: InputDecoration(
          isDense: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: hintText,
          labelText: labelText,
          helperText: helperText,
          errorText: errorText,
          enabled: enabled ?? true,
        ),
      ),
      cupertino: (context, platform) => CupertinoTextFormFieldData(
        obscureText: obscureText,
        autovalidateMode: autovalidate == true ? AutovalidateMode.always : null,
        maxLines: maxLines,
        maxLength: maxLength,
        placeholder: hintText,
        placeholderStyle: TextStyle(
          color: Colors.grey,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: 0.5,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
