import 'package:flutter_test/flutter_test.dart';
import 'package:my_app/main.dart';

void main() {
  testWidgets('Profile App displays correctly', (WidgetTester tester) async {
    await tester.pumpWidget(const ProfileApp());

    expect(find.text('My Profile'), findsOneWidget);
    expect(find.text('Xusni Nuur'), findsOneWidget);
    expect(find.text('Flutter Developer'), findsOneWidget);
    expect(find.text('Edit Profile'), findsOneWidget);
    expect(find.text('Email'), findsOneWidget);
    expect(find.text('Phone'), findsOneWidget);
    expect(find.text('Location'), findsOneWidget);
    expect(find.text('Education'), findsOneWidget);
  });
}
