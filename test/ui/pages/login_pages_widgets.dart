import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:fordev/ui/pages/pages.dart';

class LoginPresenterSpy extends Mock implements LoginPresenter{}

void main() {

  LoginPresenter presenter;
  
  setUp((){
    presenter = LoginPresenterSpy();
  });

  Future<void> loadPage(WidgetTester tester) async {
    final loginPage = MaterialApp(home: LoginPage(presenter));
    await tester.pumpWidget(loginPage);
  }

  testWidgets(
    'Should load with correct initial state',
    (WidgetTester tester) async {
      
      await loadPage(tester);

      final emailTextChildren = find.descendant(
          of: find.bySemanticsLabel('Email'), matching: find.byType(Text));
      expect(
        emailTextChildren,
        findsOneWidget,
        reason: 'when a TextFormField has only one text field, means it has no errors, since one of the childs is always the hint text'
      );

      final passwordTextChildren = find.descendant(
          of: find.bySemanticsLabel('Senha'), matching: find.byType(Text));
      expect(
        passwordTextChildren,
        findsOneWidget,
        reason: 'when a TextFormField has only one text field, means it has no errors, since one of the childs is always the hint text'
      );

      // ignore: deprecated_member_use
      final button = tester.widget<RaisedButton>(find.byType(RaisedButton));
      expect(button.onPressed, null);
    },
  );

  testWidgets(
    'Should call validate with corrects values',
    (WidgetTester tester) async {

      await loadPage(tester);

      final email = "";//faker.internet.email();
      await tester.enterText(find.bySemanticsLabel('Email'), email);

      verify(presenter.validateEmail(email));
    },
  );
}
