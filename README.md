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

```bash
flutter pub get

flutter run
```

### pubspec.yaml

```bash
flutter:
  assets:
    - assets/
```
