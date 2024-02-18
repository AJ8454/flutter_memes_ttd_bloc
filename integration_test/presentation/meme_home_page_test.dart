import 'package:card_swiper/card_swiper.dart';
import 'package:flutter_memes_ttd_bloc/main.dart' as app;
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  group(
    'will test our app flow end to end',
    () async {
      testWidgets('our app should tap on meme card and go back and forward',
          (tester) async {
        app.main();
        await tester.pumpAndSettle();

        expect(find.byType(Swiper), findsOneWidget);

        Future.delayed(const Duration(seconds: 5));
      });
    },
  );
}
