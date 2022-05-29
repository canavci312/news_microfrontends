// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'comment_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommentList _$CommentListFromJson(Map<String, dynamic> json) {
  return _CommentList.fromJson(json);
}

/// @nodoc
mixin _$CommentList {
  List<Comment> get comment => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentListCopyWith<CommentList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentListCopyWith<$Res> {
  factory $CommentListCopyWith(
          CommentList value, $Res Function(CommentList) then) =
      _$CommentListCopyWithImpl<$Res>;
  $Res call({List<Comment> comment, String url});
}

/// @nodoc
class _$CommentListCopyWithImpl<$Res> implements $CommentListCopyWith<$Res> {
  _$CommentListCopyWithImpl(this._value, this._then);

  final CommentList _value;
  // ignore: unused_field
  final $Res Function(CommentList) _then;

  @override
  $Res call({
    Object? comment = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_CommentListCopyWith<$Res>
    implements $CommentListCopyWith<$Res> {
  factory _$$_CommentListCopyWith(
          _$_CommentList value, $Res Function(_$_CommentList) then) =
      __$$_CommentListCopyWithImpl<$Res>;
  @override
  $Res call({List<Comment> comment, String url});
}

/// @nodoc
class __$$_CommentListCopyWithImpl<$Res> extends _$CommentListCopyWithImpl<$Res>
    implements _$$_CommentListCopyWith<$Res> {
  __$$_CommentListCopyWithImpl(
      _$_CommentList _value, $Res Function(_$_CommentList) _then)
      : super(_value, (v) => _then(v as _$_CommentList));

  @override
  _$_CommentList get _value => super._value as _$_CommentList;

  @override
  $Res call({
    Object? comment = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_CommentList(
      comment: comment == freezed
          ? _value._comment
          : comment // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CommentList implements _CommentList {
  const _$_CommentList(
      {required final List<Comment> comment, required this.url})
      : _comment = comment;

  factory _$_CommentList.fromJson(Map<String, dynamic> json) =>
      _$$_CommentListFromJson(json);

  final List<Comment> _comment;
  @override
  List<Comment> get comment {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comment);
  }

  @override
  final String url;

  @override
  String toString() {
    return 'CommentList(comment: $comment, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommentList &&
            const DeepCollectionEquality().equals(other._comment, _comment) &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_comment),
      const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$$_CommentListCopyWith<_$_CommentList> get copyWith =>
      __$$_CommentListCopyWithImpl<_$_CommentList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommentListToJson(this);
  }
}

abstract class _CommentList implements CommentList {
  const factory _CommentList(
      {required final List<Comment> comment,
      required final String url}) = _$_CommentList;

  factory _CommentList.fromJson(Map<String, dynamic> json) =
      _$_CommentList.fromJson;

  @override
  List<Comment> get comment => throw _privateConstructorUsedError;
  @override
  String get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CommentListCopyWith<_$_CommentList> get copyWith =>
      throw _privateConstructorUsedError;
}
