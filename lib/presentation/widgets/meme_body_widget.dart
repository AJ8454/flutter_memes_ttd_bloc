import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_memes_ttd_bloc/domain/entities/memes.dart';

class MemeBodyWidget extends StatelessWidget {
  final List<Meme>? memes;

  const MemeBodyWidget({super.key, required this.memes});

  @override
  Widget build(BuildContext context) {
    return Swiper(
      itemBuilder: (BuildContext context, int index) {
        final meme = memes![index];
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              meme.url ?? "https://via.placeholder.com/350x150",
              fit: BoxFit.fitWidth,
            ),
            const SizedBox(height: 20),
            Text(meme.name ?? ""),
          ],
        );
      },
      itemCount: memes!.length,
      control: const SwiperControl(),
    );
  }
}
