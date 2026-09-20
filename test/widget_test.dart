import 'package:flutter_test/flutter_test.dart';
import 'package:pahlawan_app/main.dart';

void main() {
  testWidgets('Memverifikasi judul dan elemen utama aplikasi Pahlawan Nasional',
      (WidgetTester tester) async {
    await tester.pumpWidget(const PahlawanApp());

    // Memverifikasi keberadaan teks judul utama pada header
    expect(find.textContaining('Pahlawan'), findsWidgets);
    expect(find.text('Ensiklopedia Sejarah RI'), findsOneWidget);
  });
}
