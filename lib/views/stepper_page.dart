import 'package:dailytask_advance/controllers/step_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AccountDetail extends StatelessWidget {
  const AccountDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Account Detail',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Stepper(
        currentStep: Provider.of<StepProvider>(context).currentStep,
        onStepContinue: () {
          Provider.of<StepProvider>(context, listen: false).onContinue();
        },
        onStepCancel: () {
          Provider.of<StepProvider>(context, listen: false).onCancel();
        },
        onStepTapped: (value) {
          Provider.of<StepProvider>(context, listen: false).onStepTapped(value);
        },
        steps: const <Step>[
          Step(
            title: Text(
              'Account',
              style: TextStyle(fontSize: 15),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Account Holder',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Account Name',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Account No',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Account Pin',
                    border: OutlineInputBorder(),
                  ),
                ),
              ],
            ),
          ),
          Step(
            title: Text('Address'),
            content: TextField(
              maxLines: 3,
              decoration: InputDecoration(
                labelText: 'Address',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Step(
            title: Text('Mobile Number'),
            content: TextField(
              decoration: InputDecoration(
                labelText: 'Mobile No',
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
