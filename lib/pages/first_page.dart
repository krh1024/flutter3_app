import 'package:flutter/material.dart';
import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:dropdown_button2/dropdown_button2.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  String semester = "학기";
  bool inputing = false;
  final _formKey = GlobalKey<FormState>();

  void fetchData() async {
    final api_url = Uri.parse("https://open.neis.go.kr/hub/schoolInfo?");
    http.Response response = await http.get(api_url);
    print(response.body);
    print(response.statusCode);
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }








  final List<String> items = [
    '재외한국학교 교육청',
    '서울특별시 교육청',
    '세종특별자치시 교육청',
    '부산광역시 교육청',
    '대구광역시 교육청',
    '인천광역시 교육청',
    '광주광역시 교육청',
    '대전광역시 교육청',
    '울산광역시 교육청',
    '경기도 교육청',
    '강원도 교육청',
    '충청북도 교육청',
    '충청남도 교육청',
    '전라북도 교육청',
    '전라남도 교육청',
    '경상북도 교육청',
    '경상남도 교육청',
    '제주특별자치도 교육청',
  ];

  String? selectedValue;



  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(15, 10, 15, 20),
      child: Container(
        child: Column(
          children: <Widget>[
            SizedBox(
              width: double.infinity,
              height: 80,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("해당지역 교육청 선택",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w900
                      ),
                    ),
                  )
                ],
              ),
            ),
            DropdownButton2(
                hint: Text("교육청 선택"),
                items: items
                    .map((item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ).toList(),
              value: selectedValue,
              onChanged: (value) {
                setState(() {
                  selectedValue = value as String;
                });
              },
              icon: const Icon(
                Icons.arrow_forward_ios_outlined,
              ),
              iconSize: 14,
              iconEnabledColor: Colors.black,
              iconDisabledColor: Colors.grey,
              buttonHeight: 60,
              buttonWidth: 400,
              buttonPadding: const EdgeInsets.only(left: 14, right: 14),
              buttonDecoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                border: Border.all(
                  color: Colors.black26,
                ),
                color: Colors.lightGreen,
              ),
              buttonElevation: 2,
              itemHeight: 50,
              itemPadding: const EdgeInsets.only(left: 14, right: 14),
              dropdownMaxHeight: 400,
              dropdownWidth: 400,
              dropdownPadding: const EdgeInsets.only(left: 14, right: 14),
              dropdownDecoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: Colors.green,
              ),
              dropdownElevation: 8,
              scrollbarRadius: const Radius.circular(40),
              scrollbarThickness: 6,
              scrollbarAlwaysShow: true,
            ),
            SizedBox(
              width: double.infinity,
              height: 80,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("우리아이 정보입력",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w900
                      ),
                    ),
                  )
                ],
              ),
            ),
            /** 전송 폼 데이터 */
            Form(
              key: _formKey,
              child: Column(
                children: [
                  /** 학교 */
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return '학교명을 입력해주세요';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "학교",
                      ),
                    ),
                  ),
                  /** 학년, 반, 학기 */
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
                        child: SizedBox(
                          width: 100,
                          child: TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return '';
                              }
                              return null;
                            },
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "학년",
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(15, 0, 0, 15),
                        child: SizedBox(
                          width: 100,
                          child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return '';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: "반",
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 0, 15),
                        child: SizedBox(
                          width: 100,
                          child: TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return '';
                              }
                              return null;
                            },
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(),
                              labelText: semester,
                            ),
                            focusNode: FocusNode(),
                          ),
                        ),
                      ),
                    ],
                  ),
                  /** 학년, 반, 학기 끝 */
                ],
              ),
            ),
            /** 완료 버튼 */
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  setState(() {
                    inputing = true;
                  });
                  AnimatedSnackBar.rectangle(
                    '입력 성공',
                    '우리아이 정보를 입력하였습니다',
                    type: AnimatedSnackBarType.success,
                    brightness: Brightness.light
                  ).show(context);
                }
              },
              child: const Text("입력"),
            ),
            inputing ? Container(child: Text("있음"),) : SizedBox(child: Text("없음"),)
            /** 완료버튼 끝 */
          ],
        ),
      ),
    );
  }
}

