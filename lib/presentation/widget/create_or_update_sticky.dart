import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pin_bord/models/sticky/sticky.dart';
import 'package:pin_bord/presentation/widget/app_text_field.dart';
import 'package:pin_bord/provider/note_color_provider.dart';
import 'package:pin_bord/provider/sticky_local_provider.dart';
import 'package:pin_bord/provider/sticky_provider.dart';
import 'package:pin_bord/util/responsive.dart';

class CreateOrUpdateSticky extends ConsumerWidget {
  const CreateOrUpdateSticky({
    required this.create,
    required this.titleTextController,
    required this.contentTextController,
    required this.onActionTap,
    this.onDeleteTap,
    Key? key,
  }) : super(key: key);
  final VoidCallback onActionTap;
  final VoidCallback? onDeleteTap;
  final bool create;
  final TextEditingController titleTextController;
  final TextEditingController contentTextController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectableColors = ref.read(colorsProvider);
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: size.height,
      color: ref.watch(selectedColorProvider),
      child: SingleChildScrollView(
        child: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 800),
            padding: EdgeInsets.symmetric(
              horizontal: context.responsiveSize(
                desktop: 100.0,
                mobile: 10.0,
              ),
            ),
            child: Column(
              children: <Widget>[
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      create ? 'Create Note' : 'Update Note',
                      style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black45),
                    ),
                  ),
                ),
                // rounded border edit text
                AppTextField(
                  textEditingController: titleTextController,
                  hintText: "Title",
                  maxLength: 1,
                  icon: Icons.edit,
                  fontSize: 16,
                ),
                const SizedBox(height: 14),
                AppTextField(
                  textEditingController: contentTextController,
                  hintText: "Content",
                  // icon: Icons.note_add,
                  maxLength: context.isMobile ? 10 : 20,
                  fontSize: 14,
                ),
                const SizedBox(height: 14),

                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  height: 40,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: onActionTap,
                    child: Text(
                      create ? "Save Note" : "Update Note",
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                if (!create) const SizedBox(height: 20),
                if (!create)
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    height: 40,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: onDeleteTap,
                      child: const Text(
                        "Delete Note",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
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
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
