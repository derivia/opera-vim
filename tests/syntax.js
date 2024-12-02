// Some commentary
class Animal {
	constructor(name, type) {
		this.name = name;
		this.type = type;
	}

	makeSound() {
		console.log(`${this.name} makes a sound.`);
	}
}

const greet = (animal) => `Hello, ${animal.name}!`;

const dog = new Animal("Rex", "dog");
dog.makeSound();
console.log(greet(dog));

/*
 * Some longer commentary
 */
const fetchData = async (url) => {
	try {
		const response = await fetch(url);
		const data = await response.json();
		console.log("Fetched data:", data);
	} catch (error) {
		console.error("Error fetching data:", error);
	}
};

fetchData("https://api.example.com/data");
