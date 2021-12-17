# 🏋🏻GymCarry Project🏋 

> 나와 꼭 맞는 트레이너를 만날 수 있게 만든 일반회원(멤버) - 트레이너(캐리) 1 : 1 매칭 프로그램 그리고 운동커뮤니티 및 운동 기록 & 관리 서비스

![image](https://user-images.githubusercontent.com/83346234/143384195-7f3b998e-b7ae-49d3-856e-35abe8f613d8.png)


## 바로가기

1. [제작 기간 & 참여 인원](#1-제작-기간--참여-인원)
2. [사용 기술](#2-사용-기술)
3. [배포 주소](#3-배포-주소-바로가기)
4. [기능 소개](#4-기능-소개)

<br>

## 1. 제작 기간 & 참여 인원

* 2021.08 ~ 2021.09 (1개월) 

* 팀원 : [황지원](https://github.com/jiwondotcom), [김승민](https://github.com/seungmin1592), [김아름](https://github.com/kimrumm), [김명호](https://github.com/ricky9397), [김훈](https://github.com/alghrksl), [신은경](https://github.com/heybrilliant)

<br>

## 2. 사용 기술

<img width="1404" alt="스크린샷 2021-12-09 오후 10 56 00" src="https://user-images.githubusercontent.com/83346234/145409502-31e69811-0291-4c99-85b1-9cc9329e924b.png">


<br>

## 3. [배포 주소 바로가기](http://ec2-54-180-94-234.ap-northeast-2.compute.amazonaws.com:8080/gym/index)

```
회원 로그인 계정 : 111@111.com / 1234
캐리(코치) 로그인 계정 : 12@123.com / 1234
```



## 4. 기능 소개

- 회원가입
  - Java Mail API를 통해 회원가입시 인증 메일 전송
  - 비밀번호 암호화 처리 - SHA256 암호화를 이용하여 비밀번호 암호화 시킨 후 DB에 저장 

+ 아이디 / 비밀번호 찾기
  * 이메일 주소 확인 후 이메일로 새 임시번호 발송. 

- 로그인
  - 멤버(회원) / 캐리(코치) 로그인
  - SNS 로그인 - kakao & Google 로그인 API 사용. 
    
+ 1:1 매칭 서비스
  + 설문조사 -> 결과보기 -> 조건에 부합하는 캐리 리스트 출력

- 캐리 상세페이지
  + 캐리소개, 캐리 후기(작성가능), 소속플레이스, 지도, 프로필사진, 결제 가격 출력

* 결제
  + i'mport API로 KG이니시스 결제 가능

+ 1:1 실시간 채팅
  * Web Socket으로 실시간 양방향 통신
  - 페이지 접송 중 실시간 메세지 미리보기 알림 서비스 제공
  - 채팅방에서 캐리 상세페이지 이동, 캐리 찜하기, 채팅방 삭제, 결제하기 가능
  - 캐리 찜하기 클릭 시 MY BODY '내가 찜한 캐리' 목록에서 확인 가능
  - 결제하기 클릭 시 결제 페이지로 이동

- 플레이스
  - 카카오 지도, 네이버 지도 API 사용
  - 헬스, 필라테스, 요가 업체 정보 제공 (Python으로 Beatifulsoup, Selenium 라이브러리를 통해 동적 크롤링을 구현하여 원하는 데이터 가공) 
  - 자동 완성 검색 기능 (jQuery UI Autocomplete)

    

+ 플레이스 상세페이지
  - 업체 사진, 이름, 업체 소개, 업체 주소, 전화번호 제공
  - Swiper.js 플러그인을 통해 상단 플레이스 이미지 자동 슬라이드 구현 
  - 카카오 지도 API로 정확한 위치 출력

    

- 커뮤니티 (게시판)
  - 전체 /소통 / 질문답변 카테고리 구분
  - 페이징 기능
  - 글 상세페이지 진입 시 조회수 카운
  - CKEditor API로 게시글 작성 구현 (파일업로드 및 꾸미기 기능)
  - 댓글 & 좋아요 Ajax를 사용하여 페이지 Reload 없이 출력
  - 좋아요 빈 하트 클릭 시 빨간 하트로 변경
  - 비회원은 게시글 읽기만 가능 
  - 수정 및 삭제 - Session을 통해 본인이 작성한 글이 아닐 경우 해당 버튼 비노출

    

+ MY BODY (멤버-회원)
  * 회원의 마이페이지 기능
  * 캘린더, 일정 메모, 눈바디(사진업로드), 오늘의 체중, 식단 불러오기 및 작성 기능
  * 기본정보 수정 가능 (비밀번호, 닉네임, 핸드폰번호, 프로필사진)
  * 내가 작성한 글, 결제 내역, 내가 찜한 캐리 리스트 확인 가능

    

- MY PAGE (캐리-코치)
  - FullCalendar API로 일정 관리 가능
  - API에 입력된 데이터를 리스트 형태로 추출하여 저장 -> Ajax로 서버에 전송하여 DB에 저장한다.
  - 나를 결제한 회원 리스트 출력
  - 캐리 기본 정보 수정 (프로필사진, 비밀번호, 닉네임, 핸드폰번호)
  - 캐리 정보 수정 (자기소개, 소속플레이스, 종목, 전문분야, PT이용금액, 자격 및 경력, 바디프로필)

* 관리자 페이지
  * 커뮤니티 게시판 및 관리자 게시판 작성,수정,삭제 기능 
  * 년도별 총 매풀, 월별 매출, 요일별 매출, 월별 매출 판매왕 리스트 출력
  * Bootstrap으로 제작. 
    <br>

## 5. 간단한 테스트 영상

<img width="1404" alt="스크린샷 2021-12-09 오후 10 56 00" src="https://user-images.githubusercontent.com/83346234/145409502-31e69811-0291-4c99-85b1-9cc9329e924b.png">


<br>

## ERD
![gymexerd](https://user-images.githubusercontent.com/83346234/143384401-9bc642b7-587d-4bce-bf3c-e1b066972a32.png)
