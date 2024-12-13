import 'package:flutter/material.dart';

class SelectionCaseTypeScreen extends StatelessWidget {
  const SelectionCaseTypeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(""),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
