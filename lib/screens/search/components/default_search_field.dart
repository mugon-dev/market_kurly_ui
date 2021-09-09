import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DefaultSearchField extends StatefulWidget {
  const DefaultSearchField({Key? key}) : super(key: key);

  @override
  _DefaultSearchFieldState createState() => _DefaultSearchFieldState();
}

class _DefaultSearchFieldState extends State<DefaultSearchField> {
  // 키보드의 focus 상태를 얻고 키보트 이벤트를 처리하는데 사용
  FocusNode _focusNode = FocusNode();
  bool isFocus = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // 키보드 해제
    // TextFormField의 focus된 상태를 제거하고 사용하지 않는 FocusNode를 제공해서 키보드 종료
    SystemChannels.textInput.invokeMethod('TextInput.hide');
    _focusNode.addListener(() {
      _onFocusChange();
    });
  }

  void _onFocusChange() {
    setState(() {
      isFocus = !isFocus;
    });
  }

  // Text(취소)를 눌렀을때 focus가 된 상태를 제거
  void _unFocus() {
    _focusNode.unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            focusNode: _focusNode,
            decoration: InputDecoration(
              border: InputBorder.none,
              filled: true,
              fillColor: Colors.grey[100],
              hintText: "검색어를 입력해 주세요",
              prefixIcon: Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ),
          ),
        ),
        Container(
          width: isFocus ? 50 : 0,
          child: isFocus
              ? Center(
                  child: GestureDetector(
                    onTap: _unFocus,
                    child: Text(
                      "취소",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                )
              : SizedBox(),
        )
      ],
    );
  }
}
