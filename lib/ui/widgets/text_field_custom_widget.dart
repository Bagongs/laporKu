import 'package:flutter/material.dart';
import 'package:laporku/common/theme.dart';
import 'package:laporku/provider/textfield_provider.dart';
import 'package:provider/provider.dart';

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
    TextFieldProvider pText = Provider.of<TextFieldProvider>(context);
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
        Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
          child: isPassword ? _textFieldPassword(pText) : _textFieldName(),
        )
      ],
    );
  }

  TextField _textFieldName() {
    return TextField(
      obscureText: isPassword,
      keyboardType: TextInputType.text,
      maxLines: 1,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            defaultRadius,
          ),
        ),
      ),
    );
  }

  TextField _textFieldPassword(TextFieldProvider pText) {
    return TextField(
      obscureText: pText.isPassword,
      keyboardType: TextInputType.visiblePassword,
      maxLines: 1,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: () {
            pText.changeIconPassword();
          },
          icon: Icon(pText.isVisible ? Icons.visibility : Icons.visibility_off),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            defaultRadius,
          ),
        ),
      ),
    );
  }
}
