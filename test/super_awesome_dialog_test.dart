import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:super_awesome_dialog/super_awesome_dialog.dart';

void main() {
  group('AppDialog tests', () {
    testWidgets('Info dialog test', (WidgetTester tester) async {
      await tester.runAsync(() async {
        await _buildDialog(tester, DialogTypeEnum.info);
      });
    });

    testWidgets('Success dialog test', (WidgetTester tester) async {
      await tester.runAsync(() async {
        await _buildDialog(tester, DialogTypeEnum.success);
      });
    });

    testWidgets('Warning dialog test', (WidgetTester tester) async {
      await tester.runAsync(() async {
        await _buildDialog(tester, DialogTypeEnum.warning);
      });
    });

    testWidgets('Error dialog test', (WidgetTester tester) async {
      await tester.runAsync(() async {
        await _buildDialog(tester, DialogTypeEnum.error);
      });
    });

    testWidgets('No header dialog test', (WidgetTester tester) async {
      await tester.runAsync(() async {
        await _buildDialog(tester, DialogTypeEnum.noHeader);
      });
    });
  });
}

Future<void> _buildDialog(
    WidgetTester tester, DialogTypeEnum dialogType) async {
  await tester.pumpWidget(
    GetMaterialApp(
      home: Builder(
        builder: (context) => ElevatedButton(
          child: Text('Show dialog'),
          onPressed: () {
            AppDialog.instance.showAppDialog(
              context: context,
              dialogType: dialogType,
              title: 'Title',
              message: 'Message',
              onOkPressed: () {},
            );
          },
        ),
      ),
    ),
  );

  await tester.tap(find.text('Show dialog'));
  await tester.pumpAndSettle();

  expect(find.text('Title'), findsOneWidget);
  expect(find.text('Message'), findsOneWidget);
  expect(find.text('OK'), findsOneWidget);
}
