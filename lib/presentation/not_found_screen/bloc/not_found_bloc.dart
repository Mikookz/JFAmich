import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:zonar_marketing__grapichs/widgets/custom_bottom_bar.dart';
import 'package:zonar_marketing__grapichs/presentation/not_found_screen/models/not_found_model.dart';
part 'not_found_event.dart';
part 'not_found_state.dart';

class NotFoundBloc extends Bloc<NotFoundEvent, NotFoundState> {
  NotFoundBloc(NotFoundState initialState) : super(initialState) {
    on<NotFoundInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NotFoundInitialEvent event,
    Emitter<NotFoundState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
  }
}
