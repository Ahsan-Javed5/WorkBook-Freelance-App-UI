import 'dart:ui';

class TaskItem {
  String title;
  String? country;
  String status;
  int offers;
  int comments;
  int price;
  Color? color;

  TaskItem({
    required this.title,
    this.country,
    required this.status,
    required this.offers,
    required this.comments,
    required this.price,
    this.color,
  });
}
