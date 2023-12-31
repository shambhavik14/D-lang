import std.stdio;

/***************************
* The following is an interface that allows funtions
* like assingments and exam to adatee interface
*
*/

interface RegularCourse {
    /** The course has assignments in the curriculum
     *
     */
    public string assignments();

    /** The course has exam in the curriculum
     *
    */ 
    public string exam();
}

/**
* A class that implements RegularCourse interface
*/
 
class Fse : RegularCourse{
    
    public string assignments()
    {
        return "FSE has assignments";
    }
    public string exam()
    {
        return "FSE has exams";
    }
}

/****************************
* Interface HeavyCourse is the target interface 
*/
 
interface HeavyCourse{
    
    /*
    * The course has midterm in the curriculum
    */
    public string midterm();
}
 
/**
* Class Pdp implements the interface HeavyCourse
*
*/
class Pdp : HeavyCourse
{
    public string midterm()
    {
        return "Pdp course has midterm";
    }
}

/**
* Class CourseAdapter implements the interface HeavyCourse
* The client expects to use this interface
*/
 
class CourseAdapter : HeavyCourse
{
    /**
    * Instantiating the interface we want to adapt
    */
    RegularCourse course;

    /**
    * Contructor with a reference to the object we are adapting
    */
    this(RegularCourse course)
    {
        this.course = course;
    }

    /**
     * Translating methods from adapter class
     */
    public string midterm()
    {
	string result = course.exam();
	return result;
    }
}

/**
* A unit test to test the functionality of adapter class
*/

unittest {
  Fse fse = new Fse();
  string answer = fse.assignments();
  assert(answer == "FSE has assignments");
}

/**
* A unit test to test the functionality of the adaptee interface 
*/

unittest {
  HeavyCourse heavy = new Pdp();
  string answer = heavy.midterm();
  assert(answer == "Pdp course has midterm");
}

/**
* A unit test to test if adaptee interface is behaving
* like adapter interface
*/

unittest {
  Fse fse = new Fse();
  HeavyCourse courseAdapter = new CourseAdapter(fse);
  string answer = courseAdapter.midterm();
  assert(answer == "FSE has exams");
}

void main() {

}
    
