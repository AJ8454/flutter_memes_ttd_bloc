import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_memes_ttd_bloc/core/errors/failure.dart';
import 'package:flutter_memes_ttd_bloc/core/usecases/empty_params.dart';
import 'package:flutter_memes_ttd_bloc/domain/entities/memes.dart';
import 'package:flutter_memes_ttd_bloc/domain/usecases/get_memes.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_meme_bloc.freezed.dart';
part 'get_meme_event.dart';
part 'get_meme_state.dart';

class GetMemeBloc extends Bloc<GetMemeEvent, GetMemeState> {
  final GetMemes getMemes;
  GetMemeBloc({required this.getMemes}) : super(GetMemeState.initial()) {
    on<GetMemeEvent>(onGetMemeEvent);
  }

  FutureOr<void> onGetMemeEvent(event, emit) async {
    emit(state.copyWith(loading: true));
    final result = await getMemes(NoParams());
    result.fold(
      (l) => emit(state.copyWith(loading: false, failure: l)),
      (r) => emit(state.copyWith(loading: false, memes: r)),
    );
  }
}
