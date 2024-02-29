import 'package:flutter/material.dart';
import 'package:shop_app/models/onboarding.dart';

class OnBordingItemBilder extends StatelessWidget {
  const OnBordingItemBilder({
    super.key,
    required this.onbordingModel,
  });

  final OnbordingModel onbordingModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: Image.asset(onbordingModel.image)),
        Text(
          onbordingModel.title,
          style: const TextStyle(fontSize: 24),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          onbordingModel.description,
          style: const TextStyle(fontSize: 14),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
