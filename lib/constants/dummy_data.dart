const DUMMY_DATA_QUOTES = const [
  {
    "quote_id": 1,
    "quote": "I am not in danger, Skyler. I am the danger!",
    "author": "Walter White",
    "series": "Breaking Bad"
  },
  {
    "quote_id": 2,
    "quote": "Stay out of my territory.",
    "author": "Walter White",
    "series": "Breaking Bad"
  },
  {
    "quote_id": 3,
    "quote": "IFT",
    "author": "Skyler White",
    "series": "Breaking Bad"
  },
  {
    "quote_id": 4,
    "quote":
        "I watched Jane die. I was there. And I watched her die. I watched her overdose and choke to death. I could have saved her. But I didn’t.",
    "author": "Walter White",
    "series": "Breaking Bad"
  },
  {
    "quote_id": 5,
    "quote": "Say my name.",
    "author": "Walter White",
    "series": "Breaking Bad"
  },
  {
    "quote_id": 6,
    "quote":
        "Congratulations, you’ve just left your family a second-hand Subaru.",
    "author": "Saul Goodman",
    "series": "Breaking Bad"
  },
  {
    "quote_id": 7,
    "quote":
        "Yeah, you do seem to have a little s*** creek action going... You know, FYI, you can buy a paddle.",
    "author": "Saul Goodman",
    "series": "Breaking Bad"
  },
  {
    "quote_id": 8,
    "quote": "Tread lightly.",
    "author": "Walter White",
    "series": "Breaking Bad"
  },
  {
    "quote_id": 9,
    "quote": "Funyuns are awesome.",
    "author": "Jesse Pinkman",
    "series": "Breaking Bad"
  },
  {
    "quote_id": 10,
    "quote": "Ooooooh, wire.",
    "author": "Jesse Pinkman",
    "series": "Breaking Bad"
  },
  {
    "quote_id": 11,
    "quote": "A robot?!",
    "author": "Jesse Pinkman",
    "series": "Breaking Bad"
  },
  {
    "quote_id": 12,
    "quote": "What good is being an outlaw when you have responsibilities.",
    "author": "Jesse Pinkman",
    "series": "Breaking Bad"
  },
  {
    "quote_id": 13,
    "quote": "You forgot your ice trays! YOU'RE GONNA NEED THE ICE TRAYS!",
    "author": "Jesse Pinkman",
    "series": "Breaking Bad"
  },
  {
    "quote_id": 14,
    "quote":
        "Yeah, and thanks, Daddy Warbucks, but that was before my housing situation went completely testicular on me, okay?",
    "author": "Jesse Pinkman",
    "series": "Breaking Bad"
  },
  {
    "quote_id": 15,
    "quote":
        "How am I supposed to live here now, huh? My whole house smells like toe cheese and dry cleaning.",
    "author": "Jesse Pinkman",
    "series": "Breaking Bad"
  },
  {
    "quote_id": 16,
    "quote": "I'm a blow fish! Yeah, Blow fishin' this up!",
    "author": "Jesse Pinkman",
    "series": "Breaking Bad"
  },
  {
    "quote_id": 17,
    "quote": "Yeah, totally Kafkaesque",
    "author": "Jesse Pinkman",
    "series": "Breaking Bad"
  },
  {
    "quote_id": 18,
    "quote":
        "We make poison for people who don’t care. We probably have the most unpicky customers in the world.",
    "author": "Jesse Pinkman",
    "series": "Breaking Bad"
  },
  {
    "quote_id": 19,
    "quote": "You don’t need a criminal lawyer. You need a criminal lawyer",
    "author": "Jesse Pinkman",
    "series": "Breaking Bad"
  },
  {
    "quote_id": 20,
    "quote": "Oh well, heil Hitler, b****!",
    "author": "Jesse Pinkman",
    "series": "Breaking Bad"
  },
  {
    "quote_id": 21,
    "quote": "Yeah, science!",
    "author": "Jesse Pinkman",
    "series": "Breaking Bad"
  },
  {
    "quote_id": 22,
    "quote": "Yeah, b****! Magnets!",
    "author": "Jesse Pinkman",
    "series": "Breaking Bad"
  },
  {
    "quote_id": 23,
    "quote":
        "Yo 148, 3-to-the-3-to-the-6-to-the-9. Representin’ the ABQ. What up, biatch? Leave it at the tone!",
    "author": "Jesse Pinkman",
    "series": "Breaking Bad"
  },
  {
    "quote_id": 24,
    "quote": "Jesus Christ, Marie. They're minerals!",
    "author": "Hank Schrader",
    "series": "Breaking Bad"
  },
  {
    "quote_id": 25,
    "quote": "My name is Skyler White, yo.",
    "author": "Skyler White",
    "series": "Breaking Bad"
  },
  {
    "quote_id": 26,
    "quote":
        "Someone has to protect this family, from the man that protects this family.",
    "author": "Skyler White",
    "series": "Breaking Bad"
  },
  {
    "quote_id": 27,
    "quote": "Shut up! Shut up! Shut up!",
    "author": "Skyler White",
    "series": "Breaking Bad"
  },
  {
    "quote_id": 28,
    "quote": "I'm waiting for the cancer to come back.",
    "author": "Skyler White",
    "series": "Breaking Bad"
  },
  {
    "quote_id": 29,
    "quote": "I can't remember the last time I was happy.",
    "author": "Skyler White",
    "series": "Breaking Bad"
  },
  {
    "quote_id": 30,
    "quote": "You're my free pass.... Bitch!",
    "author": "Jesse Pinkman",
    "series": "Breaking Bad"
  },
  {
    "quote_id": 63,
    "quote":
        "Chemistry is the study of matter, but I prefer to see it at the study of change.",
    "author": "Walter White",
    "series": "Breaking Bad"
  },
  {
    "quote_id": 64,
    "quote":
        "You asked me if I was in the meth business or the money business. Neither. I am in the empire business",
    "author": "Walter White",
    "series": "Breaking Bad"
  },
  {
    "quote_id": 65,
    "quote":
        "Smoking marijuana, eating cheetos, and masturbating do not constitute plans in my book.",
    "author": "Walter White",
    "series": "Breaking Bad"
  },
  {
    "quote_id": 66,
    "quote":
        "I did it for me. I liked it. I was good at it. And I was really... I was alive.",
    "author": "Walter White",
    "series": "Breaking Bad"
  },
  {
    "quote_id": 67,
    "quote": "We're done when i say we're done.",
    "author": "Walter White",
    "series": "Breaking Bad"
  },
  {
    "quote_id": 68,
    "quote":
        "Did you not plan for this contingency? I mean, the Starship Enterprise had a self-destruct button.",
    "author": "Saul Goodman",
    "series": "Breaking Bad"
  },
  {
    "quote_id": 69,
    "quote": "There's no honor among thieves... Except for us of course.",
    "author": "Saul Goodman",
    "series": "Breaking Bad"
  },
  {
    "quote_id": 70,
    "quote": "Don't drink and drive. But if you do, call me.",
    "author": "Saul Goodman",
    "series": "Breaking Bad"
  },
  {
    "quote_id": 71,
    "quote": "Some people are immune to good advice.",
    "author": "Saul Goodman",
    "series": "Breaking Bad"
  },
  {
    "quote_id": 72,
    "quote": "You either run from things, or you face them, Mr. White.",
    "author": "Jesse Pinkman",
    "series": "Breaking Bad"
  },
  {
    "quote_id": 73,
    "quote":
        "You add a plus douce bag to a minus douche bag and you get, like, zero douche bags.",
    "author": "Jesse Pinkman",
    "series": "Breaking Bad"
  },
  {
    "quote_id": 74,
    "quote": "Yeah, totally Kafkaesque.",
    "author": "Jesse Pinkman",
    "series": "Breaking Bad"
  },
  {
    "quote_id": 75,
    "quote": "Hey, you girls. Want to meet my fat stack?",
    "author": "Jesse Pinkman",
    "series": "Breaking Bad"
  },
  {
    "quote_id": 76,
    "quote": "Everyone sounds like Meryl Streep with a gun to their head.",
    "author": "Mike Ehrmantraut",
    "series": "Breaking Bad"
  },
  {
    "quote_id": 77,
    "quote":
        "The next time you bring a gun to a job without telling me, I will stick it up your ass sideways.",
    "author": "Mike Ehrmantraut",
    "series": "Breaking Bad"
  },
  {
    "quote_id": 78,
    "quote": "You know how they say, 'It's been a pleasure?' It hasn't.",
    "author": "Mike Ehrmantraut",
    "series": "Breaking Bad"
  },
  {
    "quote_id": 79,
    "quote":
        "Big doings today. The order of the day is 'eyes open, mouth shut.'",
    "author": "Mike Ehrmantraut",
    "series": "Breaking Bad"
  },
  {
    "quote_id": 80,
    "quote":
        "You're an insane, degenerate piece of filth, and you deserve to die.",
    "author": "Walter White",
    "series": "Breaking Bad"
  },
  {
    "quote_id": 81,
    "quote": "You two suck at peddling meth.",
    "author": "Saul Goodman",
    "series": "Breaking Bad"
  },
  {
    "quote_id": 82,
    "quote": "Mas his death satisfy you.",
    "author": "Gus Fring",
    "series": "Breaking Bad"
  },
  {
    "quote_id": 83,
    "quote": "La familia es todo.",
    "author": "Hector Salamanca",
    "series": "Breaking Bad"
  },
  {
    "quote_id": 84,
    "quote":
        "I will kill your wife, I will kill your son, I will kill your infant daughter.",
    "author": "Gus Fring",
    "series": "Breaking Bad"
  },
  {
    "quote_id": 85,
    "quote": "It’s discreet, like a stripper pole in a mosque.",
    "author": "Jimmy McGill",
    "series": "Better Call Saul"
  },
  {
    "quote_id": 86,
    "quote": "I'm a lawyer, not a criminal",
    "author": "Jimmy McGill",
    "series": "Better Call Saul"
  },
  {
    "quote_id": 87,
    "quote":
        "Only two things I know about Albuquerque – Bugs Bunny should’ve taken a left turn there. And give me a hundred tries, I’ll never be able spell it.",
    "author": "Jimmy McGill",
    "series": "Better Call Saul"
  },
  {
    "quote_id": 88,
    "quote":
        "I am not good at Building Shit , you know I’m excellent at Tearing it down",
    "author": "Jimmy McGill",
    "series": "Better Call Saul"
  },
  {
    "quote_id": 89,
    "quote":
        "I know what stopped me. And you know what? It’s never stopping me again.",
    "author": "Jimmy McGill",
    "series": "Better Call Saul"
  },
  {
    "quote_id": 90,
    "quote": "Perfection is the Enemy of Perfectly Adequate",
    "author": "Jimmy McGill",
    "series": "Better Call Saul"
  },
  {
    "quote_id": 91,
    "quote": "Hail Satan. I submit to the dark side.",
    "author": "Jimmy McGill",
    "series": "Better Call Saul"
  },
  {
    "quote_id": 92,
    "quote": "There’s no honor among thieves… except for us of course",
    "author": "Jimmy McGill",
    "series": "Better Call Saul"
  },
  {
    "quote_id": 93,
    "quote": "Some people are immune to good advice.",
    "author": "Jimmy McGill",
    "series": "Better Call Saul"
  },
  {
    "quote_id": 94,
    "quote": "Money is the Point.",
    "author": "Jimmy McGill",
    "series": "Better Call Saul"
  },
  {
    "quote_id": 95,
    "quote": "You Know the expression it’s been a pleasure... well it hasn’t.",
    "author": "Mike Ehrmantraut",
    "series": "Better Call Saul"
  },
  {
    "quote_id": 96,
    "quote":
        "Winning Doesn’t Always Mean Getting a Favorable Verdict at Trial.",
    "author": "Kim Wexler",
    "series": "Better Call Saul"
  },
  {
    "quote_id": 97,
    "quote": "You know what happened. The question is, can you live with it?",
    "author": "Mike Ehrmantraut",
    "series": "Better Call Saul"
  },
  {
    "quote_id": 98,
    "quote":
        "Slippin’ Jimmy with a law degree is like a chimp with a machine gun",
    "author": "Chuck McGill",
    "series": "Better Call Saul"
  },
  {
    "quote_id": 99,
    "quote":
        "No one ever accused you of being lazy.. every other sin in the book , but not that one.",
    "author": "Chuck McGill",
    "series": "Better Call Saul"
  },
  {
    "quote_id": 100,
    "quote": "FYI, old people adore me.",
    "author": "Jimmy McGill",
    "series": "Better Call Saul"
  },
  {
    "quote_id": 101,
    "quote":
        "I'm gonna be a damn good lawyer, and people are gonna know about it",
    "author": "Jimmy McGill",
    "series": "Better Call Saul"
  },
  {
    "quote_id": 102,
    "quote": "S'all good, man.",
    "author": "Jimmy McGill",
    "series": "Better Call Saul"
  }
];
