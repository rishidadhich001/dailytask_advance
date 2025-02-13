import 'package:dailytask_advance/controllers/dark_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DarkLight extends StatelessWidget {
  const DarkLight({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(10),
          height: 700,
          width: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),color: Theme.of(context).canvasColor
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Yo Man !',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text('Its a single example of Light Theme',style: TextStyle(color:Colors.grey,fontWeight:FontWeight.w600,fontSize: 20),),
              GestureDetector(
                onTap: () {
                  Provider.of<HomeProvider>(context,listen: false).changeTheme(false);
                },
                child: Container(
                  height: 100,
                  width: 300,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text('Light Mode',style: TextStyle(color: Colors.black,
                    fontSize: 25,fontWeight: FontWeight.bold
                  ),),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Provider.of<HomeProvider>(context,listen: false).changeTheme(true);
                },
                child: Container(
                  height: 100,
                  width: 300,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.red,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: const Text('Dark Mode',style: TextStyle(color: Colors.black,
                      fontSize: 25,fontWeight: FontWeight.bold
                  ),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
