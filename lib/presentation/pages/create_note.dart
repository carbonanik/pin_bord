import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pin_bord/models/sticky/sticky.dart';
import 'package:pin_bord/presentation/widget/create_or_update_sticky.dart';
import 'package:pin_bord/provider/note_color_provider.dart';
import 'package:pin_bord/provider/sticky_provider.dart';

@RoutePage()
class CreateNotePage extends ConsumerWidget {
  CreateNotePage({
    Key? key,
  }) : super(key: key);

  final TextEditingController titleTextController = TextEditingController();
  final TextEditingController contentTextController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      // backgroundColor: ref.watch(selectedColorProvider),
      body: CreateOrUpdateSticky(
        contentTextController: contentTextController,
        titleTextController: titleTextController,
        create: true,
        onActionTap: () async {
          if (titleTextController.text.isEmpty || contentTextController.text.isEmpty) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text(
                  "Title and content cannot be empty",
                ),
              ),
            );
            return;
          }
          final notifier = ref.read(stickyProvider.notifier);
          await notifier.createSticky(
            CreateSticky(
              title: titleTextController.text,
              content: contentTextController.text,
              color: ref.read(selectedColorProvider),
            ),
          );

          // ignore: use_build_context_synchronously
          AutoRouter.of(context).pop();
        },
      ),
    );
  }
}
