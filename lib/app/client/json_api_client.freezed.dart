// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'json_api_client.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PlaceHolderClientTearOff {
  const _$PlaceHolderClientTearOff();

  _Login login(String email, String password) {
    return _Login(
      email,
      password,
    );
  }

  _FilterProduct filterProduct() {
    return const _FilterProduct();
  }

  _FilterWaybill filterWaybill() {
    return const _FilterWaybill();
  }

  _CreateWaybill createWaybill() {
    return const _CreateWaybill();
  }

  _AddProductToWaybill addProductToWaybill(Map<String, dynamic> data) {
    return _AddProductToWaybill(
      data,
    );
  }
}

/// @nodoc
const $PlaceHolderClient = _$PlaceHolderClientTearOff();

/// @nodoc
mixin _$PlaceHolderClient {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) login,
    required TResult Function() filterProduct,
    required TResult Function() filterWaybill,
    required TResult Function() createWaybill,
    required TResult Function(Map<String, dynamic> data) addProductToWaybill,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function()? filterProduct,
    TResult Function()? filterWaybill,
    TResult Function()? createWaybill,
    TResult Function(Map<String, dynamic> data)? addProductToWaybill,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function()? filterProduct,
    TResult Function()? filterWaybill,
    TResult Function()? createWaybill,
    TResult Function(Map<String, dynamic> data)? addProductToWaybill,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_FilterProduct value) filterProduct,
    required TResult Function(_FilterWaybill value) filterWaybill,
    required TResult Function(_CreateWaybill value) createWaybill,
    required TResult Function(_AddProductToWaybill value) addProductToWaybill,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_FilterProduct value)? filterProduct,
    TResult Function(_FilterWaybill value)? filterWaybill,
    TResult Function(_CreateWaybill value)? createWaybill,
    TResult Function(_AddProductToWaybill value)? addProductToWaybill,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_FilterProduct value)? filterProduct,
    TResult Function(_FilterWaybill value)? filterWaybill,
    TResult Function(_CreateWaybill value)? createWaybill,
    TResult Function(_AddProductToWaybill value)? addProductToWaybill,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceHolderClientCopyWith<$Res> {
  factory $PlaceHolderClientCopyWith(
          PlaceHolderClient value, $Res Function(PlaceHolderClient) then) =
      _$PlaceHolderClientCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlaceHolderClientCopyWithImpl<$Res>
    implements $PlaceHolderClientCopyWith<$Res> {
  _$PlaceHolderClientCopyWithImpl(this._value, this._then);

  final PlaceHolderClient _value;
  // ignore: unused_field
  final $Res Function(PlaceHolderClient) _then;
}

/// @nodoc
abstract class _$LoginCopyWith<$Res> {
  factory _$LoginCopyWith(_Login value, $Res Function(_Login) then) =
      __$LoginCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class __$LoginCopyWithImpl<$Res> extends _$PlaceHolderClientCopyWithImpl<$Res>
    implements _$LoginCopyWith<$Res> {
  __$LoginCopyWithImpl(_Login _value, $Res Function(_Login) _then)
      : super(_value, (v) => _then(v as _Login));

  @override
  _Login get _value => super._value as _Login;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_Login(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Login extends _Login {
  const _$_Login(this.email, this.password) : super._();

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'PlaceHolderClient.login(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Login &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$LoginCopyWith<_Login> get copyWith =>
      __$LoginCopyWithImpl<_Login>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) login,
    required TResult Function() filterProduct,
    required TResult Function() filterWaybill,
    required TResult Function() createWaybill,
    required TResult Function(Map<String, dynamic> data) addProductToWaybill,
  }) {
    return login(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function()? filterProduct,
    TResult Function()? filterWaybill,
    TResult Function()? createWaybill,
    TResult Function(Map<String, dynamic> data)? addProductToWaybill,
  }) {
    return login?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function()? filterProduct,
    TResult Function()? filterWaybill,
    TResult Function()? createWaybill,
    TResult Function(Map<String, dynamic> data)? addProductToWaybill,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_FilterProduct value) filterProduct,
    required TResult Function(_FilterWaybill value) filterWaybill,
    required TResult Function(_CreateWaybill value) createWaybill,
    required TResult Function(_AddProductToWaybill value) addProductToWaybill,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_FilterProduct value)? filterProduct,
    TResult Function(_FilterWaybill value)? filterWaybill,
    TResult Function(_CreateWaybill value)? createWaybill,
    TResult Function(_AddProductToWaybill value)? addProductToWaybill,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_FilterProduct value)? filterProduct,
    TResult Function(_FilterWaybill value)? filterWaybill,
    TResult Function(_CreateWaybill value)? createWaybill,
    TResult Function(_AddProductToWaybill value)? addProductToWaybill,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login extends PlaceHolderClient {
  const factory _Login(String email, String password) = _$_Login;
  const _Login._() : super._();

  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoginCopyWith<_Login> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FilterProductCopyWith<$Res> {
  factory _$FilterProductCopyWith(
          _FilterProduct value, $Res Function(_FilterProduct) then) =
      __$FilterProductCopyWithImpl<$Res>;
}

/// @nodoc
class __$FilterProductCopyWithImpl<$Res>
    extends _$PlaceHolderClientCopyWithImpl<$Res>
    implements _$FilterProductCopyWith<$Res> {
  __$FilterProductCopyWithImpl(
      _FilterProduct _value, $Res Function(_FilterProduct) _then)
      : super(_value, (v) => _then(v as _FilterProduct));

  @override
  _FilterProduct get _value => super._value as _FilterProduct;
}

/// @nodoc

class _$_FilterProduct extends _FilterProduct {
  const _$_FilterProduct() : super._();

  @override
  String toString() {
    return 'PlaceHolderClient.filterProduct()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FilterProduct);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) login,
    required TResult Function() filterProduct,
    required TResult Function() filterWaybill,
    required TResult Function() createWaybill,
    required TResult Function(Map<String, dynamic> data) addProductToWaybill,
  }) {
    return filterProduct();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function()? filterProduct,
    TResult Function()? filterWaybill,
    TResult Function()? createWaybill,
    TResult Function(Map<String, dynamic> data)? addProductToWaybill,
  }) {
    return filterProduct?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function()? filterProduct,
    TResult Function()? filterWaybill,
    TResult Function()? createWaybill,
    TResult Function(Map<String, dynamic> data)? addProductToWaybill,
    required TResult orElse(),
  }) {
    if (filterProduct != null) {
      return filterProduct();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_FilterProduct value) filterProduct,
    required TResult Function(_FilterWaybill value) filterWaybill,
    required TResult Function(_CreateWaybill value) createWaybill,
    required TResult Function(_AddProductToWaybill value) addProductToWaybill,
  }) {
    return filterProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_FilterProduct value)? filterProduct,
    TResult Function(_FilterWaybill value)? filterWaybill,
    TResult Function(_CreateWaybill value)? createWaybill,
    TResult Function(_AddProductToWaybill value)? addProductToWaybill,
  }) {
    return filterProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_FilterProduct value)? filterProduct,
    TResult Function(_FilterWaybill value)? filterWaybill,
    TResult Function(_CreateWaybill value)? createWaybill,
    TResult Function(_AddProductToWaybill value)? addProductToWaybill,
    required TResult orElse(),
  }) {
    if (filterProduct != null) {
      return filterProduct(this);
    }
    return orElse();
  }
}

abstract class _FilterProduct extends PlaceHolderClient {
  const factory _FilterProduct() = _$_FilterProduct;
  const _FilterProduct._() : super._();
}

/// @nodoc
abstract class _$FilterWaybillCopyWith<$Res> {
  factory _$FilterWaybillCopyWith(
          _FilterWaybill value, $Res Function(_FilterWaybill) then) =
      __$FilterWaybillCopyWithImpl<$Res>;
}

/// @nodoc
class __$FilterWaybillCopyWithImpl<$Res>
    extends _$PlaceHolderClientCopyWithImpl<$Res>
    implements _$FilterWaybillCopyWith<$Res> {
  __$FilterWaybillCopyWithImpl(
      _FilterWaybill _value, $Res Function(_FilterWaybill) _then)
      : super(_value, (v) => _then(v as _FilterWaybill));

  @override
  _FilterWaybill get _value => super._value as _FilterWaybill;
}

/// @nodoc

class _$_FilterWaybill extends _FilterWaybill {
  const _$_FilterWaybill() : super._();

  @override
  String toString() {
    return 'PlaceHolderClient.filterWaybill()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FilterWaybill);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) login,
    required TResult Function() filterProduct,
    required TResult Function() filterWaybill,
    required TResult Function() createWaybill,
    required TResult Function(Map<String, dynamic> data) addProductToWaybill,
  }) {
    return filterWaybill();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function()? filterProduct,
    TResult Function()? filterWaybill,
    TResult Function()? createWaybill,
    TResult Function(Map<String, dynamic> data)? addProductToWaybill,
  }) {
    return filterWaybill?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function()? filterProduct,
    TResult Function()? filterWaybill,
    TResult Function()? createWaybill,
    TResult Function(Map<String, dynamic> data)? addProductToWaybill,
    required TResult orElse(),
  }) {
    if (filterWaybill != null) {
      return filterWaybill();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_FilterProduct value) filterProduct,
    required TResult Function(_FilterWaybill value) filterWaybill,
    required TResult Function(_CreateWaybill value) createWaybill,
    required TResult Function(_AddProductToWaybill value) addProductToWaybill,
  }) {
    return filterWaybill(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_FilterProduct value)? filterProduct,
    TResult Function(_FilterWaybill value)? filterWaybill,
    TResult Function(_CreateWaybill value)? createWaybill,
    TResult Function(_AddProductToWaybill value)? addProductToWaybill,
  }) {
    return filterWaybill?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_FilterProduct value)? filterProduct,
    TResult Function(_FilterWaybill value)? filterWaybill,
    TResult Function(_CreateWaybill value)? createWaybill,
    TResult Function(_AddProductToWaybill value)? addProductToWaybill,
    required TResult orElse(),
  }) {
    if (filterWaybill != null) {
      return filterWaybill(this);
    }
    return orElse();
  }
}

abstract class _FilterWaybill extends PlaceHolderClient {
  const factory _FilterWaybill() = _$_FilterWaybill;
  const _FilterWaybill._() : super._();
}

/// @nodoc
abstract class _$CreateWaybillCopyWith<$Res> {
  factory _$CreateWaybillCopyWith(
          _CreateWaybill value, $Res Function(_CreateWaybill) then) =
      __$CreateWaybillCopyWithImpl<$Res>;
}

/// @nodoc
class __$CreateWaybillCopyWithImpl<$Res>
    extends _$PlaceHolderClientCopyWithImpl<$Res>
    implements _$CreateWaybillCopyWith<$Res> {
  __$CreateWaybillCopyWithImpl(
      _CreateWaybill _value, $Res Function(_CreateWaybill) _then)
      : super(_value, (v) => _then(v as _CreateWaybill));

  @override
  _CreateWaybill get _value => super._value as _CreateWaybill;
}

/// @nodoc

class _$_CreateWaybill extends _CreateWaybill {
  const _$_CreateWaybill() : super._();

  @override
  String toString() {
    return 'PlaceHolderClient.createWaybill()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CreateWaybill);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) login,
    required TResult Function() filterProduct,
    required TResult Function() filterWaybill,
    required TResult Function() createWaybill,
    required TResult Function(Map<String, dynamic> data) addProductToWaybill,
  }) {
    return createWaybill();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function()? filterProduct,
    TResult Function()? filterWaybill,
    TResult Function()? createWaybill,
    TResult Function(Map<String, dynamic> data)? addProductToWaybill,
  }) {
    return createWaybill?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function()? filterProduct,
    TResult Function()? filterWaybill,
    TResult Function()? createWaybill,
    TResult Function(Map<String, dynamic> data)? addProductToWaybill,
    required TResult orElse(),
  }) {
    if (createWaybill != null) {
      return createWaybill();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_FilterProduct value) filterProduct,
    required TResult Function(_FilterWaybill value) filterWaybill,
    required TResult Function(_CreateWaybill value) createWaybill,
    required TResult Function(_AddProductToWaybill value) addProductToWaybill,
  }) {
    return createWaybill(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_FilterProduct value)? filterProduct,
    TResult Function(_FilterWaybill value)? filterWaybill,
    TResult Function(_CreateWaybill value)? createWaybill,
    TResult Function(_AddProductToWaybill value)? addProductToWaybill,
  }) {
    return createWaybill?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_FilterProduct value)? filterProduct,
    TResult Function(_FilterWaybill value)? filterWaybill,
    TResult Function(_CreateWaybill value)? createWaybill,
    TResult Function(_AddProductToWaybill value)? addProductToWaybill,
    required TResult orElse(),
  }) {
    if (createWaybill != null) {
      return createWaybill(this);
    }
    return orElse();
  }
}

abstract class _CreateWaybill extends PlaceHolderClient {
  const factory _CreateWaybill() = _$_CreateWaybill;
  const _CreateWaybill._() : super._();
}

/// @nodoc
abstract class _$AddProductToWaybillCopyWith<$Res> {
  factory _$AddProductToWaybillCopyWith(_AddProductToWaybill value,
          $Res Function(_AddProductToWaybill) then) =
      __$AddProductToWaybillCopyWithImpl<$Res>;
  $Res call({Map<String, dynamic> data});
}

/// @nodoc
class __$AddProductToWaybillCopyWithImpl<$Res>
    extends _$PlaceHolderClientCopyWithImpl<$Res>
    implements _$AddProductToWaybillCopyWith<$Res> {
  __$AddProductToWaybillCopyWithImpl(
      _AddProductToWaybill _value, $Res Function(_AddProductToWaybill) _then)
      : super(_value, (v) => _then(v as _AddProductToWaybill));

  @override
  _AddProductToWaybill get _value => super._value as _AddProductToWaybill;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_AddProductToWaybill(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$_AddProductToWaybill extends _AddProductToWaybill {
  const _$_AddProductToWaybill(this.data) : super._();

  @override
  final Map<String, dynamic> data;

  @override
  String toString() {
    return 'PlaceHolderClient.addProductToWaybill(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddProductToWaybill &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$AddProductToWaybillCopyWith<_AddProductToWaybill> get copyWith =>
      __$AddProductToWaybillCopyWithImpl<_AddProductToWaybill>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) login,
    required TResult Function() filterProduct,
    required TResult Function() filterWaybill,
    required TResult Function() createWaybill,
    required TResult Function(Map<String, dynamic> data) addProductToWaybill,
  }) {
    return addProductToWaybill(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function()? filterProduct,
    TResult Function()? filterWaybill,
    TResult Function()? createWaybill,
    TResult Function(Map<String, dynamic> data)? addProductToWaybill,
  }) {
    return addProductToWaybill?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function()? filterProduct,
    TResult Function()? filterWaybill,
    TResult Function()? createWaybill,
    TResult Function(Map<String, dynamic> data)? addProductToWaybill,
    required TResult orElse(),
  }) {
    if (addProductToWaybill != null) {
      return addProductToWaybill(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_FilterProduct value) filterProduct,
    required TResult Function(_FilterWaybill value) filterWaybill,
    required TResult Function(_CreateWaybill value) createWaybill,
    required TResult Function(_AddProductToWaybill value) addProductToWaybill,
  }) {
    return addProductToWaybill(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_FilterProduct value)? filterProduct,
    TResult Function(_FilterWaybill value)? filterWaybill,
    TResult Function(_CreateWaybill value)? createWaybill,
    TResult Function(_AddProductToWaybill value)? addProductToWaybill,
  }) {
    return addProductToWaybill?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_FilterProduct value)? filterProduct,
    TResult Function(_FilterWaybill value)? filterWaybill,
    TResult Function(_CreateWaybill value)? createWaybill,
    TResult Function(_AddProductToWaybill value)? addProductToWaybill,
    required TResult orElse(),
  }) {
    if (addProductToWaybill != null) {
      return addProductToWaybill(this);
    }
    return orElse();
  }
}

abstract class _AddProductToWaybill extends PlaceHolderClient {
  const factory _AddProductToWaybill(Map<String, dynamic> data) =
      _$_AddProductToWaybill;
  const _AddProductToWaybill._() : super._();

  Map<String, dynamic> get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AddProductToWaybillCopyWith<_AddProductToWaybill> get copyWith =>
      throw _privateConstructorUsedError;
}
