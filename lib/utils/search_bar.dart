import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({
    super.key,
    required this.onChanged,
  });
  final Function(String) onChanged;

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  late TextEditingController _textEditingController;
  //appbar
  late String searchString;
  void setSearchString(String value) => setState(() {
        searchString = value;
      });

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
      ),
      child: TextField(
        onChanged: widget.onChanged,
        controller: _textEditingController,
        textAlignVertical: TextAlignVertical.center,
        textInputAction: TextInputAction.search,
        decoration: InputDecoration(
            border: InputBorder.none,
            isDense: true,
            contentPadding:
                kIsWeb ? const EdgeInsets.only(top: 10) : EdgeInsets.zero,
            prefixIconConstraints: const BoxConstraints(
              minHeight: 36,
              minWidth: 36,
            ),
            prefixIcon: const Icon(
              Icons.search,
            ),
            hintText: "Search for a product",
            suffixIconConstraints: const BoxConstraints(
              minHeight: 36,
              minWidth: 36,
            ),
            suffixIcon: IconButton(
              constraints: const BoxConstraints(
                minHeight: 36,
                minWidth: 36,
              ),
              splashRadius: 24,
              icon: const Icon(
                Icons.clear,
              ),
              onPressed: () {
                _textEditingController.clear();
                widget.onChanged(_textEditingController.text);
                FocusScope.of(context).unfocus();
              },
            )),
      ),
    );
  }
}
