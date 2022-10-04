import 'package:flutter/material.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';

void main() {
  KakaoSdk.init(nativeAppKey: KAKAO_NATIVE_KEY);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void _get_user_info() async {
    try {
      User user = await UserApi.instance.me();
      print(
          '사용자 정보 요청 성공\n회원번호: ${user.id}\n닉네임: ${user.kakaoAccount?.profile?.nickname}');
    } catch (error) {
      print('사용자 정보 요청 실패 $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '카카오 로그인',
      home: Container(
        color: Colors.white,
        child: Center(
            child: TextButton(
          child: const Text('카카오로그인'),
          onPressed: () async {
            if (await isKakaoTalkInstalled()) {
              try {
                await UserApi.instance.loginWithKakaoTalk();
                print('카카오톡(인스톨됨)으로 로그인 성공');
                _get_user_info();
              } catch (error) {
                print('카카오톡(인스톨됨)으로 로그인 실패 $error');

                try {
                  await UserApi.instance.loginWithKakaoAccount();
                  print('카카오계정으로 로그인 성공');
                  _get_user_info();
                } catch (error) {
                  print('카카오계정으로 로그인 실패 $error');
                }
              }
            } else {
              try {
                await UserApi.instance.loginWithKakaoAccount();
                print('카카오계정으로 로그인 성공');
                _get_user_info();
              } catch (error) {
                print('카카오 계정으로 로그인 실패 $error');
              }
            }
          },
        )),
      ),
    );
  }
}
