import 'package:widgetbook/widgetbook.dart';

enum ContainerType {
  xsmall,
  small,
  medium,
  large,
  xlarge,
  xxlarge,
}

class ContainerTypeKnob extends Knob<ContainerType> {
  ContainerTypeKnob._({
    required super.label,
    required super.initialValue,
  }) : super(isNullable: false);

  static ContainerTypeKnob from({
    required String label,
    required ContainerType initialValue,
  }) {
    return ContainerTypeKnob._(
      initialValue: initialValue,
      label: label,
    );
  }

  static const String _fieldLabel = 'Container type';

  @override
  List<Field> get fields => [
        ListField<ContainerType>(
          initialValue: initialValue,
          name: _fieldLabel,
          values: ContainerType.values,
        ),
      ];

  @override
  ContainerType valueFromQueryGroup(Map<String, String> group) {
    return valueOf(_fieldLabel, group);
  }
}

extension ContainerTypeKnobBuilder on KnobsBuilder {
  ContainerType containerType({
    required String label,
    ContainerType initialValue = ContainerType.small,
  }) =>
      onKnobAdded(
        ContainerTypeKnob.from(
          initialValue: initialValue,
          label: label,
        ),
      )!;
}
