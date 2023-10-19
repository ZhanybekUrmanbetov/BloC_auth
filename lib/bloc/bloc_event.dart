part of 'bloc_bloc.dart';

@immutable
class BlocEvent {}

class GetCodeEvent extends BlocEvent {
  final String phone;
  GetCodeEvent({required this.phone});
}
