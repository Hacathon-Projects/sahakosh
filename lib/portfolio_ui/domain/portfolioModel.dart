class PortfolioModel {
  final double equityPercent;
  final String paidUpCapital;
  final String investedPrice;
  final String revenueThisMonth;
  final String revenuePreviousMonth;
  final double change;
  final bool isGain;
  final String companyName;
  final String logoSrc;

  PortfolioModel({
    required this.equityPercent,
    required this.paidUpCapital,
    required this.investedPrice,
    required this.revenueThisMonth,
    required this.revenuePreviousMonth,
    required this.change,
    required this.isGain,
    required this.companyName,
    required this.logoSrc,
  });
}
