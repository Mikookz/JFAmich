import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:zonar_marketing__grapichs/presentation/download_movie_pop_up_dialog/models/download_movie_pop_up_model.dart';
part 'download_movie_pop_up_event.dart';
part 'download_movie_pop_up_state.dart';

class DownloadMoviePopUpBloc
    extends Bloc<DownloadMoviePopUpEvent, DownloadMoviePopUpState> {
  DownloadMoviePopUpBloc(DownloadMoviePopUpState initialState)
      : super(initialState) {
    on<DownloadMoviePopUpInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
    on<ChangeCheckBox1Event>(_changeCheckBox1);
    on<ChangeCheckBox2Event>(_changeCheckBox2);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<DownloadMoviePopUpState> emit,
  ) {
    emit(state.copyWith(
      isCheckbox: event.value,
    ));
  }

  _changeCheckBox1(
    ChangeCheckBox1Event event,
    Emitter<DownloadMoviePopUpState> emit,
  ) {
    emit(state.copyWith(
      isCheckbox1: event.value,
    ));
  }

  _changeCheckBox2(
    ChangeCheckBox2Event event,
    Emitter<DownloadMoviePopUpState> emit,
  ) {
    emit(state.copyWith(
      isCheckbox2: event.value,
    ));
  }

  _onInitialize(
    DownloadMoviePopUpInitialEvent event,
    Emitter<DownloadMoviePopUpState> emit,
  ) async {
    emit(state.copyWith(
      isCheckbox: false,
      isCheckbox1: false,
      isCheckbox2: false,
    ));
  }
}
