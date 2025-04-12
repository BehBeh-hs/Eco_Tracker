class CarbonEmissionResponse {
  final double co2eGm;
  final double co2eKg;
  final double co2eMt;
  final double co2eLb;
  final bool success;
  final int status;

  CarbonEmissionResponse({
    required this.co2eGm,
    required this.co2eKg,
    required this.co2eMt,
    required this.co2eLb,
    required this.success,
    required this.status,
  });

  factory CarbonEmissionResponse.fromJson(Map<String, dynamic> json) {
    final data = json['data'] ?? {};
    return CarbonEmissionResponse(
      co2eGm: (data['co2e_gm'] ?? 0).toDouble(),
      co2eKg: (data['co2e_kg'] ?? 0).toDouble(),
      co2eMt: (data['co2e_mt'] ?? 0).toDouble(),
      co2eLb: (data['co2e_lb'] ?? 0).toDouble(),
      success: json['success'] ?? false,
      status: json['status'] ?? 500,
    );
  }
}
