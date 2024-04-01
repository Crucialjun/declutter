import 'package:declutter/constants/app_assets.dart';
import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:logger/logger.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  TextEditingController searchController = TextEditingController();

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 48,
            title: Text(
              'Search Products',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(AppAssets.shoppingCart),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextFormField(
                  controller: searchController,
                  decoration: InputDecoration(
                      hintText: 'Search',
                      prefixIcon: const Icon(Icons.search),
                      suffixIcon: IconButton(
                          onPressed: () {
                            searchController.clear();
                            FocusScope.of(context).unfocus();
                          },
                          icon: const Icon(Icons.clear))),
                  onFieldSubmitted: (value) {
                    Logger().d(searchController.text);
                  },
                ),
                SizedBox(
                  height: 16.h,
                ),
                Expanded(
                  child: DynamicHeightGridView(
                    crossAxisCount: 2,
                    itemCount: 30,
                    builder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Logger().d('Product $index');
                        },
                        child: Card(
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: FancyShimmerImage(
                                  height: 120.h,
                                  imageUrl: 'https://picsum.photos/200/300',
                                  boxFit: BoxFit.cover,
                                  errorWidget: const Icon(Icons.error),
                                ),
                              ),
                              Row(
                                children: [
                                  Flexible(
                                    flex: 5,
                                    child: Text(
                                      'Product $index' * 10,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge,
                                    ),
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.favorite_border)),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Price: 1000",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                          Icons.add_shopping_cart_outlined))
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
