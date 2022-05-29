// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewsApiResponse _$NewsApiResponseFromJson(Map<String, dynamic> json) {
  return _NewsApiResonpse.fromJson(json);
}

/// @nodoc
mixin _$NewsApiResponse {
  String? get status => throw _privateConstructorUsedError;
  int? get totalResults => throw _privateConstructorUsedError;
  @JsonKey(name: 'articles')
  List<NewsDTO>? get news => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsApiResponseCopyWith<NewsApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsApiResponseCopyWith<$Res> {
  factory $NewsApiResponseCopyWith(
          NewsApiResponse value, $Res Function(NewsApiResponse) then) =
      _$NewsApiResponseCopyWithImpl<$Res>;
  $Res call(
      {String? status,
      int? totalResults,
      @JsonKey(name: 'articles') List<NewsDTO>? news});
}

/// @nodoc
class _$NewsApiResponseCopyWithImpl<$Res>
    implements $NewsApiResponseCopyWith<$Res> {
  _$NewsApiResponseCopyWithImpl(this._value, this._then);

  final NewsApiResponse _value;
  // ignore: unused_field
  final $Res Function(NewsApiResponse) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? totalResults = freezed,
    Object? news = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      totalResults: totalResults == freezed
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
      news: news == freezed
          ? _value.news
          : news // ignore: cast_nullable_to_non_nullable
              as List<NewsDTO>?,
    ));
  }
}

/// @nodoc
abstract class _$$_NewsApiResonpseCopyWith<$Res>
    implements $NewsApiResponseCopyWith<$Res> {
  factory _$$_NewsApiResonpseCopyWith(
          _$_NewsApiResonpse value, $Res Function(_$_NewsApiResonpse) then) =
      __$$_NewsApiResonpseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? status,
      int? totalResults,
      @JsonKey(name: 'articles') List<NewsDTO>? news});
}

/// @nodoc
class __$$_NewsApiResonpseCopyWithImpl<$Res>
    extends _$NewsApiResponseCopyWithImpl<$Res>
    implements _$$_NewsApiResonpseCopyWith<$Res> {
  __$$_NewsApiResonpseCopyWithImpl(
      _$_NewsApiResonpse _value, $Res Function(_$_NewsApiResonpse) _then)
      : super(_value, (v) => _then(v as _$_NewsApiResonpse));

  @override
  _$_NewsApiResonpse get _value => super._value as _$_NewsApiResonpse;

  @override
  $Res call({
    Object? status = freezed,
    Object? totalResults = freezed,
    Object? news = freezed,
  }) {
    return _then(_$_NewsApiResonpse(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      totalResults == freezed
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
      news == freezed
          ? _value._news
          : news // ignore: cast_nullable_to_non_nullable
              as List<NewsDTO>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewsApiResonpse implements _NewsApiResonpse {
  const _$_NewsApiResonpse(this.status, this.totalResults,
      @JsonKey(name: 'articles') final List<NewsDTO>? news)
      : _news = news;

  factory _$_NewsApiResonpse.fromJson(Map<String, dynamic> json) =>
      _$$_NewsApiResonpseFromJson(json);

  @override
  final String? status;
  @override
  final int? totalResults;
  final List<NewsDTO>? _news;
  @override
  @JsonKey(name: 'articles')
  List<NewsDTO>? get news {
    final value = _news;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'NewsApiResponse(status: $status, totalResults: $totalResults, news: $news)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewsApiResonpse &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.totalResults, totalResults) &&
            const DeepCollectionEquality().equals(other._news, _news));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(totalResults),
      const DeepCollectionEquality().hash(_news));

  @JsonKey(ignore: true)
  @override
  _$$_NewsApiResonpseCopyWith<_$_NewsApiResonpse> get copyWith =>
      __$$_NewsApiResonpseCopyWithImpl<_$_NewsApiResonpse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewsApiResonpseToJson(this);
  }
}

abstract class _NewsApiResonpse implements NewsApiResponse {
  const factory _NewsApiResonpse(final String? status, final int? totalResults,
          @JsonKey(name: 'articles') final List<NewsDTO>? news) =
      _$_NewsApiResonpse;

  factory _NewsApiResonpse.fromJson(Map<String, dynamic> json) =
      _$_NewsApiResonpse.fromJson;

  @override
  String? get status => throw _privateConstructorUsedError;
  @override
  int? get totalResults => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'articles')
  List<NewsDTO>? get news => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_NewsApiResonpseCopyWith<_$_NewsApiResonpse> get copyWith =>
      throw _privateConstructorUsedError;
}
