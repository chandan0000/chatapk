import 'dart:convert';

class MessageModel {
  String? sender;
  String? text;
  bool? seen;
  DateTime? createdon;
  MessageModel({
    this.sender,
    this.text,
    this.seen,
    this.createdon,
  });

  factory MessageModel.fromMap(Map<String, dynamic> map) {
    return MessageModel(
      sender: map['sender'],
      text: map['text'],
      seen: map['seen'],
      createdon: map["createdon"].toDate()
      // createdon: map['createdon'] != null ? DateTime.fromMillisecondsSinceEpoch(map['createdon']) : null,
    );}
  Map<String, dynamic> toMap() {
    return {
      'sender': sender,
      'text': text,
      'seen': seen,
      'createdon': createdon?.millisecondsSinceEpoch,
    };
  }


  }

 

   

