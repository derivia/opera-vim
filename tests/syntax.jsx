import React from "react";

// Some commentary
const Animal = ({ name, type }) => {
	const makeSound = () => {
		switch (type) {
			case "dog":
				return `${name} barks!`;
			case "cat":
				return `${name} meows!`;
			default:
				return `${name} makes a sound.`;
		}
	};

	return (
		<div>
			<h2>
				{name} the {type}
			</h2>
			<p>{makeSound()}</p>
		</div>
	);
};

const App = () => {
	return (
		<div>
			<h1>Animal Sounds</h1>
			<Animal name="Rex" type="dog" />
		</div>
	);
};

export default App;
