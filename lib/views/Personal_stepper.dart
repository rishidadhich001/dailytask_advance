import 'package:dailytask_advance/controllers/step_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PersonalStepper extends StatelessWidget {
  const PersonalStepper({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Personal Detail',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Stepper(
        type: StepperType.horizontal,
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
        steps: <Step>[
          const Step(
            title: Text('Personal'),
            content: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    labelText: 'First Name',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Last Name',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Father Name',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Mother Name',
                    border: OutlineInputBorder(),
                  ),
                ),
              ],
            ),
          ),
          const Step(
            title: Text('Contact'),
            content: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  maxLines: 3,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.home),
                    hintText: 'Address',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.phone),
                    labelText: 'Mobile No',
                    border: OutlineInputBorder(),
                  ),
                ),
              ],
            ),
          ),
          Step(
            title: const Text('Upload'),
            content: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.upload),
            ),
          ),
        ],
      ),
    );
  }
}
