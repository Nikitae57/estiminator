import 'package:estiminator/core/persentation/app_theme.dart';
import 'package:estiminator/core/persentation/widgets/bottom_button.dart';
import 'package:estiminator/session/domain/model/estimation_scale_domain_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EstimationPicker extends StatelessWidget {
  const EstimationPicker({
    Key? key,
    required this.theme,
    required this.scaleModel,
    required this.scaleValuePickedCallback,
  }) : super(key: key);

  final AppTheme theme;
  final EstimationScaleDomainModel scaleModel;
  final void Function(String) scaleValuePickedCallback;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(theme.bigMargin),
      child: Center(
        child: Wrap(
          runSpacing: theme.defaultMargin,
          children: _getScaleButtons(),
          spacing: theme.defaultMargin,
        ),
      ),
    );
  }

  List<Widget> _getScaleButtons() {
    return scaleModel.values
        .map(
          (scaleValue) => RoundedButton(
            onPressed: () => scaleValuePickedCallback(scaleValue),
            child: Text(scaleValue),
          ),
        )
        .toList();
  }
}
