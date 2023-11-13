import 'package:hotel_go_task/features/home/domin/entity/Home_base_entity.dart';

class HomeModel extends BasicHomeEntity {
  HomeModel({required super.homeList});

  factory HomeModel.fromJson(List<dynamic> json) {
    return HomeModel(
        homeList: (json).map((e) => HomeModelData.fromJson(e)).toList());
  }
}

class HomeModelData {
  String? name;
  int? starts;
  int? price;
  String? currency;
  String? image;
  double? reviewScore;
  String? review;
  String? address;

  HomeModelData(
      {this.name,
      this.starts,
      this.price,
      this.currency,
      this.image,
      this.reviewScore,
      this.review,
      this.address});

  factory HomeModelData.fromJson(Map<String, dynamic> json) {
    return HomeModelData(
      name: json["name"],
      starts: int.parse(json["starts"].toString()),
      price: int.parse(json["price"].toString()),
      currency: json["currency"],
      image: json["image"],
      reviewScore: double.parse(json["review_score"].toString()),
      review: json["review"],
      address: json["address"],
    );
  }
}
