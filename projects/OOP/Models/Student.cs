using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OOP
{
    class Student
    {
        public string Name { get; private set; }
        public string Surname { get; init; }

        private readonly ICollection<Course> courses = new List<Course>();

        // has score int type?
        private readonly Dictionary<Lesson, int> scores = new();
        //private readonly Dictionary<Course, Dictionary<Lesson, int>> scores = new();

        public void EnrollCourse(Course course)
        {
            courses.Add(course);
        }

        public IReadOnlyCollection<Course> GetCourses()
        {
            return this.courses.ToList().AsReadOnly();
        }

        public void AddScore(Lesson lesson, int score)
        {
            scores.Add(lesson, score);
        }

        public void GetFinalScore(Course course)
        {
            throw new NotImplementedException();
        }
    }
}
