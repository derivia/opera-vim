// Some commentary
#[derive(Debug)]
struct Animal {
    name: String,
    kind: AnimalKind,
}

#[derive(Debug)]
enum AnimalKind {
    Dog,
    Cat,
    Bird,
}

impl Animal {
    fn make_sound(&self) {
        match self.kind {
            AnimalKind::Dog => println!("{} barks!", self.name),
            AnimalKind::Cat => println!("{} meows!", self.name),
            AnimalKind::Bird => println!("{} chirps!", self.name),
        }
    }
}

/*
 * Some longer commentary
 */
fn main() {
    let dog = Animal {
        name: String::from("Rex"),
        kind: AnimalKind::Dog,
    };

    dog.make_sound();

    let result: Result<i32, &str> = Err("Something went wrong");
    match result {
        Ok(value) => println!("Success: {}", value),
        Err(error) => eprintln!("Error: {}", error),
    }
}
