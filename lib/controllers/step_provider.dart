import 'package:flutter/material.dart';

class StepProvider extends ChangeNotifier
{
  int currentStep=0;

  void onContinue(){
    if(currentStep<2)
      {
        currentStep++;
      }
    notifyListeners();
  }

  void onCancel(){
    if(currentStep>0){
      currentStep--;
    }
    notifyListeners();
  }

  void onStepTapped(int value){
    currentStep=value;
    notifyListeners();
  }
}