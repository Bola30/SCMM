
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart' show Equatable;
part 'home_page_state.dart';

class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit() : super(HomePageInitial());
  
  void loadProgress(double value) {
    emit(HomePageLoading());
    // هنا تحاكي عملية تحميل
    emit(HomePageLoaded(value));
  }

  void throwError(String error) {
    emit(HomePageError(error));
  }
}
