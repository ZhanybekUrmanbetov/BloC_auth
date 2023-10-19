part of 'bloc_bloc.dart';

@immutable
class BlocState {}

class BlocInitial extends BlocState {}

class BlocLoading extends BlocState {}

class BlocSuccess extends BlocState {}

class BlocError extends BlocState {
  final String errorText;
  BlocError({required this.errorText});
}
