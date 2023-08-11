class Activity {
  late int activityId;
  late String content;
  late int numLikes;
  late int pawtaiId;
  late String timestamp;
  late int userId;

  Activity({
    required this.activityId,
    required this.content,
    required this.numLikes,
    required this.pawtaiId,
    required this.timestamp,
    required this.userId,
  });
  void setNumLikes(int i) {
    numLikes = i;
  }

  factory Activity.fromJson(Map<String, dynamic> json) {
    return Activity(
      activityId: json['activity_id'],
      content: json['content'],
      numLikes: json['num_likes'],
      pawtaiId: json['pawtai_id'],
      timestamp: json['timestamp'],
      userId: json['user_id'],
    );
  }
}
