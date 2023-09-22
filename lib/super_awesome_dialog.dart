library super_awesome_dialog;

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppDialog {
  factory AppDialog() => _instance;
  static final AppDialog _instance = AppDialog._internal();
  static AppDialog get instance => _instance;

  AppDialog._internal();
  BorderRadiusGeometry? buttonsBorderRadius;
  BorderRadiusGeometry? dialogBorderRadius;
  TextStyle? buttonsTextStyle;
  String? btnOkText;
  IconData? btnOkIcon;
  Color btnOkColorInfo = Color(0xff008FFA);
  Color? btnOkColorSuccess = Color(0xff00C36C);
  Color? btnOkColorWarning = Color(0xffFFAD29);
  Color? btnOkColorError = Color(0xffD73240);
  Color? btnOkColornoHeader = Color(0xff008FFA);

  void Info({
    required String title,
    required String message,
    void Function()? btnOkOnPress,
  }) {
    AwesomeDialog(
      context: Get.context!,
      dialogType: DialogType.info,
      animType: AnimType.rightSlide,
      headerAnimationLoop: false,
      title: title,
      desc: message,
      btnOkColor: btnOkColorInfo,
      btnOkOnPress: btnOkOnPress,
      btnOkText: btnOkText,
      btnOkIcon: btnOkIcon,
      buttonsBorderRadius: buttonsBorderRadius,
      dialogBorderRadius: dialogBorderRadius,
      buttonsTextStyle: buttonsTextStyle,
    )..show();
  }

  void Success({
    required String title,
    required String message,
    void Function()? btnOkOnPress,
  }) {
    AwesomeDialog(
      context: Get.context!,
      dialogType: DialogType.success,
      animType: AnimType.rightSlide,
      title: title,
      desc: message,
      btnOkColor: btnOkColorSuccess,
      btnOkOnPress: btnOkOnPress,
      btnOkText: btnOkText,
      btnOkIcon: btnOkIcon,
      buttonsBorderRadius: buttonsBorderRadius,
      dialogBorderRadius: dialogBorderRadius,
      buttonsTextStyle: buttonsTextStyle,
    )..show();
  }

  void Warning({
    required String title,
    required String message,
    void Function()? btnOkOnPress,
  }) {
    AwesomeDialog(
      context: Get.context!,
      dialogType: DialogType.warning,
      animType: AnimType.rightSlide,
      title: title,
      desc: message,
      btnOkOnPress: btnOkOnPress,
      btnOkColor: btnOkColorWarning,
      btnOkText: btnOkText,
      btnOkIcon: btnOkIcon,
      buttonsBorderRadius: buttonsBorderRadius,
      dialogBorderRadius: dialogBorderRadius,
      buttonsTextStyle: buttonsTextStyle,
    )..show();
  }

  void Error({
    required String title,
    required String message,
    void Function()? btnOkOnPress,
  }) {
    AwesomeDialog(
      context: Get.context!,
      dialogType: DialogType.error,
      animType: AnimType.rightSlide,
      title: title,
      desc: message,
      btnOkColor: btnOkColorError,
      btnOkOnPress: btnOkOnPress,
      btnOkText: btnOkText,
      btnOkIcon: btnOkIcon,
      buttonsBorderRadius: buttonsBorderRadius,
      dialogBorderRadius: dialogBorderRadius,
      buttonsTextStyle: buttonsTextStyle,
    )..show();
  }

  void noHeader({
    required String title,
    required String message,
    void Function()? btnOkOnPress,
  }) {
    AwesomeDialog(
      context: Get.context!,
      dialogType: DialogType.noHeader,
      animType: AnimType.rightSlide,
      title: title,
      desc: message,
      btnOkOnPress: btnOkOnPress,
      btnOkColor: btnOkColornoHeader,
      btnOkText: btnOkText,
      btnOkIcon: btnOkIcon,
      buttonsBorderRadius: buttonsBorderRadius,
      dialogBorderRadius: dialogBorderRadius,
      buttonsTextStyle: buttonsTextStyle,
    )..show();
  }

  void showAppDialog({
    required BuildContext context,
    required String title,
    required String message,
    DialogTypeEnum dialogType = DialogTypeEnum.info,
    void Function()? onOkPressed,
  }) {
    final appDialog = AppDialog.instance;
    switch (dialogType) {
      case DialogTypeEnum.info:
        appDialog.Info(
          title: title,
          message: message,
          btnOkOnPress: onOkPressed,
        );
        break;
      case DialogTypeEnum.success:
        appDialog.Success(
          title: title,
          message: message,
          btnOkOnPress: onOkPressed,
        );
        break;
      case DialogTypeEnum.warning:
        appDialog.Warning(
          title: title,
          message: message,
          btnOkOnPress: onOkPressed,
        );
        break;
      case DialogTypeEnum.error:
        appDialog.Error(
          title: title,
          message: message,
          btnOkOnPress: onOkPressed,
        );
        break;
      case DialogTypeEnum.noHeader:
        appDialog.noHeader(
          title: title,
          message: message,
          btnOkOnPress: onOkPressed,
        );
        break;
    }
  }
}

enum DialogTypeEnum {
  info,
  success,
  warning,
  error,
  noHeader,
}
