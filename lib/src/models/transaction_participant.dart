import 'package:json_annotation/json_annotation.dart';

part 'transaction_participant.g.dart';

@JsonSerializable()
class TransactionParticipant {
  final String? type;
  final String? alias;
  final String? displayName;
  final String? profilePictureUrl;

  TransactionParticipant({
    this.type,
    this.alias,
    this.displayName,
    this.profilePictureUrl,
  });

  factory TransactionParticipant.fromJson(Map<String, dynamic> json) =>
      _$TransactionParticipantFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionParticipantToJson(this);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is TransactionParticipant &&
        o.type == type &&
        o.alias == alias &&
        o.displayName == displayName &&
        o.profilePictureUrl == profilePictureUrl;
  }

  @override
  int get hashCode {
    return type.hashCode ^
        alias.hashCode ^
        displayName.hashCode ^
        profilePictureUrl.hashCode;
  }
}
