/// Response models for the Levenshtein Distance API.

/// API Response wrapper.
class LevenshteindistanceResponse {
  final String status;
  final dynamic error;
  final LevenshteindistanceData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  LevenshteindistanceResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory LevenshteindistanceResponse.fromJson(Map<String, dynamic> json) => LevenshteindistanceResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? LevenshteindistanceData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Levenshtein Distance API.

class LevenshteindistanceData {
  num? distance;
  num? similarity;
  String? matchLevel;
  num? string1Length;
  num? string2Length;
  String? string1;
  String? string2;

  LevenshteindistanceData({
    this.distance,
    this.similarity,
    this.matchLevel,
    this.string1Length,
    this.string2Length,
    this.string1,
    this.string2,
  });

  factory LevenshteindistanceData.fromJson(Map<String, dynamic> json) => LevenshteindistanceData(
      distance: json['distance'],
      similarity: json['similarity'],
      matchLevel: json['matchLevel'],
      string1Length: json['string1Length'],
      string2Length: json['string2Length'],
      string1: json['string1'],
      string2: json['string2'],
    );
}

class LevenshteindistanceRequest {
  String string1;
  String string2;

  LevenshteindistanceRequest({
    required this.string1,
    required this.string2,
  });

  Map<String, dynamic> toJson() => {
      'string1': string1,
      'string2': string2,
    };
}
