class Message {
  final String id;
  final String senderId;
  final String receiverId;
  final String receivedAt;
  final String content;
  final String messageType;
  final String messageReceiverType;
  final bool read;

  Message({
    required this.id,
    required this.senderId,
    required this.receiverId,
    required this.receivedAt,
    required this.content,
    required this.messageType,
    required this.messageReceiverType,
    required this.read,
  });

  factory Message.fromJson(Map<String, dynamic> json) {
    return Message(
      id: json['id'],
      senderId: json['sender_id'],
      receiverId: json['receiver_id'],
      receivedAt: json['received_at'],
      content: json['content'],
      messageType: json['message_type'],
      messageReceiverType: json['message_receiver_type'],
      read: json['read']
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'sender_id': senderId,
      'receiver_id': receiverId,
      'received_at': receivedAt,
      'message': content,
      'message_type': messageType,
      'message_receiver_type': messageReceiverType,
      'read': read,
    };
  }
}