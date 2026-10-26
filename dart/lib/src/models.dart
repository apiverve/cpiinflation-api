/// Response models for the CPI Inflation API.

/// API Response wrapper.
class CpiinflationResponse {
  final String status;
  final dynamic error;
  final CpiinflationData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  CpiinflationResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory CpiinflationResponse.fromJson(Map<String, dynamic> json) => CpiinflationResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? CpiinflationData.fromJson(json['data']) : null,
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

/// Response data for the CPI Inflation API.

class CpiinflationData {
  String? yearMonth;
  num? year;
  num? month;
  String? category;
  num? index;
  num? yearOverYearChange;

  CpiinflationData({
    this.yearMonth,
    this.year,
    this.month,
    this.category,
    this.index,
    this.yearOverYearChange,
  });

  factory CpiinflationData.fromJson(Map<String, dynamic> json) => CpiinflationData(
      yearMonth: json['yearMonth'],
      year: json['year'],
      month: json['month'],
      category: json['category'],
      index: json['index'],
      yearOverYearChange: json['yearOverYearChange'],
    );
}

class CpiinflationRequest {
  String? date;
  String? category;

  CpiinflationRequest({
    this.date,
    this.category,
  });

  Map<String, dynamic> toJson() => {
      if (date != null) 'date': date,
      if (category != null) 'category': category,
    };
}
