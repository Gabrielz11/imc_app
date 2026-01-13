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

This project was developed as part of an academic assignment entitled:

**“Implementação de App para Cálculo de IMC”**  
Authors: Gabriel Aires & Luiz Carlos

The goal of the project was to design and implement a mobile application capable of calculating the Body Mass Index (BMI) based on user input (height in cm and weight in kg), validating the data, and presenting a clear health classification.

The current application includes:

- Input validation for height and weight
- BMI calculation
- Classification of the result
- A results screen where users can review and recalculate their BMI

The BMI ranges and health classifications were based on data from the Brazilian Association for the Study of Obesity and Metabolic Syndrome (ABESO). :contentReference[oaicite:2]{index=2}

This Flutter app represents the **functional MVP** delivered for the academic project.

## 🔮 Future Vision

During the development of the project and the UX prototyping phase, a broader digital health platform was envisioned. This future version could include:

- User avatars and body visualization
- Integration with health professionals
- Personalized health plans
- Mental health and motivation support

These features are **not implemented yet** and are part of the future roadmap inspired by the original academic work.

---

## 📄🎨 Academic Project Document & Prototype (UX/UI)

You can access the full academic project document here:

🔗 **Project article MVP:**
[Download the MVP (PDF)](docs/article_MVP.pdf)

🔗 **Project article for Future:**  
[Download the article (PDF)](docs/article_for_future.pdf)

---

## 🧠 What I Learned

- Flutter UI and widget composition
- Navigation between screens
- Handling user input with `TextEditingController`
- Implementing business logic (BMI calculation)
- Conditional rendering based on data
- Asset management in Flutter
- Dart null safety
