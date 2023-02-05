// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'synchronize_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SynchronizeState {
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SynchronizeStateCopyWith<SynchronizeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SynchronizeStateCopyWith<$Res> {
  factory $SynchronizeStateCopyWith(
          SynchronizeState value, $Res Function(SynchronizeState) then) =
      _$SynchronizeStateCopyWithImpl<$Res, SynchronizeState>;
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class _$SynchronizeStateCopyWithImpl<$Res, $Val extends SynchronizeState>
    implements $SynchronizeStateCopyWith<$Res> {
  _$SynchronizeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SynchronizeStateCopyWith<$Res>
    implements $SynchronizeStateCopyWith<$Res> {
  factory _$$_SynchronizeStateCopyWith(
          _$_SynchronizeState value, $Res Function(_$_SynchronizeState) then) =
      __$$_SynchronizeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class __$$_SynchronizeStateCopyWithImpl<$Res>
    extends _$SynchronizeStateCopyWithImpl<$Res, _$_SynchronizeState>
    implements _$$_SynchronizeStateCopyWith<$Res> {
  __$$_SynchronizeStateCopyWithImpl(
      _$_SynchronizeState _value, $Res Function(_$_SynchronizeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_$_SynchronizeState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SynchronizeState implements _SynchronizeState {
  const _$_SynchronizeState({this.isLoading = false});

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'SynchronizeState(isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SynchronizeState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SynchronizeStateCopyWith<_$_SynchronizeState> get copyWith =>
      __$$_SynchronizeStateCopyWithImpl<_$_SynchronizeState>(this, _$identity);
}

abstract class _SynchronizeState implements SynchronizeState {
  const factory _SynchronizeState({final bool isLoading}) = _$_SynchronizeState;

  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_SynchronizeStateCopyWith<_$_SynchronizeState> get copyWith =>
      throw _privateConstructorUsedError;
}
