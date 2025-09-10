# 2025_2 게임엔진 기초 (게임그래픽학과 전공교과)

동명대학교 게임학부 강영민 교수

수업의 목표: 게임 개발에 사용되는 게임 엔진(Game Engine)의 기본 개념, 구조, 그리고 핵심 기능들을 학습하는 과목입으로, 학생들이 게임 엔진의 작동 원리를 이해하고, 이를 바탕으로 간단한 게임 요소를 구현할 수 있는 기초적인 역량을 갖추도록 한다.

수업의 내용

* 게임 엔진의 구성 요소와 작동 원리를 이해한다.
* 2D 및 3D 그래픽 처리의 기본 개념을 익힌다.
* 씬(Scene), 오브젝트(Object), 컴포넌트(Component), 렌더링(Rendering), 충돌 처리(Collision), 입력(Input) 등 게임 개발의 핵심 개념을 배운다.
* 간단한 게임 기능을 직접 구현해 보며 게임 엔진 구조를 실습한다.

강의 자료: 홈페이지 공개 자료 및 유인물

### 참고 강의
[Modern Game Engine - Learning notes for Game 104](https://github.com/randaldong/ModernGameEngine/tree/main)


### 간단한(?) 게임 엔진
[피콜로 엔진](https://github.com/BoomingTech/Piccolo)

## 과제

### 과제 1
집에 있는 컴퓨터나 가지고 있는 노트북에 간단한 엔진을 설치해 본다. (Piccolo Engine)

## Lec 0: 엔진 설치

[피콜로 엔진 설치]

> cmake -S . -B build 

- engine\3rdparty\tinyobjloader\CMakeLists.txt: 5: cmake_minimum_required 3.5 )


> cd build
> cmake --build . --config Release

-  endgin\3rdparty\JoltPhysics\Jolt\Core\JobSystemThreadPool.cpp  (include <chrono.h> and make its literal avalable)

```
#include <chrono>
using namespace std::chrono_literals;
```

### Lec 1: 게임엔진 소개

[강의노트 1 Overview of Game Engine]()
