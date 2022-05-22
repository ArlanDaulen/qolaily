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

  _CreateProduct createProduct(
      String barcode,
      String name,
      String merchantId,
      int purchasePrice,
      int sellingPrice,
      int amount,
      String unitType,
      int categoryId) {
    return _CreateProduct(
      barcode,
      name,
      merchantId,
      purchasePrice,
      sellingPrice,
      amount,
      unitType,
      categoryId,
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
    required TResult Function(
            String barcode,
            String name,
            String merchantId,
            int purchasePrice,
            int sellingPrice,
            int amount,
            String unitType,
            int categoryId)
        createProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function(
            String barcode,
            String name,
            String merchantId,
            int purchasePrice,
            int sellingPrice,
            int amount,
            String unitType,
            int categoryId)?
        createProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function(
            String barcode,
            String name,
            String merchantId,
            int purchasePrice,
            int sellingPrice,
            int amount,
            String unitType,
            int categoryId)?
        createProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_CreateProduct value) createProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_CreateProduct value)? createProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_CreateProduct value)? createProduct,
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
    required TResult Function(
            String barcode,
            String name,
            String merchantId,
            int purchasePrice,
            int sellingPrice,
            int amount,
            String unitType,
            int categoryId)
        createProduct,
  }) {
    return login(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function(
            String barcode,
            String name,
            String merchantId,
            int purchasePrice,
            int sellingPrice,
            int amount,
            String unitType,
            int categoryId)?
        createProduct,
  }) {
    return login?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function(
            String barcode,
            String name,
            String merchantId,
            int purchasePrice,
            int sellingPrice,
            int amount,
            String unitType,
            int categoryId)?
        createProduct,
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
    required TResult Function(_CreateProduct value) createProduct,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_CreateProduct value)? createProduct,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_CreateProduct value)? createProduct,
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
abstract class _$CreateProductCopyWith<$Res> {
  factory _$CreateProductCopyWith(
          _CreateProduct value, $Res Function(_CreateProduct) then) =
      __$CreateProductCopyWithImpl<$Res>;
  $Res call(
      {String barcode,
      String name,
      String merchantId,
      int purchasePrice,
      int sellingPrice,
      int amount,
      String unitType,
      int categoryId});
}

/// @nodoc
class __$CreateProductCopyWithImpl<$Res>
    extends _$PlaceHolderClientCopyWithImpl<$Res>
    implements _$CreateProductCopyWith<$Res> {
  __$CreateProductCopyWithImpl(
      _CreateProduct _value, $Res Function(_CreateProduct) _then)
      : super(_value, (v) => _then(v as _CreateProduct));

  @override
  _CreateProduct get _value => super._value as _CreateProduct;

  @override
  $Res call({
    Object? barcode = freezed,
    Object? name = freezed,
    Object? merchantId = freezed,
    Object? purchasePrice = freezed,
    Object? sellingPrice = freezed,
    Object? amount = freezed,
    Object? unitType = freezed,
    Object? categoryId = freezed,
  }) {
    return _then(_CreateProduct(
      barcode == freezed
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      merchantId == freezed
          ? _value.merchantId
          : merchantId // ignore: cast_nullable_to_non_nullable
              as String,
      purchasePrice == freezed
          ? _value.purchasePrice
          : purchasePrice // ignore: cast_nullable_to_non_nullable
              as int,
      sellingPrice == freezed
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as int,
      amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      unitType == freezed
          ? _value.unitType
          : unitType // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_CreateProduct extends _CreateProduct {
  const _$_CreateProduct(
      this.barcode,
      this.name,
      this.merchantId,
      this.purchasePrice,
      this.sellingPrice,
      this.amount,
      this.unitType,
      this.categoryId)
      : super._();

  @override
  final String barcode;
  @override
  final String name;
  @override
  final String merchantId;
  @override
  final int purchasePrice;
  @override
  final int sellingPrice;
  @override
  final int amount;
  @override
  final String unitType;
  @override
  final int categoryId;

  @override
  String toString() {
    return 'PlaceHolderClient.createProduct(barcode: $barcode, name: $name, merchantId: $merchantId, purchasePrice: $purchasePrice, sellingPrice: $sellingPrice, amount: $amount, unitType: $unitType, categoryId: $categoryId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateProduct &&
            (identical(other.barcode, barcode) ||
                const DeepCollectionEquality()
                    .equals(other.barcode, barcode)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.merchantId, merchantId) ||
                const DeepCollectionEquality()
                    .equals(other.merchantId, merchantId)) &&
            (identical(other.purchasePrice, purchasePrice) ||
                const DeepCollectionEquality()
                    .equals(other.purchasePrice, purchasePrice)) &&
            (identical(other.sellingPrice, sellingPrice) ||
                const DeepCollectionEquality()
                    .equals(other.sellingPrice, sellingPrice)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.unitType, unitType) ||
                const DeepCollectionEquality()
                    .equals(other.unitType, unitType)) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(barcode) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(merchantId) ^
      const DeepCollectionEquality().hash(purchasePrice) ^
      const DeepCollectionEquality().hash(sellingPrice) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(unitType) ^
      const DeepCollectionEquality().hash(categoryId);

  @JsonKey(ignore: true)
  @override
  _$CreateProductCopyWith<_CreateProduct> get copyWith =>
      __$CreateProductCopyWithImpl<_CreateProduct>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) login,
    required TResult Function(
            String barcode,
            String name,
            String merchantId,
            int purchasePrice,
            int sellingPrice,
            int amount,
            String unitType,
            int categoryId)
        createProduct,
  }) {
    return createProduct(barcode, name, merchantId, purchasePrice, sellingPrice,
        amount, unitType, categoryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function(
            String barcode,
            String name,
            String merchantId,
            int purchasePrice,
            int sellingPrice,
            int amount,
            String unitType,
            int categoryId)?
        createProduct,
  }) {
    return createProduct?.call(barcode, name, merchantId, purchasePrice,
        sellingPrice, amount, unitType, categoryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function(
            String barcode,
            String name,
            String merchantId,
            int purchasePrice,
            int sellingPrice,
            int amount,
            String unitType,
            int categoryId)?
        createProduct,
    required TResult orElse(),
  }) {
    if (createProduct != null) {
      return createProduct(barcode, name, merchantId, purchasePrice,
          sellingPrice, amount, unitType, categoryId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_CreateProduct value) createProduct,
  }) {
    return createProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_CreateProduct value)? createProduct,
  }) {
    return createProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_CreateProduct value)? createProduct,
    required TResult orElse(),
  }) {
    if (createProduct != null) {
      return createProduct(this);
    }
    return orElse();
  }
}

abstract class _CreateProduct extends PlaceHolderClient {
  const factory _CreateProduct(
      String barcode,
      String name,
      String merchantId,
      int purchasePrice,
      int sellingPrice,
      int amount,
      String unitType,
      int categoryId) = _$_CreateProduct;
  const _CreateProduct._() : super._();

  String get barcode => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get merchantId => throw _privateConstructorUsedError;
  int get purchasePrice => throw _privateConstructorUsedError;
  int get sellingPrice => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  String get unitType => throw _privateConstructorUsedError;
  int get categoryId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CreateProductCopyWith<_CreateProduct> get copyWith =>
      throw _privateConstructorUsedError;
}
