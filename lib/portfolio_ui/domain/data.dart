import 'package:sahakosh/portfolio_ui/domain/portfolioModel.dart';

List portfolioStocks = [
  PortfolioModel(
      equityPercent: 15,
      paidUpCapital: '25 lakhs',
      investedPrice: '3.75 lakhs',
      revenuePreviousMonth: '55k',
      revenueThisMonth: '60k',
      change: 9.09,
      isGain: true,
      companyName: 'Digital Innovators',
      logoSrc: 'assets/images/logo.png'),
  PortfolioModel(
      equityPercent: 10,
      paidUpCapital: '4 lakhs',
      investedPrice: '40k',
      revenuePreviousMonth: '10k',
      revenueThisMonth: '9k',
      change: 10,
      isGain: false,
      companyName: 'Shree Krishna Jhola Udhyog',
      logoSrc: 'assets/images/logo.png'),
  PortfolioModel(
    equityPercent: 12,
    paidUpCapital: '8 lakhs',
    investedPrice: '96k',
    revenuePreviousMonth: '38k',
    revenueThisMonth: '40k',
    change: 5.26,
    isGain: true,
    companyName: 'Pustakthana',
    logoSrc: 'assets/images/logo.png',
  ),
];
