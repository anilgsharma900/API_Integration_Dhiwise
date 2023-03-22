import 'package:flutter/material.dart';
import 'package:social_template/core/app_export.dart';
import 'package:social_template/widgets/custom_search_view.dart';

// ignore: must_be_immutable
class AppbarSearchview extends StatelessWidget {
  AppbarSearchview({this.hintText, this.controller, this.margin});

  String? hintText;

  TextEditingController? controller;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomSearchView(
        width: 323,
        focusNode: FocusNode(),
        controller: controller,
        hintText: hintText,
        suffix: Padding(
          padding: EdgeInsets.only(
            right: getHorizontalSize(
              15.00,
            ),
          ),
          child: IconButton(
            onPressed: () {
              controller!.clear();
            },
            icon: Icon(
              Icons.clear,
              color: Colors.grey.shade600,
            ),
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: getVerticalSize(
            40.00,
          ),
        ),
      ),
    );
  }
}
