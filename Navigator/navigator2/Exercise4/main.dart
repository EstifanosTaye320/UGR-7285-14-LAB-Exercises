import "package:flutter/material.dart";
import "package:navigation/Exercise4/course_detailes_screen.dart";
import "package:navigation/Exercise4/courses.dart";
import "package:navigation/Exercise4/course_list_screen.dart";

void main() {
  runApp(const CourseApp());
}

class CourseApp extends StatefulWidget {
  const CourseApp({super.key});

  @override
  State<CourseApp> createState() => _CourseAppState();
}

class _CourseAppState extends State<CourseApp> {
  Course? _selectedCourse;

  void _tabHandler(Course course) {
    setState(() {
      _selectedCourse = course;
    });
  }

  List<Course> courses = [
    Course(
        code: "SiTE-001",
        title: "Introduction To Programming",
        description: "Computer Organization, Architecture, Programming"),
    Course(
        code: "SiTE-002",
        title: "Programming of computers",
        description: "You will learn to program computers in this course"),
    Course(
        code: "SiTE-003",
        title: "Basics of Electrical engineering",
        description:
            "You will learn how electrical circuts work in this course")
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Navigator(
        onPopPage: ((route, result) {
          if (!route.didPop(result)) {
            return false;
          }
          setState(() {
            _selectedCourse = null;
          });
          return true;
        }),
        pages: [
          MaterialPage(
            key: const ValueKey('CourseListScreen'),
            child: CoursesListScreen(
              courses: courses,
              onTapped: _tabHandler,
            ),
          ),
          if (_selectedCourse != null)
            MaterialPage(
              key: ValueKey(_selectedCourse),
              child: CourseDetailsScreen(
                course: _selectedCourse!,
              ),
            )
        ],
      ),
    );
  }
}
