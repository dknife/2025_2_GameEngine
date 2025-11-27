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

[강의노트 1 Overview of Game Engine](https://github.com/dknife/2025_2_GameEngine/raw/main/LectureNotes/Lecture%2001_Overview%20of%20Game%20Engine%20K.pdf)


### Lec 2: 게임엔진의 계층

[강의노트 2 Layers](https://github.com/dknife/2025_2_GameEngine/raw/main/LectureNotes/Lecture%2002_Layered%20Architecture%20of%20Game%20Engine%20K.pdf)

### Lec 3: 게임의 구성

[강의노트 3 Game World](https://github.com/dknife/2025_2_GameEngine/raw/main/LectureNotes/Lecture%2003_How%20to%20Build%20a%20Game%20World%20K.pdf)

[강의노트 3-B 실습: 실제 게임엔진의 설치와 사용 (Unity, Godot)](https://github.com/dknife/2025_2_GameEngine/raw/main/LectureNotes/LecEx1_Unity_Godot%EC%9D%B5%EC%88%99%ED%95%B4%EC%A7%80%EA%B8%B0.pdf)

* [project example](https://github.com/dknife/2025_2_GameEngine/raw/main/Projects/project1/3d_squash_the_creeps_starter.zip)

* [참고 스크립트](https://github.com/dknife/2025_2_GameEngine/wiki/2025GE_firstscript)

### Verse8 특강

### Lec 4: 게임엔진과 렌더링

[강의노트 4 게임 렌더링 기초](https://github.com/dknife/2025_2_GameEngine/raw/main/LectureNotes/Lecture%2004_Rendering%20in%20Game%20Engine_Basics%20of%20Game%20Rendering%20K.pdf)

[강의노트 4-B 고도 엔진 Shader 실습](https://github.com/dknife/2025_2_GameEngine/raw/main/LectureNotes/LecEx2_GodotShader%EC%82%AC%EC%9A%A9%ED%95%B4%EB%B3%B4%EA%B8%B0.pdf)

* [Ocean Shader](https://docs.google.com/document/d/1oH7YqjDFJtVOlfsmHCGpJ8riYdrRH_V3LUsAmdrnWPw/edit?usp=sharing)

### Lec 5: 렌더링 2

[강의노트 5 게임엔진의 렌더링 이론과 활용](https://github.com/dknife/2025_2_GameEngine/raw/main/LectureNotes/Lecture%2005_Rendering%20in%20Game%20Engine_Lighting_Materials%20and%20Shaders.pdf)

* [Resources](https://github.com/dknife/2025_2_GameEngine/raw/main/Projects/resource_shading.zip)

### Lec 6: 애니메이션 기초

[강의노트 6 게임엔진에 사용되는 애니메이션 기술 기초](https://github.com/dknife/2025_2_GameEngine/raw/main/LectureNotes/Lecture%2008_Animation%20System_Basics%20of%20Animation%20Technology.pdf)

[강의 노트 6-B 고도 엔진 애니메이션 연습](https://github.com/dknife/2025_2_GameEngine/raw/main/LectureNotes/LecEx6_%EC%8A%A4%EC%BC%88%EB%A6%AC%ED%86%A4%EC%95%A0%EB%8B%88%EB%A9%94%EC%9D%B4%EC%85%98.pdf)

* [캐릭터 스프라이트](https://github.com/dknife/2025_2_GameEngine/blob/main/Projects/gBot_complete.webp)
* [캐릭터 구성 요소 스프라이트](https://github.com/dknife/2025_2_GameEngine/blob/main/Projects/gBot_pieces.png)
 

### Lec 7: 애니메이션 블렌딩

[강의노트 7 다양한 애니메이션 기술](https://github.com/dknife/2025_2_GameEngine/raw/main/LectureNotes/Lecture%2009_Animation%20System_Advanced%20Animation%20Technology.pdf)

[강의노트 7-B 애니메이션 데이터 통합 FBX 만들기 + 블렌딩 실습](https://github.com/dknife/2025_2_GameEngine/raw/main/LectureNotes/LecEx7_AnimationClips.pdf)


### Lec 8: 물리기반 애니메이션 - 개념

[강의노트 8 물리기반 애니메이션 개념](https://github.com/dknife/2025_2_GameEngine/raw/main/LectureNotes/Lecture%2010_Physics%20System_Basic%20Concepts.pdf)

[강의노트 8-B 물리엔진 사용하기](https://github.com/dknife/2025_2_GameEngine/raw/main/LectureNotes/LecEx8_PhysicsTest.pdf)


* [기본실습 - 물리운동 스크립트 + RigidBody3D](https://github.com/dknife/2025_2_GameEngine/tree/main/LectureNotes/PhysicsTest01)
* [물리객체 자동 생성](https://github.com/dknife/2025_2_GameEngine/tree/main/LectureNotes/PhysicsTest02)

### Lec 9: Effects

[강의노트 9 입자시스템 Particle System](https://github.com/dknife/2025_2_GameEngine/raw/main/LectureNotes/Lecture%2012_Effects.pdf)

[강의노트 9-B 입자시스템 활용]()
