import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:input_quantity/input_quantity.dart';
import 'package:t_shirt/core/helpers/spacing.dart';
import 'package:t_shirt/core/theming/colors.dart';

import 'counter_widget.dart';

class ItemDataInfoWidget extends StatefulWidget {
  const ItemDataInfoWidget(
      {super.key, required this.itemName, required this.itemDescription});

  final String itemName;
  final String itemDescription;
  @override
  State<ItemDataInfoWidget> createState() => _ItemDataInfoWidgetState();
}

class _ItemDataInfoWidgetState extends State<ItemDataInfoWidget> {
  bool _isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  widget.itemName,
                  style: TextStyle(
                    color: ColorsManager.darkBlue,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              horizontalSpace(10),
              const Expanded(child: CounterWidget()),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Divider(),
          ),
          DescriptionWidget(
            description: widget.itemDescription,
            isExpanded: _isExpanded,
            onToggle: () {
              setState(() {
                _isExpanded = !_isExpanded;
              });
            },
          ),
        ],
      ),
    );
  }
}

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({
    super.key,
    required this.description,
    required this.isExpanded,
    required this.onToggle,
  });

  final String description;
  final bool isExpanded;
  final VoidCallback onToggle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AnimatedSize(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          child: Text(
            description,
            style: TextStyle(
              color: ColorsManager.darkBlue,
              fontSize: 15.sp,
            ),
            maxLines: isExpanded ? null : 1,
            overflow: isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
          ),
        ),
        verticalSpace(5),
        GestureDetector(
          onTap: onToggle,
          child: Text(
            isExpanded ? "Load Less" : "Load More..",
            style: TextStyle(
              color: ColorsManager.darkBlue,
              fontSize: 12.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
