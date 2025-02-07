// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EmployeeDetailsState {
  EmployeeModel get employee => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmployeeModel employee) initial,
    required TResult Function(EmployeeModel employee) dirty,
    required TResult Function(EmployeeModel employee) saveInProgress,
    required TResult Function(EmployeeModel employee) saveSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EmployeeModel employee)? initial,
    TResult? Function(EmployeeModel employee)? dirty,
    TResult? Function(EmployeeModel employee)? saveInProgress,
    TResult? Function(EmployeeModel employee)? saveSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmployeeModel employee)? initial,
    TResult Function(EmployeeModel employee)? dirty,
    TResult Function(EmployeeModel employee)? saveInProgress,
    TResult Function(EmployeeModel employee)? saveSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Dirty value) dirty,
    required TResult Function(_SaveInProgress value) saveInProgress,
    required TResult Function(_SaveSuccess value) saveSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Dirty value)? dirty,
    TResult? Function(_SaveInProgress value)? saveInProgress,
    TResult? Function(_SaveSuccess value)? saveSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Dirty value)? dirty,
    TResult Function(_SaveInProgress value)? saveInProgress,
    TResult Function(_SaveSuccess value)? saveSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of EmployeeDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EmployeeDetailsStateCopyWith<EmployeeDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeDetailsStateCopyWith<$Res> {
  factory $EmployeeDetailsStateCopyWith(EmployeeDetailsState value,
          $Res Function(EmployeeDetailsState) then) =
      _$EmployeeDetailsStateCopyWithImpl<$Res, EmployeeDetailsState>;
  @useResult
  $Res call({EmployeeModel employee});

  $EmployeeModelCopyWith<$Res> get employee;
}

/// @nodoc
class _$EmployeeDetailsStateCopyWithImpl<$Res,
        $Val extends EmployeeDetailsState>
    implements $EmployeeDetailsStateCopyWith<$Res> {
  _$EmployeeDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmployeeDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employee = null,
  }) {
    return _then(_value.copyWith(
      employee: null == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as EmployeeModel,
    ) as $Val);
  }

  /// Create a copy of EmployeeDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EmployeeModelCopyWith<$Res> get employee {
    return $EmployeeModelCopyWith<$Res>(_value.employee, (value) {
      return _then(_value.copyWith(employee: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $EmployeeDetailsStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EmployeeModel employee});

  @override
  $EmployeeModelCopyWith<$Res> get employee;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$EmployeeDetailsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmployeeDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employee = null,
  }) {
    return _then(_$InitialImpl(
      employee: null == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as EmployeeModel,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl({required this.employee});

  @override
  final EmployeeModel employee;

  @override
  String toString() {
    return 'EmployeeDetailsState.initial(employee: $employee)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.employee, employee) ||
                other.employee == employee));
  }

  @override
  int get hashCode => Object.hash(runtimeType, employee);

  /// Create a copy of EmployeeDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmployeeModel employee) initial,
    required TResult Function(EmployeeModel employee) dirty,
    required TResult Function(EmployeeModel employee) saveInProgress,
    required TResult Function(EmployeeModel employee) saveSuccess,
  }) {
    return initial(employee);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EmployeeModel employee)? initial,
    TResult? Function(EmployeeModel employee)? dirty,
    TResult? Function(EmployeeModel employee)? saveInProgress,
    TResult? Function(EmployeeModel employee)? saveSuccess,
  }) {
    return initial?.call(employee);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmployeeModel employee)? initial,
    TResult Function(EmployeeModel employee)? dirty,
    TResult Function(EmployeeModel employee)? saveInProgress,
    TResult Function(EmployeeModel employee)? saveSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(employee);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Dirty value) dirty,
    required TResult Function(_SaveInProgress value) saveInProgress,
    required TResult Function(_SaveSuccess value) saveSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Dirty value)? dirty,
    TResult? Function(_SaveInProgress value)? saveInProgress,
    TResult? Function(_SaveSuccess value)? saveSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Dirty value)? dirty,
    TResult Function(_SaveInProgress value)? saveInProgress,
    TResult Function(_SaveSuccess value)? saveSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements EmployeeDetailsState {
  const factory _Initial({required final EmployeeModel employee}) =
      _$InitialImpl;

  @override
  EmployeeModel get employee;

  /// Create a copy of EmployeeDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DirtyImplCopyWith<$Res>
    implements $EmployeeDetailsStateCopyWith<$Res> {
  factory _$$DirtyImplCopyWith(
          _$DirtyImpl value, $Res Function(_$DirtyImpl) then) =
      __$$DirtyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EmployeeModel employee});

  @override
  $EmployeeModelCopyWith<$Res> get employee;
}

/// @nodoc
class __$$DirtyImplCopyWithImpl<$Res>
    extends _$EmployeeDetailsStateCopyWithImpl<$Res, _$DirtyImpl>
    implements _$$DirtyImplCopyWith<$Res> {
  __$$DirtyImplCopyWithImpl(
      _$DirtyImpl _value, $Res Function(_$DirtyImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmployeeDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employee = null,
  }) {
    return _then(_$DirtyImpl(
      employee: null == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as EmployeeModel,
    ));
  }
}

/// @nodoc

class _$DirtyImpl implements _Dirty {
  const _$DirtyImpl({required this.employee});

  @override
  final EmployeeModel employee;

  @override
  String toString() {
    return 'EmployeeDetailsState.dirty(employee: $employee)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DirtyImpl &&
            (identical(other.employee, employee) ||
                other.employee == employee));
  }

  @override
  int get hashCode => Object.hash(runtimeType, employee);

  /// Create a copy of EmployeeDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DirtyImplCopyWith<_$DirtyImpl> get copyWith =>
      __$$DirtyImplCopyWithImpl<_$DirtyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmployeeModel employee) initial,
    required TResult Function(EmployeeModel employee) dirty,
    required TResult Function(EmployeeModel employee) saveInProgress,
    required TResult Function(EmployeeModel employee) saveSuccess,
  }) {
    return dirty(employee);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EmployeeModel employee)? initial,
    TResult? Function(EmployeeModel employee)? dirty,
    TResult? Function(EmployeeModel employee)? saveInProgress,
    TResult? Function(EmployeeModel employee)? saveSuccess,
  }) {
    return dirty?.call(employee);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmployeeModel employee)? initial,
    TResult Function(EmployeeModel employee)? dirty,
    TResult Function(EmployeeModel employee)? saveInProgress,
    TResult Function(EmployeeModel employee)? saveSuccess,
    required TResult orElse(),
  }) {
    if (dirty != null) {
      return dirty(employee);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Dirty value) dirty,
    required TResult Function(_SaveInProgress value) saveInProgress,
    required TResult Function(_SaveSuccess value) saveSuccess,
  }) {
    return dirty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Dirty value)? dirty,
    TResult? Function(_SaveInProgress value)? saveInProgress,
    TResult? Function(_SaveSuccess value)? saveSuccess,
  }) {
    return dirty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Dirty value)? dirty,
    TResult Function(_SaveInProgress value)? saveInProgress,
    TResult Function(_SaveSuccess value)? saveSuccess,
    required TResult orElse(),
  }) {
    if (dirty != null) {
      return dirty(this);
    }
    return orElse();
  }
}

abstract class _Dirty implements EmployeeDetailsState {
  const factory _Dirty({required final EmployeeModel employee}) = _$DirtyImpl;

  @override
  EmployeeModel get employee;

  /// Create a copy of EmployeeDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DirtyImplCopyWith<_$DirtyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveInProgressImplCopyWith<$Res>
    implements $EmployeeDetailsStateCopyWith<$Res> {
  factory _$$SaveInProgressImplCopyWith(_$SaveInProgressImpl value,
          $Res Function(_$SaveInProgressImpl) then) =
      __$$SaveInProgressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EmployeeModel employee});

  @override
  $EmployeeModelCopyWith<$Res> get employee;
}

/// @nodoc
class __$$SaveInProgressImplCopyWithImpl<$Res>
    extends _$EmployeeDetailsStateCopyWithImpl<$Res, _$SaveInProgressImpl>
    implements _$$SaveInProgressImplCopyWith<$Res> {
  __$$SaveInProgressImplCopyWithImpl(
      _$SaveInProgressImpl _value, $Res Function(_$SaveInProgressImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmployeeDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employee = null,
  }) {
    return _then(_$SaveInProgressImpl(
      employee: null == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as EmployeeModel,
    ));
  }
}

/// @nodoc

class _$SaveInProgressImpl implements _SaveInProgress {
  const _$SaveInProgressImpl({required this.employee});

  @override
  final EmployeeModel employee;

  @override
  String toString() {
    return 'EmployeeDetailsState.saveInProgress(employee: $employee)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveInProgressImpl &&
            (identical(other.employee, employee) ||
                other.employee == employee));
  }

  @override
  int get hashCode => Object.hash(runtimeType, employee);

  /// Create a copy of EmployeeDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveInProgressImplCopyWith<_$SaveInProgressImpl> get copyWith =>
      __$$SaveInProgressImplCopyWithImpl<_$SaveInProgressImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmployeeModel employee) initial,
    required TResult Function(EmployeeModel employee) dirty,
    required TResult Function(EmployeeModel employee) saveInProgress,
    required TResult Function(EmployeeModel employee) saveSuccess,
  }) {
    return saveInProgress(employee);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EmployeeModel employee)? initial,
    TResult? Function(EmployeeModel employee)? dirty,
    TResult? Function(EmployeeModel employee)? saveInProgress,
    TResult? Function(EmployeeModel employee)? saveSuccess,
  }) {
    return saveInProgress?.call(employee);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmployeeModel employee)? initial,
    TResult Function(EmployeeModel employee)? dirty,
    TResult Function(EmployeeModel employee)? saveInProgress,
    TResult Function(EmployeeModel employee)? saveSuccess,
    required TResult orElse(),
  }) {
    if (saveInProgress != null) {
      return saveInProgress(employee);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Dirty value) dirty,
    required TResult Function(_SaveInProgress value) saveInProgress,
    required TResult Function(_SaveSuccess value) saveSuccess,
  }) {
    return saveInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Dirty value)? dirty,
    TResult? Function(_SaveInProgress value)? saveInProgress,
    TResult? Function(_SaveSuccess value)? saveSuccess,
  }) {
    return saveInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Dirty value)? dirty,
    TResult Function(_SaveInProgress value)? saveInProgress,
    TResult Function(_SaveSuccess value)? saveSuccess,
    required TResult orElse(),
  }) {
    if (saveInProgress != null) {
      return saveInProgress(this);
    }
    return orElse();
  }
}

abstract class _SaveInProgress implements EmployeeDetailsState {
  const factory _SaveInProgress({required final EmployeeModel employee}) =
      _$SaveInProgressImpl;

  @override
  EmployeeModel get employee;

  /// Create a copy of EmployeeDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SaveInProgressImplCopyWith<_$SaveInProgressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveSuccessImplCopyWith<$Res>
    implements $EmployeeDetailsStateCopyWith<$Res> {
  factory _$$SaveSuccessImplCopyWith(
          _$SaveSuccessImpl value, $Res Function(_$SaveSuccessImpl) then) =
      __$$SaveSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EmployeeModel employee});

  @override
  $EmployeeModelCopyWith<$Res> get employee;
}

/// @nodoc
class __$$SaveSuccessImplCopyWithImpl<$Res>
    extends _$EmployeeDetailsStateCopyWithImpl<$Res, _$SaveSuccessImpl>
    implements _$$SaveSuccessImplCopyWith<$Res> {
  __$$SaveSuccessImplCopyWithImpl(
      _$SaveSuccessImpl _value, $Res Function(_$SaveSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmployeeDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employee = null,
  }) {
    return _then(_$SaveSuccessImpl(
      employee: null == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as EmployeeModel,
    ));
  }
}

/// @nodoc

class _$SaveSuccessImpl implements _SaveSuccess {
  const _$SaveSuccessImpl({required this.employee});

  @override
  final EmployeeModel employee;

  @override
  String toString() {
    return 'EmployeeDetailsState.saveSuccess(employee: $employee)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveSuccessImpl &&
            (identical(other.employee, employee) ||
                other.employee == employee));
  }

  @override
  int get hashCode => Object.hash(runtimeType, employee);

  /// Create a copy of EmployeeDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveSuccessImplCopyWith<_$SaveSuccessImpl> get copyWith =>
      __$$SaveSuccessImplCopyWithImpl<_$SaveSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmployeeModel employee) initial,
    required TResult Function(EmployeeModel employee) dirty,
    required TResult Function(EmployeeModel employee) saveInProgress,
    required TResult Function(EmployeeModel employee) saveSuccess,
  }) {
    return saveSuccess(employee);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EmployeeModel employee)? initial,
    TResult? Function(EmployeeModel employee)? dirty,
    TResult? Function(EmployeeModel employee)? saveInProgress,
    TResult? Function(EmployeeModel employee)? saveSuccess,
  }) {
    return saveSuccess?.call(employee);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmployeeModel employee)? initial,
    TResult Function(EmployeeModel employee)? dirty,
    TResult Function(EmployeeModel employee)? saveInProgress,
    TResult Function(EmployeeModel employee)? saveSuccess,
    required TResult orElse(),
  }) {
    if (saveSuccess != null) {
      return saveSuccess(employee);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Dirty value) dirty,
    required TResult Function(_SaveInProgress value) saveInProgress,
    required TResult Function(_SaveSuccess value) saveSuccess,
  }) {
    return saveSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Dirty value)? dirty,
    TResult? Function(_SaveInProgress value)? saveInProgress,
    TResult? Function(_SaveSuccess value)? saveSuccess,
  }) {
    return saveSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Dirty value)? dirty,
    TResult Function(_SaveInProgress value)? saveInProgress,
    TResult Function(_SaveSuccess value)? saveSuccess,
    required TResult orElse(),
  }) {
    if (saveSuccess != null) {
      return saveSuccess(this);
    }
    return orElse();
  }
}

abstract class _SaveSuccess implements EmployeeDetailsState {
  const factory _SaveSuccess({required final EmployeeModel employee}) =
      _$SaveSuccessImpl;

  @override
  EmployeeModel get employee;

  /// Create a copy of EmployeeDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SaveSuccessImplCopyWith<_$SaveSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
