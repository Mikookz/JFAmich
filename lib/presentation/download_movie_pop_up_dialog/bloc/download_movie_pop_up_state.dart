// ignore_for_file: must_be_immutable

part of 'download_movie_pop_up_bloc.dart';

class DownloadMoviePopUpState extends Equatable {
  DownloadMoviePopUpState({
    this.isCheckbox = false,
    this.isCheckbox1 = false,
    this.isCheckbox2 = false,
    this.downloadMoviePopUpModelObj,
  });

  DownloadMoviePopUpModel? downloadMoviePopUpModelObj;

  bool isCheckbox;

  bool isCheckbox1;

  bool isCheckbox2;

  @override
  List<Object?> get props => [
        isCheckbox,
        isCheckbox1,
        isCheckbox2,
        downloadMoviePopUpModelObj,
      ];
  DownloadMoviePopUpState copyWith({
    bool? isCheckbox,
    bool? isCheckbox1,
    bool? isCheckbox2,
    DownloadMoviePopUpModel? downloadMoviePopUpModelObj,
  }) {
    return DownloadMoviePopUpState(
      isCheckbox: isCheckbox ?? this.isCheckbox,
      isCheckbox1: isCheckbox1 ?? this.isCheckbox1,
      isCheckbox2: isCheckbox2 ?? this.isCheckbox2,
      downloadMoviePopUpModelObj:
          downloadMoviePopUpModelObj ?? this.downloadMoviePopUpModelObj,
    );
  }
}
