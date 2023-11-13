class ExploreModel {
  final String image;

  ExploreModel({
    required this.image,
  });
}

class BestSellerModel {
  final String image;
  final String name;
  final String categories;
  final String price;
  final String rate;

  BestSellerModel({
    required this.image,
    required this.name,
    required this.categories,
    required this.price,
    required this.rate,
  });
}

class NotificationModel {
  final String image;
  final String title;
  final String time;

  NotificationModel({
    required this.image,
    required this.title,
    required this.time,
  });
}

class BrandModel {
  final String title;
  final String image;

  BrandModel({
    required this.title,
    required this.image,
  });
}

class CartItemsModel {
  final String image;
  final String title;
  final int price;
  final int totalPrice;
  late int quantity;

  CartItemsModel({
    required this.image,
    required this.title,
    required this.price,
    required this.totalPrice,
    required this.quantity,
  });
}

class OrdersModel {
  final String image;
  final String id;
  final int price;
  final String paymentStatus;
  final String orderStatus;
  final String title;
  final int quantity;

  OrdersModel({
    required this.image,
    required this.id,
    required this.price,
    required this.paymentStatus,
    required this.orderStatus,
    required this.title,
    required this.quantity,
  });
}

class SortModel {
  final String title;
  late bool isClicked;

  SortModel({required this.title, required this.isClicked});
}
