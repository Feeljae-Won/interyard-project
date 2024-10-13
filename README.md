# Team Project - InterYard
JSP/Servlet Project

## 발표 자료
- 자세한 내용은 레파지토리에 `[Project]Spring_1team_Bangkok_ppt_240927_1.pdf` 파일 참고

## 프로젝트 개요
* **이름** : Interyard
* **기간** : 2024.07.19 ~ 2024.08.06
* **주제** : 도서, 상품, 티켓 쇼핑
* **설명** : 도서 관련 전문 쇼핑몰로서 다양한 상품과 티켓 예매 등 다양한 종합 문화 쇼핑몰 서비스를 제공
* **목적**
    - 다양한 도서와 공연 티켓 판매로 사용자의 문화 생활 증진
    - 상품 판매 및 투어 관련 상품을 통한 사업 확장성

* **프로젝트 기능 및 담당 역할 (총 7명)**

|**순서**|**이름**|**역할**|**담당 기능**|**비고**|
|---|---|---|---|---|
|1|황문성|팀장|상품 관리|-|
|2|원필재|PM|Q&A 게시판, 상품 후기 시스템|-|
|3|이이섭|부PM|중고 장터 게시판, 댓글 시스템|-|
|4|윤해연|PL|메인, 공지사항 게시판, 이벤트 게시판|-|
|5|박근태|부PL|장바구니, 주문 관리 시스템|-|
|6|전희원|DBA|회원 관리|-|
|7|지유빈|서기|메세지 시스템|-|

## 요구사항 정의
- 자세한 내용은 레파지토리에 `BANGKOK_requiredSpecity.pdf` 파일 참고
![interyard-rs](/upload/interyard-rs.png)

## 각 모듈 개발 범위
![devScope1](/upload/interyard-devScope1.png)
![devScope1](/upload/interyard-devScope2.png)

## 소요 자원

|자원 분류|자원 이름|비고|
|---|---|---|
|**OS**|Window 10, 11|-|
|**DB 설계**|SQL Developer|-|
|**IDE**|Spring Tool Suite 3|-|
|**DBMS**|Oracle 11g XE|-|
|**WAS**|Apache Tomcat 9|-|
|**개발 프레임 워크**|JDK 11, Spring Framework|-|
|**DB 모델링**|ER-Win7|-|
|**Team Work**|Visual SVN|-|
|**Library**|jQuery, Bootstrap4, cos, JSTL, SiteMesh, Mybatis, Lombok|-|

## 메뉴 흐름도
### 회원 관리 - 부PL 함수진
![uf-member](/upload/bangkok-uf-member.png)
### 이벤트 - 부PM 나태준
![uf-event](/upload/bangkok-uf-event.png)
### 항공권 관리 - PM 원필재
![uf-air](upload/bangkok-uf-air.png)
### 항공권 예약 - PL 윤해연
![uf-airReservation](/upload/bangkok-uf-airReservation.png)
### 호텔 관리 - 팀장 박지현
![uf-hotel](/upload/bangkok-uf-hotel.png)
### 호텔 예약 - 부PM 나태준
![uf-hotelReservation](/upload/bangkok-uf-hotelReservation.png)
### 호텔 후기 - 부PM 나태준
![uf-hotelReview](/upload/bangkok-uf-hotelReview.png)
### 여행 정보 게시판 - 서기 고민희
![uf-tripInfo](/upload/bangkok-uf-tripInfo.png)
### 게시판 댓글 기능 - DBA 지유빈
![uf-reply](/upload/bangkok-uf-reply.png)
### 여행 계획 짜기 게시판 - DBA 지유빈
![uf-tripPlan](/upload/bangkok-uf-tripPlan.png)
![uf-tripPlanDetail](/upload/bangkok-uf-tripPlanDetail.png)

## 테이블 정의서
- 자세한 내용은 레파지토리에 `BANGKOK_DBTable.pdf` 파일 참고