class Reply {
  late String content;
  late String timestamp;
  late String username;
  late int userid;
  late int activityid;

  Reply({
    required this.content,
    required this.timestamp,
    required this.username,
    required this.userid,
    required this.activityid,
  });

  factory Reply.fromJson(Map<String, dynamic> json) {
    return Reply(
      activityid: json['activity_id'],
      content: json['content'],
      username: json['user_name'],
      timestamp: json['timestamp'],
      userid: json['user_id'],
    );
  }
}
