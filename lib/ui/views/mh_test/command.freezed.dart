// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'command.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CommandTearOff {
  const _$CommandTearOff();

// ignore: unused_element
  Loading loading() {
    return const Loading();
  }

// ignore: unused_element
  Response response() {
    return const Response();
  }

// ignore: unused_element
  Error error(String message) {
    return Error(
      message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Command = _$CommandTearOff();

/// @nodoc
mixin _$Command {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult response(),
    @required TResult error(String message),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult response(),
    TResult error(String message),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(Loading value),
    @required TResult response(Response value),
    @required TResult error(Error value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(Loading value),
    TResult response(Response value),
    TResult error(Error value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $CommandCopyWith<$Res> {
  factory $CommandCopyWith(Command value, $Res Function(Command) then) =
      _$CommandCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommandCopyWithImpl<$Res> implements $CommandCopyWith<$Res> {
  _$CommandCopyWithImpl(this._value, this._then);

  final Command _value;
  // ignore: unused_field
  final $Res Function(Command) _then;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$CommandCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

/// @nodoc
class _$Loading with DiagnosticableTreeMixin implements Loading {
  const _$Loading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Command.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'Command.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult response(),
    @required TResult error(String message),
  }) {
    assert(loading != null);
    assert(response != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult response(),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(Loading value),
    @required TResult response(Response value),
    @required TResult error(Error value),
  }) {
    assert(loading != null);
    assert(response != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(Loading value),
    TResult response(Response value),
    TResult error(Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements Command {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $ResponseCopyWith<$Res> {
  factory $ResponseCopyWith(Response value, $Res Function(Response) then) =
      _$ResponseCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResponseCopyWithImpl<$Res> extends _$CommandCopyWithImpl<$Res>
    implements $ResponseCopyWith<$Res> {
  _$ResponseCopyWithImpl(Response _value, $Res Function(Response) _then)
      : super(_value, (v) => _then(v as Response));

  @override
  Response get _value => super._value as Response;
}

/// @nodoc
class _$Response with DiagnosticableTreeMixin implements Response {
  const _$Response();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Command.response()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'Command.response'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Response);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult response(),
    @required TResult error(String message),
  }) {
    assert(loading != null);
    assert(response != null);
    assert(error != null);
    return response();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult response(),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (response != null) {
      return response();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(Loading value),
    @required TResult response(Response value),
    @required TResult error(Error value),
  }) {
    assert(loading != null);
    assert(response != null);
    assert(error != null);
    return response(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(Loading value),
    TResult response(Response value),
    TResult error(Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (response != null) {
      return response(this);
    }
    return orElse();
  }
}

abstract class Response implements Command {
  const factory Response() = _$Response;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$CommandCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(Error(
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$Error with DiagnosticableTreeMixin implements Error {
  const _$Error(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Command.error(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Command.error'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Error &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult response(),
    @required TResult error(String message),
  }) {
    assert(loading != null);
    assert(response != null);
    assert(error != null);
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult response(),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(Loading value),
    @required TResult response(Response value),
    @required TResult error(Error value),
  }) {
    assert(loading != null);
    assert(response != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(Loading value),
    TResult response(Response value),
    TResult error(Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements Command {
  const factory Error(String message) = _$Error;

  String get message;
  $ErrorCopyWith<Error> get copyWith;
}
