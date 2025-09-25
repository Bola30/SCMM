part of 'home_page_cubit.dart';


abstract class HomePageState extends Equatable {
  const HomePageState();

  @override
  List<Object?> get props => [];
}

class HomePageInitial extends HomePageState {}

class HomePageLoading extends HomePageState {}

class HomePageLoaded extends HomePageState {
  final double progress; // نسبة التحميل مثلا

  const HomePageLoaded(this.progress);

  @override
  List<Object?> get props => [progress];
}

class HomePageError extends HomePageState {
  final String message;

  const HomePageError(this.message);

  @override
  List<Object?> get props => [message];
}
