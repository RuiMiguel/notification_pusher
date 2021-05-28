part of 'device_bloc.dart';

abstract class DeviceEvent extends Equatable {
  const DeviceEvent();

  @override
  List<Object> get props => [];
}

class SelectAndroid extends DeviceEvent {}

class SelectIOS extends DeviceEvent {}
