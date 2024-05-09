import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/homepostinjuryrehabilitation_item_model.dart';
import '../models/frame2_item_model.dart';
import '../models/frame3_item_model.dart';
import 'package:fty/presentation/home_post_injury_rehabilitation_screen/models/home_post_injury_rehabilitation_model.dart';
part 'home_post_injury_rehabilitation_event.dart';
part 'home_post_injury_rehabilitation_state.dart';

/// A bloc that manages the state of a HomePostInjuryRehabilitation according to the event that is dispatched to it.
class HomePostInjuryRehabilitationBloc extends Bloc<
    HomePostInjuryRehabilitationEvent, HomePostInjuryRehabilitationState> {
  HomePostInjuryRehabilitationBloc(
      HomePostInjuryRehabilitationState initialState)
      : super(initialState) {
    on<HomePostInjuryRehabilitationInitialEvent>(_onInitialize);
  }

  List<HomepostinjuryrehabilitationItemModel>
      fillHomepostinjuryrehabilitationItemList() {
    return [
      HomepostinjuryrehabilitationItemModel(
          bellyfatburner: ImageConstant.imgImage190,
          bellyFatBurner1: "Belly fat burner",
          time: "10 min",
          beginner: "Beginner"),
      HomepostinjuryrehabilitationItemModel(
          bellyfatburner: ImageConstant.imgImage191,
          bellyFatBurner1: "Lose Fat",
          time: "10 min",
          beginner: "Beginner"),
      HomepostinjuryrehabilitationItemModel(
          bellyfatburner: ImageConstant.imgImage193,
          bellyFatBurner1: "Leg exercises",
          time: "10 min",
          beginner: "Beginner"),
      HomepostinjuryrehabilitationItemModel(
          bellyfatburner: ImageConstant.imgImage192,
          bellyFatBurner1: "Plank",
          time: "5 min",
          beginner: "Expert"),
      HomepostinjuryrehabilitationItemModel(
          bellyfatburner: ImageConstant.imgShirtlessAthle,
          bellyFatBurner1: "Wider Biceps",
          time: "30 min",
          beginner: "Intermediate"),
      HomepostinjuryrehabilitationItemModel(
          bellyfatburner: ImageConstant.imgImage194,
          bellyFatBurner1: "Backward lunges",
          time: "5 min",
          beginner: "Beginner")
    ];
  }

  List<Frame2ItemModel> fillFrame2ItemList() {
    return [
      Frame2ItemModel(
          lowerBodyTraining: ImageConstant.imgImage195,
          lowerBodyTraining1: "Lower Body\nTraining",
          kcalCounter: "0.6 kcal",
          time: "00:35"),
      Frame2ItemModel(lowerBodyTraining: ImageConstant.imgAnastaseMarago)
    ];
  }

  List<Frame3ItemModel> fillFrame3ItemList() {
    return [
      Frame3ItemModel(
          plankChallenge: ImageConstant.imgLayer1WhiteA700,
          plankChallenge1: "Plank\nChallenge"),
      Frame3ItemModel(plankChallenge1: "Squat\nChallenge"),
      Frame3ItemModel(plankChallenge1: "Squat\nChallenge")
    ];
  }

  _onInitialize(
    HomePostInjuryRehabilitationInitialEvent event,
    Emitter<HomePostInjuryRehabilitationState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        homePostInjuryRehabilitationModelObj:
            state.homePostInjuryRehabilitationModelObj?.copyWith(
      homepostinjuryrehabilitationItemList:
          fillHomepostinjuryrehabilitationItemList(),
      frame2ItemList: fillFrame2ItemList(),
      frame3ItemList: fillFrame3ItemList(),
    )));
  }
}
