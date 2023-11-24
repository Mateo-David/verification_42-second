import 'package:get/get.dart';
import 'package:verification_42/Components/StatisticsCard/StatisticsCard.dart';
import 'package:verification_42/model/Verification42/Verification42Model.dart';

class Verification42Controller extends GetxController {
  final RxBool _isChecked = false.obs;

  onCheckboxChanged() {
    _isChecked.toggle();
  }

  RxBool first = false.obs;
  RxBool second = false.obs;
  RxBool third = false.obs;

  void updateFirstCheckbox(bool value) {
    first.value = value;
    if (verificationController.filteredResults.contains(
        verificationController.verification42Card[0].text2.toString())) {
      filteredResults.remove(
          verificationController.verification42Card[0].text2.toString());
    } else {
      verificationController.filteredResults
          .add(verificationController.verification42Card[0].text2.toString());
    }
  }

  void updateSecondCheckBox(bool value) {
    second.value = value;

    if (verificationController.filteredResults.contains(
        verificationController.verification42Card[1].text2.toString())) {
      filteredResults.remove(
          verificationController.verification42Card[1].text2.toString());
    } else {
      verificationController.filteredResults
          .add(verificationController.verification42Card[1].text2.toString());
    }
  }

  void updateThirdCheckBox(bool value) {
    third.value = value;

    if (verificationController.filteredResults.contains(
        verificationController.verification42Card[2].text2.toString())) {
      filteredResults.remove(
          verificationController.verification42Card[2].text2.toString());
    } else {
      verificationController.filteredResults
          .add(verificationController.verification42Card[2].text2.toString());
    }
  }

  List<Verification42Model> verification42Card = [
    Verification42Model(
      numericValue: "\n36000",
      text2: "Monthly\nOrder Value",
      text1: 'PKR',
      loadingbar: false,
      obtained: '',
      total: '',
    ),
    Verification42Model(
        numericValue: "\n546",
        text2: "Number \nof Orders",
        obtained: '',
        total: '',
        text1: 'Units',
        loadingbar: false),
    Verification42Model(
        numericValue: "",
        text2: "Working Days",
        text1: '',
        obtained: '12',
        total: '/22',
        loadingbar: true),
  ];

  List<String> filteredResults = [];

  void updateFilteredData() {
    filteredResults.clear();
    if (first.value) {
      filteredResults.add(verification42Card[0] as String);
    }
    if (second.value) {
      filteredResults.add(verification42Card[1] as String);
    }
    if (third.value) {
      filteredResults.add(verification42Card[2] as String);
    }
    update();
  }
}
