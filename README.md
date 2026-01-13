# BMI (IMC) Calculator App — Flutter

A Flutter mobile application developed as an academic project to calculate Body Mass Index (BMI / IMC) based on height and weight.  
The app displays the BMI result, its classification, and personalized recommendations with dynamic images.

## App Flow

1. User enters height (cm) and weight (kg)
2. The app calculates the BMI
3. A result screen shows:
   - BMI value
   - Classification
   - Health recommendation
   - Visual feedback (image)

## Features

- Height and weight input
- BMI calculation using the official formula
- Automatic classification:
  - Underweight
  - Normal
  - Overweight
  - Obesity I, II, III
- Results screen with dynamic UI
- Flutter navigation between pages
- Asset-based UI (background, logo, BMI illustrations)

## Tech Stack

- **Flutter**
- **Dart 3 (Null Safety)**
- Material UI

## BMI Formula

The BMI is calculated using:

`BMI = (weight / (height * height)) * 10000`

> Height is provided in centimeters (cm), so the `* 10000` factor converts it properly.

## Project Structure

- lib/
- pages/
  - home.dart
  - resultados.dart
- assets/
  - fundofit.jpg
  - imc_logo.jpg
  - imc_01.png
  - imc_02.png
  - imc_03.png
  - imc_04.png
  - imc_05.png
  - imc_06.png

## Getting Started

### Prerequisites

- Flutter installed (Flutter 3+ recommended)
- Dart 3+

### Install dependencies

### pubspec.yaml

```bash
flutter:
  assets:
    - assets/
```

```bash
flutter pub get

flutter run
```

## 📚 Project Background

This application was developed as part of an academic project entitled:

**“Projeto de Aplicativo para Auxílio a Pessoas”**  
Authors: **Gabriel Aires & Luiz Luz**

The project explores how a digital platform can help people improve their physical and mental well-being through the use of Body Mass Index (BMI), self-image awareness, and professional guidance.

Although this is not a formal scientific paper, the project was based on research concepts related to health, self-esteem, and the impact of digital platforms on human behavior. The goal was to design and prototype a solution that could support people in developing healthier habits.

The project investigated topics such as:

- Body image and self-perception
- Motivation and adherence to healthy routines
- The influence of social media on self-esteem and mental health
- The importance of professional guidance (nutritionists, psychologists, coaches)

During the validation phase, users raised questions about how they would interact with health professionals inside the app, highlighting the importance of combining technology with human support.

The current Flutter application represents the **first functional MVP** of this academic project.

---

## 📄🎨 Academic Project Document & Prototype (UX/UI)

You can access the full academic project document here:

🔗 **Project article:**  
[Download the article (PDF)](docs/article.pdf)

---

## 🔮 Future Work & Product Vision

Based on the academic project and UX prototype, the future vision includes:

- User avatar and body visualization
- Integration with health professionals (nutritionists, psychologists, coaches)
- Personalized health and weight-loss plans
- Mental health and motivation support
- Progress tracking and analytics
- Educational content for healthy lifestyle changes

This roadmap connects the academic project, UX prototype, and Flutter MVP into a single coherent product vision.

---

## 🧠 What I Learned

- Flutter UI and widget composition
- Navigation between screens
- Handling user input with `TextEditingController`
- Implementing business logic (BMI calculation)
- Conditional rendering based on data
- Asset management in Flutter
- Dart null safety
