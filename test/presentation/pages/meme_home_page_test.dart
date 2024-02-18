import 'package:flutter_memes_ttd_bloc/domain/usecases/get_memes.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks([GetMemes])
void main() {
  // final mockGetMemes = MockGetMemes();

  // GetIt.I.registerSingleton<GetMemes>(mockGetMemes);

  // setUpAll() {
  //   HttpOverrides.global = null;
  //   when(mockGetMemes.call(any))
  //       .thenAnswer((realInvocation) async => Right(mockListOfMemes));
  // }

  // testWidgets(
  //   "while pumping our home page we should render each widgets",
  //   (tester) async {
  //     await tester.pumpWidget(const MaterialApp(
  //       home: MemeHomePage(),
  //     ));
  //     await tester.pumpAndSettle();

  //     expect(find.byKey(centerWidkey), findsOneWidget);
  //   },
  // );
}
