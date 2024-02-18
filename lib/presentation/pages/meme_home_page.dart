import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_memes_ttd_bloc/core/injector/injector.dart';
import 'package:flutter_memes_ttd_bloc/domain/usecases/get_memes.dart';
import 'package:flutter_memes_ttd_bloc/presentation/bloc/get_meme_bloc.dart';
import 'package:flutter_memes_ttd_bloc/presentation/widgets/meme_body_widget.dart';

const centerWidkey = Key("center_Widkey");

class MemeHomePage extends StatefulWidget {
  const MemeHomePage({super.key});

  @override
  State<MemeHomePage> createState() => _MemeHomePageState();
}

class _MemeHomePageState extends State<MemeHomePage> {
  late GetMemeBloc _getMemeBloc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        key: centerWidkey,
        child: BlocProvider(
          create: (context) => _getMemeBloc,
          child:
              BlocBuilder<GetMemeBloc, GetMemeState>(builder: (context, state) {
            if (state.loading) {
              return const CircularProgressIndicator();
            } else if (state.failure != null) {
              return Text("Error : ${state.failure?.message}");
            } else {
              if (state.memes == null || state.memes!.isEmpty) {
                return const Text("No Data ");
              } else {
                return MemeBodyWidget(memes: state.memes ?? []);
              }
            }
          }),
        ),
      ),
    );
  }

  @override
  void initState() {
    _getMemeBloc = GetMemeBloc(getMemes: getIt<GetMemes>());
    _getMemeBloc.add(const GetMemeEvent.getMemes());
    super.initState();
  }
}
