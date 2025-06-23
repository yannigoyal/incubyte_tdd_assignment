# Incubyte TDD Assignment

This is a TDD-based solution written in Dart for the Incubyte Software Craftsperson role.

## 🛠️ Tech Stack

- **Language:** Dart
- **Test Framework:** `test` package

---

## 🚀 How to Run the Project

### 1. Install Dependencies

```bash
dart pub get

Project Structure:

.
├── bin/
│   └── string_calculator.dart        # Core implementation
├── test/
│   └── string_calculator_test.dart  # TDD-based test cases
├── pubspec.yaml
└── README.md


Test Case 1:

test: add test for empty string input
feat: return 0 for empty input

Test Case 2:

test: test for single number
feat: return number

Test Case 3:

test: test for comma seperated numbers in string
feat: return sum of numbers

Test Case 4:

test: test for multiple comma separated numbers
feat: handle unknown quantity of numbers

Test Case 5:

test: test for newline as delimiter
feat: support newline in addition to comma

Test Case 6:

test: test for custom delimiter
feat: support custom delimiters using //;\n syntax

Test Case 7:

test: test for single negative number
feat: throw exception when negative number is passed

Test Case 8:

test: test for multiple negative numbers
feat: throw exception listing all negative numbers

Test Case 9:

test: test for ignoring numbers > 1000
feat: skip numbers greater than 1000 in sum



