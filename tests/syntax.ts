// Some commentary
interface Animal {
	name: string;
	type: string;
	makeSound(): void;
}

class Dog implements Animal {
	name: string;
	type: string;

	constructor(name: string, type: string) {
		this.name = name;
		this.type = type;
	}

	makeSound(): void {
		console.log(`${this.name} barks.`);
	}
}

/*
 * Some longer commentary
 */
enum AnimalType {
	Dog = "dog",
	Cat = "cat",
	Bird = "bird",
}

function greet<T extends Animal>(animal: T): string {
	return `Hello, ${animal.name} the ${animal.type}!`;
}

const dog = new Dog("Rex", AnimalType.Dog);
dog.makeSound();
console.log(greet(dog));

const fetchData = async (url: string): Promise<void> => {
	try {
		const response = await fetch(url);
		const data: unknown = await response.json();
		console.log("Fetched data:", data);
	} catch (error) {
		console.error("Error fetching data:", error);
	}
};

fetchData("https://api.example.com/data");
