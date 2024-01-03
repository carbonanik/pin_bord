import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pin_bord/models/sticky/sticky.dart';
import 'package:pin_bord/presentation/widget/create_or_update_sticky.dart';
import 'package:pin_bord/provider/note_color_provider.dart';
import 'package:pin_bord/provider/sticky_provider.dart';

@RoutePage()
class UpdateNote extends ConsumerWidget {
  UpdateNote({
    @PathParam('id') required this.updateId,
    super.key,
  });

  final String updateId;
  final TextEditingController titleTextController = TextEditingController();
  final TextEditingController contentTextController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Sticky? sticky = ref.watch(stickyProvider).getSticky(updateId);

    titleTextController.text = sticky?.title ?? '';
    contentTextController.text = sticky?.content ?? '';

    SchedulerBinding.instance.addPostFrameCallback((_) {
      ref.read(selectedColorProvider.notifier).state = sticky?.color ?? ref.read(selectedColorProvider);
    });

    return Scaffold(
      body: CreateOrUpdateSticky(
        contentTextController: contentTextController,
        titleTextController: titleTextController,
        create: false,
        onActionTap: () {
          if (titleTextController.text.isEmpty || contentTextController.text.isEmpty) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("Title and content cannot be empty")),
            );
            return;
          }
          final notifier = ref.read(stickyProvider.notifier);
          notifier.updateSticky(
            UpdateSticky(
              title: titleTextController.text,
              content: contentTextController.text,
              color: ref.read(selectedColorProvider),
            ),
            updateId,
          );
          AutoRouter.of(context).pop();
        },
        onDeleteTap: () {
          final notifier = ref.read(stickyProvider.notifier);
          notifier.removeSticky(updateId);
          AutoRouter.of(context).pop();
        },
      ),
    );
  }
}
