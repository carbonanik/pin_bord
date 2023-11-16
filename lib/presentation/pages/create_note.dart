import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pin_bord/models/sticky/sticky.dart';
import 'package:pin_bord/presentation/widget/app_text_field.dart';
import 'package:pin_bord/provider/note_color_provider.dart';
import 'package:pin_bord/provider/sticky_provider.dart';

@RoutePage()
class CreateNotePage extends ConsumerWidget {
  CreateNotePage({Key? key}) : super(key: key);

  final TextEditingController titleTextController = TextEditingController();
  final TextEditingController contentTextController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectableColors = ref.read(colorsProvider);
    return Scaffold(
      body: Center(
        child: Container(
          height: 800,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: ref.watch(selectedColorProvider),
          ),
          // margin: const EdgeInsets.symmetric(horizontal: 400.0, vertical: 40.0),
          constraints: BoxConstraints(maxWidth: 800),
          padding: const EdgeInsets.symmetric(horizontal: 100.0),
          child: Column(
            children: <Widget>[
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Text(
                    'Create Note',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black45),
                  ),
                ),
              ),
              // rounded border edit text
              AppTextField(
                  textEditingController: titleTextController, hintText: "Title", maxLength: 1, icon: Icons.edit),
              const SizedBox(height: 20),
              AppTextField(
                textEditingController: contentTextController,
                hintText: "Content",
                icon: Icons.accessible,
                maxLength: 20,
                fontSize: 18,
              ),
              const SizedBox(height: 20),

              Consumer(builder: (context, ref, child) {
                final notifier = ref.watch(stickyProvider);
                return Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  height: 60,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.pink,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () async {
                      if (titleTextController.text.isEmpty || contentTextController.text.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                            content: Text(
                          "Title and content cannot be empty",
                        )));
                        return;
                      }
                      await notifier.createSticky(
                        CreateSticky(
                          title: titleTextController.text,
                          content: contentTextController.text,
                          color: ref.read(selectedColorProvider),
                        ),
                      );
                      AutoRouter.of(context).pop();
                    },
                    child: const Text(
                      "Save Note",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                );
              }),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      selectableColors.length,
                      (index) => GestureDetector(
                            onTap: () {
                              ref.read(selectedColorProvider.notifier).state = selectableColors[index];
                            },
                            child: Container(
                              margin: const EdgeInsets.symmetric(horizontal: 10),
                              width: 31,
                              height: 31,
                              color: Colors.black,
                              child: Center(
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  color: selectableColors[index],
                                ),
                              ),
                            ),
                          )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
