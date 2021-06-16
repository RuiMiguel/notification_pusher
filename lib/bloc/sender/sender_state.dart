part of 'sender_bloc.dart';

abstract class SenderState extends Equatable {
  const SenderState();

  @override
  List<Object> get props => [];
}

class SenderInitial extends SenderState {}

class SenderLoading extends SenderState {}

class SenderSuccess extends SenderState {
  final Response response;
  const SenderSuccess(this.response);
}

class SenderError extends SenderState {
  final Response response;
  const SenderError(this.response);
}
