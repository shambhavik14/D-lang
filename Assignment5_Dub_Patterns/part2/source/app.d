import std.stdio;

interface RegularCourse {
    // course implement RegularCourse interface that allows
    // them assignments and exam adaptee interface
    public void assignments();
    public void exam();
}
 
class Fse : RegularCourse{
    // a concrete implementation of RegularCourse
    public void assignments()
    {
        writeln("FSE has assignments");
    }
    public void exam()
    {
        writeln("FSE has exams");
    }
}
 
interface HeavyCourse{
    // target interface
    public void midterm();
}
 
class Pdp : HeavyCourse
{
    public void midterm()
    {
        writeln("Pdp course has midterm");
    }
}
 
class CourseAdapter : HeavyCourse
{
    // You need to implement the interface your
    // client expects to use.
    RegularCourse course;
    this(RegularCourse course)
    {
        // we need reference to the object we
        // are adapting
        this.course = course;
    }
 
    public void midterm()
    {
        // translate the methods appropriately
        course.exam();
    }
}
 
unittest {
  Fse fse = new Fse();
  String answer = fse.assignments();
  assert(answer == "FSE has assignments");
}

unittest {
  HeavyCourse heavy = new Pdp();
  String answer = heavy.midterm();
  assert(answer == "Pdp course has midterm")
}

unittest {
  HeavyCourse courseAdapter = new CourseAdapter(fse);
  courseAdapter.midterm();
  assert(answer == "FSE has exams")
}

void main() {

}
    
