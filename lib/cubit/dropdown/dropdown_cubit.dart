import 'package:bloc/bloc.dart';

class DropdownCubit extends Cubit<bool> {
  DropdownCubit() : super(false);

  bool _expanded = false;

  void toggleExpand() {
    _expanded = !_expanded;
    emit(_expanded);
  }
}
