import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter_application_25/repositiries/auth_repositoties.dart';
import 'package:meta/meta.dart';

part 'bloc_event.dart';
part 'bloc_state.dart';

class BlocBloc extends Bloc<BlocEvent, BlocState> {
  BlocBloc({required this.repository}) : super(BlocInitial()) {
    on<GetCodeEvent>((event, emit) async {
      emit(BlocLoading());
      try {
        await repository.getToken(phone: event.phone);
        emit(BlocSuccess());
      } catch (e) {
        if (e is DioException) {
          emit(BlocError(errorText: e.response.toString()));
        } else
          (BlocError(errorText: e.toString()));
      }
    });
  }
  final AuthRepository repository;
}
