 Super Awesome Dialog

Super Awesome Dialog
====================

Super Awesome Dialog is a customizable dialog package for your Flutter projects.

Installation
------------

Add the following line to your `pubspec.yaml`:

    super_awesome_dialog: ^1.0.0

Then run:

    flutter pub get

Usage
-----

To use Super Awesome Dialog in your Flutter project, import the package:

    import 'package:super_awesome_dialog/super_awesome_dialog.dart';

Then you can create a dialog by calling the `showSuperAwesomeDialog` function:

    showSuperAwesomeDialog(
          context: context,
          title: "Hello World",
          message: "This is a super awesome dialog!",
          dialogType: DialogType.info,
        );

Super Awesome Dialog provides different dialog types:

*   Info
*   Success
*   Error
*   Warning
*   Question

Customization
-------------

You can customize the dialog by passing additional parameters:

    showSuperAwesomeDialog(
          context: context,
          title: "Custom Dialog",
          message: "This is a custom dialog!",
          dialogType: DialogType.custom,
          customIcon: Icon(Icons.star),
          positiveButtonText: "Yes",
          onPositivePressed: () {},
          negativeButtonText: "No",
          onNegativePressed: () {},
          neutralButtonText: "Maybe",
          onNeutralPressed: () {},
          animationType: AnimationType.scale,
          animDuration: Duration(milliseconds: 500),
          autoClose: Duration(seconds: 3),
          backgroundBlur: 5.0,
          backgroundColor: Colors.white,
          borderRadius: 10.0,
          buttonColor: Colors.blue,
          buttonTextColor: Colors.white,
          contentTextColor: Colors.black,
          titleTextColor: Colors.blue,
        );

You can customize the following parameters:

*   `customIcon`: Set a custom icon for the dialog.
*   `positiveButtonText`: Set the text for the positive button.
*   `onPositivePressed`: Set the function to call when the positive button is pressed.
*   `negativeButtonText`: Set the text for the negative button.
*   `onNegativePressed`: Set the function to call when the negative button is pressed.
*   `neutralButtonText`: Set the text for the neutral button.
*   `onNeutralPressed`: Set the function to call when the neutral button is pressed.
*   `animationType`: Set the animation type for the dialog.
*   `animDuration`: Set the duration of the animation