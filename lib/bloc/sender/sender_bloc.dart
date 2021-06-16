import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:pusher/domain/model/response.dart';

part 'sender_event.dart';
part 'sender_state.dart';

class SenderBloc extends Bloc<SenderEvent, SenderState> {
  SenderBloc() : super(SenderInitial());

  @override
  Stream<SenderState> mapEventToState(
    SenderEvent event,
  ) async* {
    switch (event.runtimeType) {
      case SendMessage:
        yield SenderLoading();

        await Future.delayed(Duration(seconds: 1));

        var response = Response(
          multicastId: 7507949017431680934,
          success: 0,
          failure: 1,
          canonicalIds: 0,
          results: List.from(
            [ResponseResult(error: "NotRegistered")],
          ),
        );
        yield SenderSuccess(response);

        break;
    }
  }
}
