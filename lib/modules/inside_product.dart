import 'package:flutter/material.dart';
import 'package:full_screen_image_null_safe/full_screen_image_null_safe.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:photo_view/photo_view.dart';

class InProduct extends StatelessWidget {
  const InProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 1,
          ),
          Column(
            children: [
              Image(
                image: const AssetImage(
                    'assets/images/Sale_Category Banner Mobile.jpg'),
                fit: BoxFit.fill,
                height: MediaQuery.of(context).size.height * .53,
              ),
            ],
          ),
          Positioned.fill(
            child: Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: SingleChildScrollView(
                child: Container(
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height * .53,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(60),
                          topRight: Radius.circular(60))),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                              alignment: AlignmentDirectional.topCenter,
                              onPressed: () {},
                              icon: const Icon(
                                MdiIcons.heart,
                                size: 30,
                                color: Colors.grey,
                              ),
                              visualDensity: const VisualDensity(
                                  horizontal: -2, vertical: -2),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'فستان فرح تركي',
                              textDirection: TextDirection.rtl,
                              style: Theme.of(context).textTheme.headlineMedium,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            FullScreenWidget(
                              child: SizedBox(
                                height: MediaQuery.of(context).size.height * .1,
                                width: MediaQuery.of(context).size.width * .2,
                                child: PhotoView(
                                  backgroundDecoration:
                                      const BoxDecoration(color: Colors.white),
                                  imageProvider: const AssetImage(
                                      'assets/images/Sale_Category Banner Mobile.jpg'),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            FullScreenWidget(
                              child: SizedBox(
                                height: MediaQuery.of(context).size.height * .1,
                                width: MediaQuery.of(context).size.width * .2,
                                child: PhotoView(
                                  backgroundDecoration:
                                      const BoxDecoration(color: Colors.white),
                                  imageProvider: const AssetImage(
                                      'assets/images/Sale_Category Banner Mobile.jpg'),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .05,
                        ),
                        Text(
                          'فستان زفاف ابيض',
                          textDirection: TextDirection.rtl,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Text(
                          'السعر 2000',
                          textDirection: TextDirection.rtl,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Align(
              alignment: AlignmentDirectional.topStart,
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
