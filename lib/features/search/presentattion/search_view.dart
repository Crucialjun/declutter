import 'package:declutter/core/app_assets.dart';
import 'package:flutter/material.dart';
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
                          onFieldSubmitted: (value){
                            Logger().d(value);
                          },
                )
              ],
            ),
          )),
    );
  }
}
