// Some commentary
class Animal {
    private String name;
    private String type;

    public Animal(String name, String type) {
        this.name = name;
        this.type = type;
    }

    public void makeSound() {
        switch (type) {
            case "dog":
                System.out.println(name + " barks!");
                break;
            case "cat":
                System.out.println(name + " meows!");
                break;
            default:
                System.out.println(name + " makes a sound.");
        }
    }
}

/*
 * Some longer commentary
 */
public class Main {
    public static void main(String[] args) {
        Animal dog = new Animal("Rex", "dog");
        dog.makeSound();

        try {
            int result = 10 / 0;
        } catch (ArithmeticException e) {
            System.out.println("Caught exception: " + e.getMessage());
        }
    }
}

