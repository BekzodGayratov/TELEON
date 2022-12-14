import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'main_cubit.dart';

abstract class MainPageState extends Equatable {
  const MainPageState();

  @override
  List<Object?> get props => [];
}

class MainPageInitialState extends MainPageState {
  const MainPageInitialState();
}

class MainPageLoadingState extends MainPageState {
  const MainPageLoadingState();
}

class MainPageErrorState extends MainPageState {
  final String error;
  const MainPageErrorState(this.error);
}

class MainPageCompleteState extends MainPageState {
  const MainPageCompleteState();
}
