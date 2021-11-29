import 'package:flutter/material.dart';
import 'package:laporku/common/theme.dart';

class TextFieldCustomWidget extends StatelessWidget {
  final String textName;
  final bool isPassword;
  const TextFieldCustomWidget({
    Key? key,
    required this.textName,
    this.isPassword = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          textName,
          style: greyTextStyle.copyWith(
            fontWeight: medium,
            fontSize: 16,
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        TextField(
          obscureText: isPassword,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
            ),
            suffixIcon: Icon(
              isPassword ? Icons.visibility_off : Icons.visibility,
            ),
          ),
        )
      ],
    );
  }
}
