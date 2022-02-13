import  java.util.*;
public class school {
    public static void main (String[]args){
        Scanner input=new Scanner(System.in);
        String s= input.nextLine();
         int x = input.nextInt();
        worker w1=new worker(s, "mo",x,"married",true);
        w1.print();
        teacher t1=new teacher("math","ahmed",33,"Single",true);
        teacher t2=new teacher("science","tokyo",40,"married",false);
        System.out.println(teacher.cnt);
        System.out.println("please enter status of student  ");
        String st= input.next();
        System.out.println("please enter student degree ");
        int deg= input.nextInt();
        System.out.println("please enter student age ");
        int ag= input.nextInt();
        System.out.println("please enter student YOG ");
        int yog= input.nextInt();
        System.out.println("please enter student name ");
        String nm= input.next();
        System.out.println("are student male ? ");
        boolean ml= input.hasNext();
        student s1=new student(deg,yog,nm,ag,st,ml);
            s1.PrintData();
    }
}
class person{
    String name ;
    int age ;
    String status;
    boolean IsMale;

    person(String name,int age, String status, boolean IsMale)
    {
        this.age=age;
        this.name=name;
        this.status=status;
        this.IsMale=IsMale;
    }
    public  void print(){
        System.out.println("this father class");
    }
    public void PrintData(){
        System.out.print("name is : "+ name +" age is :"+age+" status :"+status);
    }
}
class student extends person {
    int degree;
    int YOG;

    public student(int degree, int YOG, String name, int age, String status, boolean IsMale) {
        super(name, age, status, IsMale);
        this.degree = degree;
        this.YOG = YOG;
    }

    @Override
    public void print() {
        System.out.println("STUDENT");
    }
    @Override
    public void PrintData() {
        super.PrintData();
        System.out.println(" degree is: "+degree+" year of graduate is : "+YOG);
    }
}
class teacher extends person {
    String spc;
    static int cnt=0;

    public teacher(String spc, String name, int age, String status, boolean IsMale) {
        super(name, age, status, IsMale);
        this.spc = spc;
        cnt++;
    }
}
class worker extends person {
    private String dep;

    public worker(String dep, String name, int age, String status, boolean IsMale) {
        super(name, age, status, IsMale);
        this.dep = dep;

    }

    public void setDep(String dep) {
        this.dep = dep;
    }

    public String getDep()
    {
        return dep;
    }


    @Override
    public void print() {
        System.out.println("WORKER");
    }
}

