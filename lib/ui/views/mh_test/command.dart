import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'command.freezed.dart'; //tên file sẽ phát sinh ra code

@freezed
abstract class Command with _$Command {
  const factory Command.loading() = Loading;
  const factory Command.response() = Response;
  const factory Command.error(String message) = Error;
}
