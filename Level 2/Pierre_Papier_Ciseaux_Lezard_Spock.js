const readline = require('readline');

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});
resultats = {
    'Pierre': {
        'Ciseaux': 'Joueur 1 gagne',
        'Lézard': 'Joueur 1 gagne',
        'Papier': 'Joueur 2 gagne',
        'Spock': 'Joueur 2 gagne'
    },
    'Papier': {
        'Pierre': 'Joueur 1 gagne',
        'Spock': 'Joueur 1 gagne',
        'Ciseaux': 'Joueur 2 gagne',
        'Lézard': 'Joueur 2 gagne'
    },
    'Ciseaux': {
        'Papier': 'Joueur 1 gagne',
        'Lézard': 'Joueur 1 gagne',
        'Pierre': 'Joueur 2 gagne',
        'Spock': 'Joueur 2 gagne'
    },
    'Lézard': {
        'Papier': 'Joueur 1 gagne',
        'Spock': 'Joueur 1 gagne',
        'Pierre': 'Joueur 2 gagne',
        'Ciseaux': 'Joueur 2 gagne'
    },
    'Spock': {
        'Pierre': 'Joueur 1 gagne',
        'Ciseaux': 'Joueur 1 gagne',
        'Papier': 'Joueur 2 gagne',
        'Lézard': 'Joueur 2 gagne'
    }
}

const options = ["Pierre", "Papier", "Ciseaux", "Lezard", "Spock"];

function playGame(userChoice) {
  const computerChoice = options[Math.floor(Math.random() * 5)];

  console.log(`tu as choisis ${userChoice}`);
  console.log(`ardinateur a choisis ${computerChoice}`);

  if (userChoice === computerChoice) {
    console.log("It's a tie!");
  } else {
	  console.log(resultats[userChoice][computerChoice]);
  }

  rl.close();
}

function askUser() {
	rl.question("Choose rock, paper or scissors: ", (userChoice) => {
    if (options.includes(userChoice)) {
      playGame(userChoice);
    } else {
		  console.log("Invalid choice");
		  askUser();
	  }
  });
}
  
askUser();