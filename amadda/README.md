# 📱 Amadda (아맛다)

Flutter 기반 맛집 예약/검색 플랫폼 초기 개발 프로젝트입니다.

---

## 🔧 기술 스택

| 영역     | 사용 기술                   |
| -------- | --------------------------- |
| UI       | Flutter (3.7.2)             |
| 상태관리 | Riverpod (v2.6.1)           |
| 라우티닝 | go_router (v16.0.0)         |
| API 통신 | Dio                         |
| 모델     | freezed + json_serializable |
| 환경변수 | flutter_dotenv              |
| 로그     | logger                      |

---

## 📁 프로젝트 구조

```bash
lib/
├── common/                        # 공통 유틸, 상수 등
├── core/                          # 앱 전역 설정
│   ├── layout/                    # 공통 레이아웃 (e.g. RootTabPage)
│   │   └── root_tab_page.dart
│   ├── network/                   # Dio 등 네트워크 설정
│   │   └── dio_client.dart
│   ├── config.dart                # 앱 설정
│   └── theme.dart                 # 테마 설정
├── features/                      # 기능 단위 화면 구성
│   ├── api/                       # 공용 API 관련
│   │   ├── api_client.dart
│   │   └── api_provider.dart
│   ├── chat/
│   ├── home/
│   ├── mypage/
│   ├── reservation/
│   ├── search/
│   └── user/                      # 초기 구성 확인용(추후 제거)
│       ├── data/
│       │   ├── user_api_client.dart
│       │   └── user_api_client_provider.dart
│       ├── model/
│       │   └── user.dart
│       ├── provider/
│       │   └── user_provider.dart
│       └── view/
│           └── user_page.dart
├── routes/
│   └── app_router.dart            # GoRouter 설정
├── app.dart                       # ProviderScope 및 앱 시작점
└── main.dart                      # main entrypoint
```

---

## 🛠️ 실행 방법

### 1. 패키지 설치

```bash
flutter pub get
```

### 2. `.env` 환경변수 파일 작성

`.env` 파일 생성:

```
BASE_URL=https://jsonplaceholder.typicode.com
```

### 3. 코드 생성 (freezed, json_serializable)

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

### 4. 실행

```bash
flutter run
```

---

## 📦 주요 의존성

```yaml
dependencies:
  flutter_riverpod: ^2.6.1
  go_router: ^16.0.0
  dio: ^5.8.0+1
  freezed_annotation: ^3.1.0
  json_annotation: ^4.9.0
  flutter_dotenv: ^5.2.1
  logger: ^2.6.0

dev_dependencies:
  build_runner: ^2.5.4
  freezed: ^3.1.0
  json_serializable: ^6.9.5
```

---

## 🧪 테스트용 API

예시: `GET /users/1`  
🔗 `https://jsonplaceholder.typicode.com/users/1`

---

## 📌 메모

- 테스트+초기 구성 확인용 유저 기능은 `lib/features/user/` 확인
- controller/provider/view/model 구조를 기능마다 통일 적용 중
