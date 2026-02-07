import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_bay/core/shared/miscellaneous/gap.dart';
import 'package:ticket_bay/core/shared/widgets/refresh.dart';

mixin PaginationNotifier<T> on StateNotifier<T> {
  Future<void> loadData();
  Future<void> loadMore();
  Future<void> refresh();
}

class ApiGridWidget<T> extends ConsumerStatefulWidget {
  const ApiGridWidget({
    super.key,
    required this.data,
    required this.provider,
    required this.emptyCondition,
    this.scrollController,
    this.scrollControllerListener,
    required this.itemCount,
    required this.itemBuilder,
    required this.pageProvider,
    required this.canLoadMore,
    required this.aspectRatio,
    this.padding,
  });

  final AutoDisposeStateNotifierProvider<dynamic, T> provider;
  final T data;
  final bool emptyCondition;
  final int itemCount;
  final ScrollController? scrollController;
  final void Function()? scrollControllerListener;
  final StateProvider<int>? pageProvider;
  final StateProvider<bool>? canLoadMore;
  final double? aspectRatio;
  final Widget? Function(BuildContext, int) itemBuilder;
  final EdgeInsets? padding;

  @override
  ConsumerState<ApiGridWidget<T>> createState() => _ApiGridWidgetState<T>();
}

class _ApiGridWidgetState<T> extends ConsumerState<ApiGridWidget<T>> {
  late ScrollController _listScrollController;

  @override
  void initState() {
    super.initState();
    _listScrollController = widget.scrollController ?? ScrollController();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _listScrollController
          .addListener(widget.scrollControllerListener ?? () {});
      _listScrollController.addListener(() {
        if (_listScrollController.offset ==
            _listScrollController.position.maxScrollExtent) {
          if (widget.pageProvider != null && widget.canLoadMore != null) {
            if (!mounted) return;
            if (!ref.watch(widget.canLoadMore!)) return;
            ref
                .read(widget.pageProvider!.notifier)
                .update((state) => state = state + 1);

            ref.read(widget.provider.notifier).loadMore();
          }
        }
      });
    });
  }

  @override
  void didChangeDependencies() {
    context.dependOnInheritedWidgetOfExactType();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return widget.emptyCondition
        ? Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Oops, No data found!',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                const Gap(20),
                AppRefreshButton<T>(
                  provider: (widget.provider),
                  onRefreshCalled: () {
                    if (widget.pageProvider == null) return;
                    ref
                        .read(widget.pageProvider!.notifier)
                        .update((state) => 1);
                  },
                ),
              ],
            ),
          )
        : AppRefreshIndicator(
            provider: widget.provider,
            onRefreshCalled: () async {
              await ref.read(widget.provider.notifier).refresh();
            },
            child: GridView.builder(
              controller: _listScrollController,
              padding: widget.padding,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 14,
                mainAxisSpacing: 0,
                childAspectRatio: widget.aspectRatio ?? 0.49,
              ),
              itemCount: widget.itemCount,
              itemBuilder: (context, index) =>
                  widget.itemBuilder(context, index)!,
            ),
          );
  }
}
