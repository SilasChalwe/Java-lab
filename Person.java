public class Person {
    String name;
    int age;

    public void introduce() {
        System.out.println("Hello, my name is " + name + " and I am " + age + " years old.");
    }

    public static void main(String[] args) {
        Person person = new Person();
        person.name = "Silas";
        person.age = 25;
        person.introduce();
    }
}
