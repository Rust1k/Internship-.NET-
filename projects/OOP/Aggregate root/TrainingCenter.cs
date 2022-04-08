using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OOP
{
    class TrainingCenter
    {
        private List<Student> students = new();
        private List<Course> courses = new();
        private List<Teacher> teachers = new();

        public void AddCourse(Course course)
        {
            courses.Add(course);
        }

        public void AddStudent(Student student)
        {
            students.Add(student);
        }
        public IReadOnlyList<Course> GetCourses()
        {
            return this.courses.AsReadOnly();
        }

        public void GiveScore(Student student, Lesson lesson, int score)
        {
            student.AddScore(lesson, score);
        }
    }
}
