import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../constants/assets.dart';

class ContantAppBar extends StatelessWidget {
  const ContantAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Image(image: AssetImage(Assets.resourceImagesProfileImage)),
              const Spacer(
                flex: 14,
              ),
              GestureDetector(
                onTap: () => context.push('/NotificationScreen'),
                child: const Image(
                  image: AssetImage(
                    Assets.resourceImagesNotificationActive,
                  ),
                ),
              ),
              const Spacer(
                flex: 1,
              ),
              const Image(
                image: AssetImage(
                  Assets.resourceImagesShoppingBag,
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hi, Rahul',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Overpass',
                ),
              ),
              Text(
                'Welcome to GDG Medical Store',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Overpass',
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
