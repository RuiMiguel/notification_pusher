part of 'device_bloc.dart';

abstract class DeviceState extends Equatable {
  const DeviceState();

  @override
  List<Object> get props => [];
}

class Uninitialized extends DeviceState {}

class Android extends DeviceState {}

class IOS extends DeviceState {}
