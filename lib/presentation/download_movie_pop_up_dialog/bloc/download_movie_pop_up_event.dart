// ignore_for_file: must_be_immutable

part of 'download_movie_pop_up_bloc.dart';

@immutable
abstract class DownloadMoviePopUpEvent extends Equatable {}

class DownloadMoviePopUpInitialEvent extends DownloadMoviePopUpEvent {
  @override
  List<Object?> get props => [];
}

///event for change checkbox
class ChangeCheckBoxEvent extends DownloadMoviePopUpEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for change checkbox
class ChangeCheckBox1Event extends DownloadMoviePopUpEvent {
  ChangeCheckBox1Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for change checkbox
class ChangeCheckBox2Event extends DownloadMoviePopUpEvent {
  ChangeCheckBox2Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
