import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PlatformPicker extends StatelessWidget {
  const PlatformPicker({
    Key? key,
    required List<String>? items,
    void Function(String?)? onChanged,
    this.value,
  })  : _items = items,
        _onChanged = onChanged,
        super(key: key);

  final List<String>? _items;
  final void Function(String?)? _onChanged;
  final String? value;

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      return _buildAndroidPicker();
    } else if (Platform.isIOS) {
      return _buildIosPicker(context);
    } else {
      throw Exception('Widget supports only android and ios');
    }
  }

  Widget _buildAndroidPicker() {
    final items = _items
        ?.map((stringValue) => DropdownMenuItem<String>(
              child: Text(stringValue),
              value: stringValue,
            ))
        .toList();

    return DropdownButton(
      items: items,
      value: value,
      onChanged: _onChanged,
    );
  }

  Widget _buildIosPicker(BuildContext context) {
    final theme = Theme.of(context);

    return SizedBox(
      height: 100,
      child: CupertinoPicker.builder(
        itemExtent: 32.0,
        onSelectedItemChanged: (index) {
          if (_onChanged == null) {
            return;
          }

          final selectedItem = _items![index];
          _onChanged!(selectedItem);
        },
        childCount: _items?.length ?? 0,
        itemBuilder: (context, index) => Center(
          child: Text(
            _items![index],
            style: theme.textTheme.bodyText1,
            textAlign: TextAlign.center,
          ),
        ),
        backgroundColor: theme.primaryColor,
      ),
    );
  }
}
