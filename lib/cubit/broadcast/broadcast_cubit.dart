import 'package:bloc/bloc.dart';

class BroadcastCubit extends Cubit<bool> {
  BroadcastCubit() : super(false);

  bool _broadcastEnabled = false;

  void enableBroadcast(bool status) {
    _broadcastEnabled = status;
    emit(_broadcastEnabled);
  }
}
