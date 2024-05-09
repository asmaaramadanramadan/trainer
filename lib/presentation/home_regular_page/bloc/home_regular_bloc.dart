import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/homeregular_item_model.dart';
import '../models/frame_item_model.dart';
import '../models/frame1_item_model.dart';
import 'package:fty/presentation/home_regular_page/models/home_regular_model.dart';
part 'home_regular_event.dart';
part 'home_regular_state.dart';

/// A bloc that manages the state of a HomeRegular according to the event that is dispatched to it.
class HomeRegularBloc extends Bloc<HomeRegularEvent, HomeRegularState> {
  HomeRegularBloc(HomeRegularState initialState) : super(initialState) {
    on<HomeRegularInitialEvent>(_onInitialize);
    on<onSelected>(_onSelected);
  }

  _onSelected(
    onSelected event,
    Emitter<HomeRegularState> emit,
  ) {
    emit(state.copyWith(selectedDropDownValue: event.value));
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(id: 1, title: "Item One", isSelected: true),
      SelectionPopupModel(id: 2, title: "Item Two"),
      SelectionPopupModel(id: 3, title: "Item Three")
    ];
  }

  List<HomeregularItemModel> fillHomeregularItemList() {
    return [
      HomeregularItemModel(
          bellyfatburner: ImageConstant.imgImage190,
          bellyFatBurner1: "Belly fat burner",
          time: "10 min",
          beginner: "Beginner"),
      HomeregularItemModel(
          bellyfatburner: ImageConstant.imgImage191,
          bellyFatBurner1: "Lose Fat",
          time: "10 min",
          beginner: "Beginner"),
      HomeregularItemModel(
          bellyfatburner: ImageConstant.imgImage193,
          bellyFatBurner1: "Leg exercises",
          time: "10 min",
          beginner: "Beginner"),
      HomeregularItemModel(
          bellyfatburner: ImageConstant.imgImage192,
          bellyFatBurner1: "Plank",
          time: "5 min",
          beginner: "Expert"),
      HomeregularItemModel(
          bellyfatburner: ImageConstant.imgShirtlessAthle,
          bellyFatBurner1: "Wider Biceps",
          time: "30 min",
          beginner: "Intermediate")
    ];
  }

  List<FrameItemModel> fillFrameItemList() {
    return [
      FrameItemModel(
          lowerBodyTraining: ImageConstant.imgImage195,
          lowerBodyTraining1: "Lower Body\nTraining",
          kcalCounter: "0.6 kcal",
          time: "00:35"),
      FrameItemModel(lowerBodyTraining: ImageConstant.imgAnastaseMarago)
    ];
  }

  List<Frame1ItemModel> fillFrame1ItemList() {
    return [
      Frame1ItemModel(
          plankChallenge: ImageConstant.imgLayer1WhiteA700,
          plankChallenge1: "Plank\nChallenge"),
      Frame1ItemModel(plankChallenge1: "Squat\nChallenge"),
      Frame1ItemModel(plankChallenge1: "Squat\nChallenge")
    ];
  }

  _onInitialize(
    HomeRegularInitialEvent event,
    Emitter<HomeRegularState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
    emit(state.copyWith(
        homeRegularModelObj: state.homeRegularModelObj?.copyWith(
            dropdownItemList: fillDropdownItemList(),
            homeregularItemList: fillHomeregularItemList(),
            frameItemList: fillFrameItemList(),
            frame1ItemList: fillFrame1ItemList())));
  }
}
