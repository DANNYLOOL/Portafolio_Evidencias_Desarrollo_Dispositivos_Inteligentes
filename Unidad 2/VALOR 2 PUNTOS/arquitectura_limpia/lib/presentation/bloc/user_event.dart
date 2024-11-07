part of 'user_bloc.dart';

abstract class UserEvent extends Equatable {
  const UserEvent();

  @override
  List<Object> get props => [];
}

class GetUserEvent extends UserEvent {
  final String id;

  const GetUserEvent(this.id);

  @override
  List<Object> get props => [id];
}