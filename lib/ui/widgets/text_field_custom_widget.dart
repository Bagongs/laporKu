import 'package:flutter/material.dart';
import 'package:laporku/common/theme.dart';
import 'package:get/get.dart';
import 'package:laporku/services/provider/textfield_controller.dart';

class TextFieldCustomWidget extends StatelessWidget {
  final TextEditingController controller;
  final String textName;
  final bool isPassword;
  final bool isPhone;
  const TextFieldCustomWidget({
    Key? key,
    required this.textName,
    required this.controller,
    this.isPhone = false,
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
        isPassword ? _textFieldPassword() : _textFieldWidget(textName)
      ],
    );
  }

  TextField _textFieldWidget(String textName) {
    return TextField(
      controller: controller,
      keyboardType: isPhone ? TextInputType.number : TextInputType.text,
      decoration: InputDecoration(
        hintText: "input your ${textName.toLowerCase()}...",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(defaultRadius),
          borderSide: BorderSide(
            color: orangeColor,
            width: 2,
          ),
        ),
      ),
    );
  }

  _textFieldPassword() {
    var pass = Get.put(TextFieldController());
    return GetBuilder<TextFieldController>(
      initState: (_) {},
      builder: (_) {
        return TextField(
          obscureText: pass.isVisible,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            suffixIcon: IconButton(
              onPressed: () {
                pass.changeObsecure();
              },
              icon: Icon(
                pass.isVisible ? Icons.visibility_off : Icons.visibility,
              ),
            ),
            hintText: 'input your password...',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(defaultRadius),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(defaultRadius),
              borderSide: BorderSide(
                color: orangeColor,
                width: 2,
              ),
            ),
          ),
        );
      },
    );
  }
}
