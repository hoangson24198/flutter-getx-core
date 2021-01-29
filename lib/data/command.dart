import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icomax/data/network/model/response_user.dart';

part 'command.freezed.dart'; //tên file sẽ phát sinh ra code

@freezed
abstract class Command with _$Command {

  const factory Command.loading(String message) = Loading;

  const factory Command.error(String message) = Error;

  const factory Command.success([ResponseUser data]) = Success;
}
