import 'package:anipay_flutter/logic_layer/functions/function_types.dart';
import 'package:flutter/material.dart';

class MyDropdownButton<T> extends StatefulWidget {
  MyDropdownButton(this.values, this.textValue,
      {Key? key,
      this.onChanged,
      this.onItemTapped,
      this.isEnabled = false,
      this.value,
      this.validator,
      this.formKey,
      this.textInCenter = false})
      : super(key: key);

  // Function defaultOnItemTapped;
  final List<T> values;
  final DropdownTextClosure<T> textValue;
  final OnChangedDropdownClosure<T>? onChanged;
  final bool isEnabled;
  Function(dynamic)? onItemTapped;
  final dynamic value;
  String? Function(dynamic value)? validator;
  Key? formKey;
  bool? textInCenter;

  // final DropdownButton<T> myDropdownButton;

  @override
  _MyDropdownButtonState createState() => _MyDropdownButtonState<T>();
}

class _MyDropdownButtonState<T> extends State<MyDropdownButton<T>> {
  // T? get selectedValue => widget.values[0];
  dynamic selectedValue;
  DropdownButtonFormField<T> _myDropdownButton<T>(
    List<T> values,
    DropdownTextClosure<T> textValue,
  ) {
    // int index = ;
    List<DropdownMenuItem<T>>? itemms = values.map((T e) {
      return DropdownMenuItem(
          onTap: (values.indexOf(e) != 0 && widget.onItemTapped != null)
              ? () {
                  setState(() {
                    selectedValue = e;
                    widget.onItemTapped!(e);
                  });
                }
              : null,
          value: e,
          child: widget.textInCenter ?? false ? Center(child: Text(textValue(e))) : Text(textValue(e)));
    }).toList();
    return DropdownButtonFormField<T>(
      items: itemms,
      isExpanded: true,
      // value: values[],
      value: selectedValue ?? widget.value,
      // style: TextStyle(),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      // values.first,

      onChanged: widget.isEnabled
          ? (obj) {
              // if (values.indexOf(obj!) > 0) {
              //   onChanged(obj);
              // }
            }
          : null,
      validator: widget.validator,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(key: widget.formKey, child: _myDropdownButton<T>(widget.values, widget.textValue));
  }
}
