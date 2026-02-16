/// Response models for the CPI Inflation API.

/// API Response wrapper.
class CpiinflationResponse {
  final String status;
  final dynamic error;
  final CpiinflationData? data;

  CpiinflationResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory CpiinflationResponse.fromJson(Map<String, dynamic> json) => CpiinflationResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? CpiinflationData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the CPI Inflation API.

class CpiinflationData {
  String? yearMonth;
  int? year;
  int? month;
  CpiinflationDataCategories? categories;

  CpiinflationData({
    this.yearMonth,
    this.year,
    this.month,
    this.categories,
  });

  factory CpiinflationData.fromJson(Map<String, dynamic> json) => CpiinflationData(
      yearMonth: json['yearMonth'],
      year: json['year'],
      month: json['month'],
      categories: json['categories'] != null ? CpiinflationDataCategories.fromJson(json['categories']) : null,
    );
}

class CpiinflationDataCategories {
  CpiinflationDataCategoriesAll? all;
  CpiinflationDataCategoriesFood? food;
  CpiinflationDataCategoriesHousing? housing;
  CpiinflationDataCategoriesTransportation? transportation;
  CpiinflationDataCategoriesMedical? medical;
  CpiinflationDataCategoriesGasoline? gasoline;
  CpiinflationDataCategoriesElectricity? electricity;

  CpiinflationDataCategories({
    this.all,
    this.food,
    this.housing,
    this.transportation,
    this.medical,
    this.gasoline,
    this.electricity,
  });

  factory CpiinflationDataCategories.fromJson(Map<String, dynamic> json) => CpiinflationDataCategories(
      all: json['all'] != null ? CpiinflationDataCategoriesAll.fromJson(json['all']) : null,
      food: json['food'] != null ? CpiinflationDataCategoriesFood.fromJson(json['food']) : null,
      housing: json['housing'] != null ? CpiinflationDataCategoriesHousing.fromJson(json['housing']) : null,
      transportation: json['transportation'] != null ? CpiinflationDataCategoriesTransportation.fromJson(json['transportation']) : null,
      medical: json['medical'] != null ? CpiinflationDataCategoriesMedical.fromJson(json['medical']) : null,
      gasoline: json['gasoline'] != null ? CpiinflationDataCategoriesGasoline.fromJson(json['gasoline']) : null,
      electricity: json['electricity'] != null ? CpiinflationDataCategoriesElectricity.fromJson(json['electricity']) : null,
    );
}

class CpiinflationDataCategoriesAll {
  double? index;
  double? yearOverYearChange;

  CpiinflationDataCategoriesAll({
    this.index,
    this.yearOverYearChange,
  });

  factory CpiinflationDataCategoriesAll.fromJson(Map<String, dynamic> json) => CpiinflationDataCategoriesAll(
      index: json['index'],
      yearOverYearChange: json['yearOverYearChange'],
    );
}

class CpiinflationDataCategoriesFood {
  double? index;
  double? yearOverYearChange;

  CpiinflationDataCategoriesFood({
    this.index,
    this.yearOverYearChange,
  });

  factory CpiinflationDataCategoriesFood.fromJson(Map<String, dynamic> json) => CpiinflationDataCategoriesFood(
      index: json['index'],
      yearOverYearChange: json['yearOverYearChange'],
    );
}

class CpiinflationDataCategoriesHousing {
  double? index;
  double? yearOverYearChange;

  CpiinflationDataCategoriesHousing({
    this.index,
    this.yearOverYearChange,
  });

  factory CpiinflationDataCategoriesHousing.fromJson(Map<String, dynamic> json) => CpiinflationDataCategoriesHousing(
      index: json['index'],
      yearOverYearChange: json['yearOverYearChange'],
    );
}

class CpiinflationDataCategoriesTransportation {
  double? index;
  double? yearOverYearChange;

  CpiinflationDataCategoriesTransportation({
    this.index,
    this.yearOverYearChange,
  });

  factory CpiinflationDataCategoriesTransportation.fromJson(Map<String, dynamic> json) => CpiinflationDataCategoriesTransportation(
      index: json['index'],
      yearOverYearChange: json['yearOverYearChange'],
    );
}

class CpiinflationDataCategoriesMedical {
  double? index;
  double? yearOverYearChange;

  CpiinflationDataCategoriesMedical({
    this.index,
    this.yearOverYearChange,
  });

  factory CpiinflationDataCategoriesMedical.fromJson(Map<String, dynamic> json) => CpiinflationDataCategoriesMedical(
      index: json['index'],
      yearOverYearChange: json['yearOverYearChange'],
    );
}

class CpiinflationDataCategoriesGasoline {
  double? index;
  double? yearOverYearChange;

  CpiinflationDataCategoriesGasoline({
    this.index,
    this.yearOverYearChange,
  });

  factory CpiinflationDataCategoriesGasoline.fromJson(Map<String, dynamic> json) => CpiinflationDataCategoriesGasoline(
      index: json['index'],
      yearOverYearChange: json['yearOverYearChange'],
    );
}

class CpiinflationDataCategoriesElectricity {
  double? index;
  double? yearOverYearChange;

  CpiinflationDataCategoriesElectricity({
    this.index,
    this.yearOverYearChange,
  });

  factory CpiinflationDataCategoriesElectricity.fromJson(Map<String, dynamic> json) => CpiinflationDataCategoriesElectricity(
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
