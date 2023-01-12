class NotificationModel {
  String? notification;
  String? time;

  NotificationModel({this.notification, this.time});

  NotificationModel.fromJson(Map<String, dynamic> json) {
    notification = json['notification'];
    time = json['time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['notification'] = notification;
    data['time'] = time;
    return data;
  }
}
