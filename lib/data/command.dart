import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../data/command.freezed.dart'; //tên file sẽ phát sinh ra code

@freezed
abstract class Command with _$Command {
  const factory Command.loading(String message) = Loading;

  const factory Command.error(String message) = Error;
}
