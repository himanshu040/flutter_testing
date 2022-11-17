# flutter_testing

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

FLUTTER TESTING

UNIT TESTING - 


Unit tests are handy for verifying the behavior of a single function, method, or class. The test package provides the core framework for writing unit tests, and the flutter_test package provides additional utilities for testing widgets.
This recipe demonstrates the core features provided by the test package using the following steps:
Add the test or flutter_test dependency.
Create a test file.
Create a class to test.
Write a test for our class.
Combine multiple tests in a group.
Run the tests.
 
1.1 Add the Test dependency
The test package provides the core functionality for writing tests in Dart. This is the best approach when writing packages consumed by web, server, and Flutter apps.
In pubspec.yaml file - 

 
Dependencies are packages that are included in your app during compilation while dev_dependencies are packages that you use during developing your app and these are not included in the APK
 
1.2 Create a test file
In this example, create two files: encryption.dart and encryption_test.dart.
The encryption.dart file contains a class that you want to test and resides in the lib folder. The encryption_test.dart file contains the tests themselves and lives inside the test folder.
In general, test files should reside inside a test folder located at the root of your Flutter application or package. Test files should always end with _test.dart, this is the convention used by the test runner when searching for tests.
When you’re finished, the folder structure should look like this:
example_app/
  lib/
    encryption.dart
  test/
   encryption_test.dart
 
1.3 Create a class to test
Next, you need a “unit” to test. Remember: “unit” is another name for a function, method, or class. For this example, create an Encrypt class inside the lib/encrypt.dart file. It is responsible for encrypting and decrypting value.
 
1.4  Write a test for our class
Inside the encryption_test.dart file, write the first unit test. Tests are defined using the top-level test function, and you can check if the results are correct by using the top-level expect function. Both of these functions come from the test package.

 
1.5  Combine multiple test in group
If you have several tests that are related to one another, combine them using the group function provided by the test package.

1.6  Run the tests
Now that you have an Encrypt class with tests in place, you can run the tests.

2.  WIDGET TESTING - 

Widget testing is otherwise called component testing. As its name proposes, it is utilized for testing a single widget, and the objective of this test is to check whether the widget works and looks true to form.

Likewise, you can utilize the WidgetTester utility for various things while testing, for example, sending input to a widget, finding a part in the widget tree, confirming values, etc.

Step 1: Add the dependencies

          Add the flutter_test dependency to pubspec — yaml file.

Step 2: Create a widget to test.
 
We need a “widget” to test. 
For this example, create a HomeView widget inside the lib/homeview.dart file. It is responsible for encrypting and decrypting value.

Step 3: Create a testWidgets test.

In this example, create  file: encryption_widget_test.dart.
The HomeView.dart file contains a widget that you want to test and resides in the lib folder. The encryption_widget_test.dart file contains the tests themselves and lives inside the test folder.
With a widget to test, begin by writing your first test. Use the testWidgets() function provided by the flutter_test package to define a test. The testWidgets function allows you to define a widget test and creates a WidgetTester to work with.
This test verifies that MyWidget displays a given title and message. It is titled accordingly, and it will be populated in the next section.

Step 4: Build the widget using the WidgetTester.

Next, build MyWidget inside the test environment by using the pumpWidget() method provided by WidgetTester. The pumpWidget method builds and renders the provided widget.

Notes about the pump() methods : 

After the initial call to pumpWidget(), the WidgetTester provides additional ways to rebuild the same widget. This is useful if you’re working with a StatefulWidget or animations.

For example, tapping a button calls setState(), but Flutter won’t automatically rebuild your widget in the test environment. Use one of the following methods to ask Flutter to rebuild the widget.

tester.pump(Duration duration) :
Schedules a frame and triggers a rebuild of the widget. If a Duration is specified, it advances the clock by that amount and schedules a frame. It does not schedule multiple frames even if the duration is longer than a single frame.

 Note: To kick off the animation, you need to call pump() once (with no duration specified) to start the ticker. Without it, the animation does not start.

tester.pumpAndSettle() :
Repeatedly calls pump() with the given duration until there are no longer any frames scheduled. This, essentially, waits for all animations to complete.
These methods provide fine-grained control over the build lifecycle, which is particularly useful while testing.


Step 5: Search for the widget using a Finder.

With a widget in the test environment, search through the widget tree for the title and message Text widgets using a Finder. This allows verification that the widgets are being displayed correctly.

For this purpose, use the top-level find() method provided by the flutter_test package to create the Finders. Since you know you’re looking for Text widgets, use the find.text() method.



Step 6: Verify the widget using a Matcher.

Finally, verify the title and message Text widgets appear on screen using the Matcher constants provided by flutter_test. Matcher classes are a core part of the test package, and provide a common way to verify a given value meets expectations.

Ensure that the widgets appear on screen exactly one time. For this purpose, use the findsOneWidget Matcher.

Additional Matchers

In addition to findsOneWidget, flutter_test provides additional matchers for common cases.
findsNothing
           Verifies that no widgets are found.
findsWidgets
             Verifies that one or more widgets are found.

findsNWidgets
            Verifies that a specific number of widgets are found.







A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)
  
To get full documentaion visit the below documentation - 

-[google doc file](https://docs.google.com/document/d/1UAZTx6fvf6Xq96xRQA0DvIH34_7Hd78CHIVMAF4Kr3Q/edit?usp=sharing)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
