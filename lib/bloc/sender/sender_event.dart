part of 'sender_bloc.dart';

abstract class SenderEvent extends Equatable {
  const SenderEvent();

  @override
  List<Object> get props => [];
}

class SendMessage extends SenderEvent {
  final String projectKey;
  final String? deviceToken;
  final String title;
  final String body;

  const SendMessage(this.projectKey, this.deviceToken, this.title, this.body);
}
