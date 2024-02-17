// To parse this JSON data, do
//
//     final memeModel = memeModelFromJson(jsonString);

import 'dart:convert';

import 'package:flutter_memes_ttd_bloc/domain/entities/memes.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'meme_model.freezed.dart';
part 'meme_model.g.dart';

List<MemeModel> listMemeModelFromJson(String str) =>
    List<MemeModel>.from(json.decode(str).map((x) => MemeModel.fromJson(x)));

String listMemeModelToJson(List<dynamic> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

MemeModel memeModelFromJson(String str) => MemeModel.fromJson(json.decode(str));

String memeModelToJson(MemeModel data) => json.encode(data.toJson());

@freezed
class MemeModel extends Meme with _$MemeModel {
  const factory MemeModel({
    String? id,
    String? name,
    String? url,
    int? width,
    int? height,
    @JsonKey(name: 'box_count') int? boxCount,
  }) = _MemeModel;

  factory MemeModel.fromJson(Map<String, dynamic> json) =>
      _$MemeModelFromJson(json);
}
