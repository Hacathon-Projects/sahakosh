class StartupModel {
  PersonalDetails? personalDetails;
  String? bio;
  String? investedCompany;
  String? totalBudget;
  String? investmentCategory;
  String? profession;
  String? rating;

  StartupModel(
      {this.personalDetails,
      this.bio,
      this.investedCompany,
      this.totalBudget,
      this.investmentCategory,
      this.profession,
      this.rating});

  StartupModel.fromJson(Map<String, dynamic> json) {
    personalDetails = json['personal_details'] != null
        ? PersonalDetails.fromJson(json['personal_details'])
        : null;
    bio = json['bio'];
    investedCompany = json['invested_company'];
    totalBudget = json['total_budget'];
    investmentCategory = json['investment_category'];
    profession = json['profession'];
    rating = json['rating'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (personalDetails != null) {
      data['personal_details'] = personalDetails!.toJson();
    }
    data['bio'] = bio;
    data['invested_company'] = investedCompany;
    data['total_budget'] = totalBudget;
    data['investment_category'] = investmentCategory;
    data['profession'] = profession;
    data['rating'] = rating;
    return data;
  }
}

class PersonalDetails {
  String? name;
  String? email;
  String? contact;
  String? photo;
  String? location;

  PersonalDetails(
      {this.name, this.email, this.contact, this.photo, this.location});

  PersonalDetails.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    contact = json['contact'];
    photo = json['photo'];
    location = json['location'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['email'] = email;
    data['contact'] = contact;
    data['photo'] = photo;
    data['location'] = location;
    return data;
  }
}
