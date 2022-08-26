import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/utilities/assets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Image.network(
              AppAssets.topBannerHomePageAsset,
              width: double.infinity,
              height: size.height * 0.3,
              fit: BoxFit.cover,
            ),
            Opacity(
              opacity: 0.3,
              child: Container(
                width: double.infinity,
                height: size.height * 0.3,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Text(
                'Street Clothes',
                style: Theme.of(context).textTheme.headline4!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 24.0),
        Row(

        ),
      ],
    );
  }
}
