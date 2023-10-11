import 'package:flutter/material.dart';
import 'package:riverpod2/ui/providers/provider.dart';
import 'package:riverpod2/ui/widgets/main_bar.dart';
import 'package:riverpod2/ui/widgets/re_button.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar with roundborder and shadow effect in the bottom
      appBar: const AppBarWidget(),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          ReButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ProviderPage(
                        color: Theme.of(context).colorScheme.primary)),
              );
            },
            text: 'Provider',
          ),
          const SizedBox(
            height: 10,
          ),
        ]),
      ),
    );
  }
}