class InvestorModel {
  final String name;
  final String owner;
  final String image;
  final String operating_yrs;
  final String long_description;
  final String createdOn;
  final int target;
  var equity;
  final String address;
  final String category;
  final bool targetReached;
  final bool amountWithdrawn;
  final double valuation;
  var raisingAmount;

  InvestorModel(
      {required this.name,
      required this.owner,
      required this.image,
      required this.address,
      required this.amountWithdrawn,
      required this.category,
      required this.createdOn,
      required this.equity,
      required this.long_description,
      required this.operating_yrs,
      required this.target,
      required this.targetReached,
      required this.valuation,
      required this.raisingAmount});
}
