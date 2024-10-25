import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:login_app/app.dart';
import 'package:user_repository/user_repository.dart';
import 'package:mockito/mockito.dart';

// Create a mock UserRepository
class MockUserRepository extends Mock implements UserRepository {}

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Create an instance of the mock UserRepository
    final mockUserRepository = MockUserRepository();

    // Pass the mockUserRepository to MyApp
    await tester.pumpWidget(MyApp(mockUserRepository));

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
