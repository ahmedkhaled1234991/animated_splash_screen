import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
          child: Column(
            children: [
              const SizedBox(
                height: 32,
              ),
              SizedBox(
                width: double.infinity,
                height: 250,
                child: Card(
                  color: Colors.grey[300],
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Expanded(
                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      color: Colors.grey[300],
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
