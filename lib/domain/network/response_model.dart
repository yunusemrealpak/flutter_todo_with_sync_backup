class ResponseModel {
  final dynamic data;
  final int? statusCode;
  final bool? status;
  final String? errorMessage;
  ResponseModel({
    this.data,
    this.statusCode,
    this.status,
    this.errorMessage,
  });

  factory ResponseModel.fromJson(Map<String, dynamic> json) {
    return ResponseModel(
      data: json["data"],
      statusCode: json['statusCode'] != null ? json['statusCode'] as int : null,
      status: json['status'] != null ? json['status'] as bool : null,
      errorMessage:
          json['errorMessage'] != null ? json['errorMessage'] as String : null,
    );
  }

  ResponseModel copyWith({
    dynamic data,
    int? statusCode,
    bool? status,
    String? errorMessage,
  }) {
    return ResponseModel(
      data: data ?? this.data,
      statusCode: statusCode ?? this.statusCode,
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
