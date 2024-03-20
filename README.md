# 📑서비스 소개
![캡쳐](https://cdn.discordapp.com/attachments/913024312733204493/1219825059406020608/dd7b56c822c1640d.png?ex=660cb59d&is=65fa409d&hm=64e392b35c130ad387f37b6337796f2340070f3f654360d7fc4d00c7d76efba3&)

마인드 헬퍼는 딥러닝을 활용해 안면 이미지 인식과 감정일기 그리고 설문을 활용한 텍스트 데이터를 통해 사용자의 감정을 분석하고 개인 맞춤형 상담을 추천하는 서비스를 제공하고 있습니다.
- [x] 사용자의 안면 이미지를 통해 얼굴에 드러난 감정을 분석합니다.
- [x] 사용자가 작성한 감정일기를 통해 텍스트 데이터를 수집하여 감정을 긍정/부정을 %로 분석합니다.
- [x] 감정일기를 통해 분석을하면 감정 공감 챗봇이 '위로의 한마디'를 알려줍니다.
- [x] 분석을 통해 부정 지수가 높게 나온 사용자는 우울증 설문 진단을 통해 우울증의 정도를 알 수 있는 우울 지수 점수를 계산할 수 있습니다.
- [x] 상담사와의 1:1 채팅을 통해 간편하고 쉽게 연결할 수 있습니다.

***마인드 헬퍼와 함께 멘탈 케어 서비스를 활용해보세요!***

# 서비스 흐름도
![캡쳐](https://cdn.discordapp.com/attachments/913024312733204493/1219825062044237844/ed8833e50b3b5272.png?ex=660cb59e&is=65fa409e&hm=bc107dcbf4481e20cb14641414425026ea766f5cd2d029239853bab2ac4da20a&)

***플라스크 가상서버와 웹소켓을 통해 클라이언트의 요청을 받으면 딥러닝 모델이 작동되어 예측결과 값을 도출하고 해당 예측값은 데이터베이스에 상담 기초자료로 저장되어 사용자와 상담사가 언제든지 확인할 수 있는 흐름을 가지고 있습니다.***

## 💻 Final App View
<details>
<summary>메인 페이지 (웹 소개)</summary>
<div markdown="1">
  <img src='https://cdn.discordapp.com/attachments/913024312733204493/1219825060379099287/2.jpg?ex=660cb59d&is=65fa409d&hm=e97901d2aadc303dc7b1794f3561c92675949a4c7b12deac875c427083c9afde&'/>  
</div>
</details>
---
<details>
<summary>회원가입 / 로그인 페이지</summary>
<div markdown="1">
  <img src='https://cdn.discordapp.com/attachments/913024312733204493/1219825062828572702/c805e236b59dfb8a.jpg?ex=660cb59e&is=65fa409e&hm=611d6efeca3430fd21e85bc373346982622cedcf10304c6c7a93ef7dd584c693&'/>
  <img src='https://cdn.discordapp.com/attachments/913024312733204493/1219825000010485820/fd7bbe44ee2430ad.jpg?ex=660cb58f&is=65fa408f&hm=a8878256573967957bc294dc7082da8a80f4f9f9b9a16f6c93d023dcac62a8ae&'/>
</div>
</details>
---
<details>
<summary>간편 설문 테스트 페이지</summary>
<div markdown="1">
  <img src='https://cdn.discordapp.com/attachments/913024312733204493/1219824996898312192/2.jpg?ex=660cb58e&is=65fa408e&hm=181a22c799a164eeca4b9f84028978bf4506df82e018e858c74b4f05799f9696&'/>
  <img src='https://cdn.discordapp.com/attachments/913024312733204493/1219824997321674762/bada4f3df995b122.jpg?ex=660cb58e&is=65fa408e&hm=43f2b28d792d6be9b3eddbfb05444d054d2a4eadbbf1a15b0f1d941e2e0bca8d&'/>
</div>
</details>
---
<details>
<summary>간편 이미지 표정 테스트</summary>
<div markdown="1">
  <img src='https://cdn.discordapp.com/attachments/913024312733204493/1219824998332502077/5d141b9f1722ba2f.jpg?ex=660cb58e&is=65fa408e&hm=88f197f2de117a6dc626d684d3dca2bba4a12e1e8e4d129cd84b7eab6434866c&'/>
  <img src='https://cdn.discordapp.com/attachments/913024312733204493/1219824997938499625/2.jpg?ex=660cb58e&is=65fa408e&hm=419d7bfc320532ced8c80516151124bc2ea1a388b4c31095d64227e0334af6a5&'/>
</div>
</details>
---
<details>
<summary>감정일기 페이지</summary>
<div markdown="1">
  <img src='https://cdn.discordapp.com/attachments/913024312733204493/1219824999175819295/4838d51d7380b766.jpg?ex=660cb58f&is=65fa408f&hm=2b81f8734d49813cb78935fd27702f57df1361df6a03fc7a32ffd1d34bee5228&'/>
  <img src='https://cdn.discordapp.com/attachments/913024312733204493/1219824998751928361/2.jpg?ex=660cb58e&is=65fa408e&hm=17579de07e67c7ce17578401b880b6d25b0d8fd5aef87b2d4ce3c0f18e439574&'/>
</div>
</details>
---
<details>
<summary>마이 페이지</summary>
<div markdown="1">
  <img src='https://cdn.discordapp.com/attachments/913024312733204493/1219825000467402893/f5e5561c15d7a389.jpg?ex=660cb58f&is=65fa408f&hm=0694206b84e9c263117e04ede30c3efa14f2c8815aad63b26581698cb2b492ff&'/>
</div>
</details>
---

## TEAM 선샤인즈 ✨
|Role|Name|Position|Github|
|----|----|--------|------|
|팀장|박종환|Back-end|[jhpark9007](https://github.com/Dzeko9)|
|팀원|조현영|Front-end|[chohyeonyoung](https://github.com/chohyeonyoung)|
|팀원|김영효|Front-end|[asefr01](https://github.com/asefr01)|
|팀원|김영재|Data-analyst|[hhccdd18](https://github.com/hhccdd18)|
|팀원|김주형|Data-analyst|[wngud4232](https://github.com/wngud4232)|

## More Info
💡 [Wiki](https://github.com/2021-SMHRD-KDT-BigData-17/MindHelpler/wiki) <br>
💡 [Work-Log](https://github.com/2021-SMHRD-KDT-BigData-17/MindHelpler/wiki/Worklog) <br>
💡 [Tech-Stack](https://github.com/2021-SMHRD-KDT-BigData-17/MindHelpler/wiki/Tech-Stack) <br>
💡 [DB-Schema](https://github.com/2021-SMHRD-KDT-BigData-17/MindHelpler/wiki/DB-Schema) <br>
💡 [Prototype](https://github.com/2021-SMHRD-KDT-BigData-17/MindHelpler/wiki/Prototype) <br>
💡 [트러블슈팅](https://github.com/2021-SMHRD-KDT-BigData-17/MindHelpler/wiki/%ED%8A%B8%EB%9F%AC%EB%B8%94-%EC%8A%88%ED%8C%85)
