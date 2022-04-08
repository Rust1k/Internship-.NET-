using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OOP
{
    class Teacher
    {
        public string Name { get; private set;  }
        public string Surname { get; private set; }

        public void GiveScore(Student student, Lesson lesson, int score)
        {
            student.AddScore(lesson, score);
        }
    }
}
