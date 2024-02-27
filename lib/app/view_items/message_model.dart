class MessageModel {
  MessageModel(
      {required this.fromWho, required this.time, required this.message});
  final String fromWho;
  final DateTime time;
  final String message;
}
