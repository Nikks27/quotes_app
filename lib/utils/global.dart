import 'package:flutter/material.dart';

List theme = [
  'assets/theme/1.jpeg',
  'assets/theme/2.jpg',
  'assets/theme/3.jpeg',
  'assets/theme/4.jpeg',
  'assets/theme/5.jpg',
  'assets/theme/6.jpeg',
  'assets/theme/7.jpg',
  'assets/theme/8.webp',
  'assets/theme/9.jpeg',
  'assets/theme/10.jpeg',
  'assets/theme/11.jpg',
  'assets/theme/12.jpg',
  'assets/theme/13.jpeg',
  'assets/theme/14.jpg',
  'assets/theme/15.jpg',
  'assets/theme/16.jpg',
  'assets/theme/17.jpeg',
  'assets/theme/18.jpg',
  'assets/theme/19.jpeg',
  'assets/theme/20.JPG',
  'assets/theme/21.jpeg',
];

var selectedTheme = 'assets/theme/21.jpeg';

var selectedFontFamily = 'Fredericka the Great';

List fontFamily = [
  'Fredericka the Great',
  'Indie Flower',
  'Graduate',
  'Luckiest Guy',
  'Rock Salt',
  'Syne Mono',
  'Rubik Moonrocks',
];

List<Color> colorList = [
  Colors.white,
  Colors.blue,
  Colors.grey,
  Colors.amber,
  Colors.teal,
  Colors.orange,
  Colors.green,
  Colors.deepPurple,
  Colors.black,
  Colors.brown,
  Colors.cyan,
  Colors.pink,
  Colors.red,
];
Color selectColor = Colors.white;

List topic = [
  {'img': 'assets/topic/creative.jpeg', 'topic': 'Creativity'},
  {'img': 'assets/topic/positivity.jpeg', 'topic': 'Positivity'},
  {'img': 'assets/topic/respect.webp', 'topic': 'Respect'},
  {'img': 'assets/topic/family.jpg', 'topic': 'Family'},
  {'img': 'assets/topic/focus.jpg', 'topic': 'Focus'},
  {'img': 'assets/topic/edu.jpg', 'topic': 'Education'},
  {'img': 'assets/topic/love.webp', 'topic': 'Love'},
  {'img': 'assets/topic/divorce.webp', 'topic': 'Divorce'},
  {'img': 'assets/topic/breakup.jpeg', 'topic': 'Breakup'},
  {'img': 'assets/topic/change.jpg', 'topic': 'Change'},
  {'img': 'assets/topic/enterpreneur.jpg', 'topic': 'Enterpreneur'},
  {'img': 'assets/topic/friend.webp', 'topic': 'Friend'},
  {'img': 'assets/topic/freedom.jpeg', 'topic': 'Freedom'},
  {'img': 'assets/topic/goal.jpeg', 'topic': 'Goal'},
  {'img': 'assets/topic/happiness.webp', 'topic': 'Happiness'},
  {'img': 'assets/topic/hope.jpg', 'topic': 'Hope'},
  {'img': 'assets/topic/images.jpeg', 'topic': 'Health'},
  {'img': 'assets/topic/leader.jpg', 'topic': 'Leader'},
  {'img': 'assets/topic/marrige.jpeg', 'topic': 'Marriage'},
  {'img': 'assets/topic/money.webp', 'topic': 'Money'},
  {'img': 'assets/topic/Discipline.webp', 'topic': 'Discipline'},
  {'img': 'assets/topic/success.jpg', 'topic': 'Success'},
  {'img': 'assets/topic/sad.jpeg', 'topic': 'Sad'},
  {'img': 'assets/topic/sports.webp', 'topic': 'Sports'},
  {'img': 'assets/topic/trust.jpg', 'topic': 'Trust'},
  {'img': 'assets/topic/strong.jpg', 'topic': 'Strong'},
  {'img': 'assets/topic/kind.jpeg', 'topic': 'Kind'},
];

TextAlign align = TextAlign.center;

List Catagory = [];

List Catlist = [
  {
    "quote": "Love is a game that two can play and both win.",
    "author": "Eva Gabor",
    "cat": 'Love',
  },
  {
    "quote": "I have found the one whom my soul loves.",
    "author": "Song of Solomon 3:4",
    "cat": 'Love',
  },
  {
    "quote":
    "Being deeply loved by someone gives you strength, while loving someone deeply gives you courage.",
    "author": "Lao Tzu",
    "cat": 'Love',
  },
  {
    "quote":
    "In the arithmetic of love, one plus one equals everything, and two minus one equals nothing.",
    "author": "Mignon McLaughlin",
    "cat": 'Love',
  },
  {
    "quote": "To love and be loved is to feel the sun from both sides.",
    "author": "David Viscott",
    "cat": 'Love',
  },
  {
    "quote": "Love is like the wind, you can't see it but you can feel it.",
    "author": "Nicholas Sparks",
    "cat": 'Love',
  },
  {
    "quote":
    "The best love is the kind that awakens the soul and makes us reach for more, that plants a fire in our hearts and brings peace to our minds.",
    "author": "Nicholas Sparks",
    "cat": 'Love',
  },
  {
    "quote":
    "The heart wants what it wants. There's no logic to these things. You meet someone and you fall in love and that's that.",
    "author": "Woody Allen",
    "cat": 'Love',
  },
  {
    "quote": "Love is composed of a single soul inhabiting two bodies.",
    "author": "Aristotle",
    "cat": 'Love',
  },
  {
    "quote":
    "The greatest happiness you can have is knowing that you do not necessarily require happiness.",
    "author": "William Saroyan",
    "cat": 'Love',
  },
  {
    "quote":
    "Love is not just looking at each other, it's looking in the same direction.",
    "author": "Antoine de Saint-Exupéry",
    "cat": 'Love',
  },
  {
    "quote":
    "Love recognizes no barriers. It jumps hurdles, leaps fences, penetrates walls to arrive at its destination full of hope.",
    "author": "Maya Angelou",
    "cat": 'Love',
  },
  {
    "quote":
    "I love you not only for what you are, but for what I am when I am with you.",
    "author": "Elizabeth Barrett Browning",
    "cat": 'Love',
  },
  {
    "quote":
    "Love is the answer, and you know that for sure; Love is a flower, you've got to let it grow.",
    "author": "John Lennon",
    "cat": 'Love',
  },
  {
    "quote": "To love is to burn, to be on fire.",
    "author": "Jane Austen",
    "cat": 'Love',
  },
  {
    "quote": "The best way to predict the future is to create it.",
    "author": "Abraham Lincoln",
    "cat": 'Positive',
  },
  {
    "quote": "Believe you can and you're halfway there.",
    "author": "Theodore Roosevelt",
    "cat": 'Positive',
  },
  {
    "quote":
    "The only limit to our realization of tomorrow will be our doubts of today.",
    "author": "Franklin D. Roosevelt",
    "cat": 'Positive',
  },
  {
    "quote": "With the new day comes new strength and new thoughts.",
    "author": "Eleanor Roosevelt",
    "cat": 'Positive',
  },
  {
    "quote":
    "You are never too old to set another goal or to dream a new dream.",
    "author": "C.S. Lewis",
    "cat": 'Positive',
  },
  {
    "quote": "You must be the change you wish to see in the world.",
    "author": "Mahatma Gandhi",
    "cat": 'Positive',
  },
  {
    "quote":
    "Success is not final, failure is not fatal: It is the courage to continue that counts.",
    "author": "Winston Churchill",
    "cat": 'Positive',
  },
  {
    "quote":
    "Happiness is not something readymade. It comes from your own actions.",
    "author": "Dalai Lama",
    "cat": 'Positive',
  },
  {
    "quote": "In the middle of difficulty lies opportunity.",
    "author": "Albert Einstein",
    "cat": 'Positive',
  },
  {
    "quote":
    "Optimism is the faith that leads to achievement. Nothing can be done without hope and confidence.",
    "author": "Helen Keller",
    "cat": 'Positive',
  },
  {
    "quote": "The only way to do great work is to love what you do.",
    "author": "Steve Jobs",
    "cat": 'Positive',
  },
  {
    "quote": "The purpose of our lives is to be happy.",
    "author": "Dalai Lama",
    "cat": 'Positive',
  },
  {
    "quote":
    "Every day may not be good, but there is something good in every day.",
    "author": "Unknown",
    "cat": 'Positive',
  },
  {
    "quote": "You miss 100% of the shots you don't take.",
    "author": "Wayne Gretzky",
    "cat": 'Positive',
  },
  {
    "quote":
    "Keep your face always toward the sunshine—and shadows will fall behind you.",
    "author": "Walt Whitman",
    "cat": 'Positive',
  },
  {
    "quote":
    "Your present circumstances don't determine where you can go; they merely determine where you start.",
    "author": "Nido Qubein",
    'cat': 'Health',
  },
  {
    "quote": "The only journey is the one within.",
    "author": "Rainer Maria Rilke",
    'cat': 'Health',
  },
  {
    "quote":
    "The greatest glory in living lies not in never falling, but in rising every time we fall.",
    "author": "Nelson Mandela",
    'cat': 'Health',
  },
  {
    "quote":
    "What lies behind us and what lies before us are tiny matters compared to what lies within us.",
    "author": "Ralph Waldo Emerson",
    'cat': 'Health',
  },
  {
    "quote": "The only way to do great work is to love what you do.",
    "author": "Steve Jobs",
    'cat': 'Health',
  },
  {
    "quote":
    "You are never too old to set another goal or to dream a new dream.",
    "author": "C.S. Lewis",
    'cat': 'Health',
  },
  {
    "quote": "Believe you can and you're halfway there.",
    "author": "Theodore Roosevelt",
    'cat': 'Health',
  },
  {
    "quote":
    "The only person you are destined to become is the person you decide to be.",
    "author": "Ralph Waldo Emerson",
    'cat': 'Health',
  },
  {
    "quote": "The greatest wealth is mental health.",
    "author": "Unknown",
    'cat': 'Health',
  },
  {
    "quote":
    "You don't have to control your thoughts. You just have to stop letting them control you.",
    "author": "Dan Millman",
    'cat': 'Health',
  },
  {
    "quote":
    "Your mental health is a priority. Your happiness is essential. Your self-care is a necessity.",
    "author": "Unknown",
    'cat': 'Health',
  },
  {
    "quote":
    "You, yourself, as much as anybody in the entire universe, deserve your love and affection.",
    "author": "Buddha",
    'cat': 'Health',
  },
  {
    "quote":
    "The thing about recovery is that it’s not a destination. It’s a journey.",
    "author": "Unknown",
    'cat': 'Health',
  },
  {
    "quote": "Self-care is how you take your power back.",
    "author": "Lalah Delia",
    'cat': 'Health',
  },
  {
    "quote":
    "Sometimes the people around you won't understand your journey. They don't need to, it's not for them.",
    "author": "Joubert Botha",
    'cat': 'Health',
  },
  {
    "quote": "Discipline is the bridge between goals and accomplishment.",
    "author": "Jim Rohn",
    'cat': 'Discipline',
  },
  {
    "quote": "With self-discipline, most anything is possible.",
    "author": "Theodore Roosevelt",
    'cat': 'Discipline',
  },
  {
    "quote":
    "We must all suffer one of two things: the pain of discipline or the pain of regret.",
    "author": "Jim Rohn",
    'cat': 'Discipline',
  },
  {
    "quote": "The first and greatest victory is to conquer yourself.",
    "author": "Plato",
    'cat': 'Discipline',
  },
  {
    "quote":
    "Success is nothing more than a few simple disciplines, practiced every day.",
    "author": "Jim Rohn",
    'cat': 'Discipline',
  },
  {
    "quote":
    "Discipline is the soul of an army. It makes small numbers formidable; procures success to the weak, and esteem to all.",
    "author": "George Washington",
    'cat': 'Discipline',
  },
  {
    "quote":
    "The successful person has the habit of doing the things failures don't like to do.",
    "author": "Thomas Edison"
  },
  {
    "quote": "Without self-discipline, success is impossible, period.",
    "author": "Lou Holtz",
    'cat': 'Discipline',
  },
  {
    "quote":
    "Discipline is just choosing between what you want now and what you want most.",
    "author": "Unknown",
    'cat': 'Discipline',
  },
  {
    "quote": "Discipline is the refining fire by which talent becomes ability.",
    "author": "Roy L. Smith",
    'cat': 'Discipline',
  },
  {
    "quote": "The discipline of desire is the background of character.",
    "author": "John Locke",
    'cat': 'Discipline',
  },
  {
    "quote": "He who lives without discipline dies without honor.",
    "author": "Icelandic Proverb",
    'cat': 'Discipline',
  },
  {
    "quote":
    "Self-respect is the root of discipline: The sense of dignity grows with the ability to say no to oneself.",
    "author": "Abraham Joshua Heschel",
    'cat': 'Discipline',
  },
  {
    "quote": "Discipline is remembering what you want.",
    "author": "David Campbell",
    'cat': 'Discipline',
  },
  {
    "quote":
    "True freedom is impossible without a mind made free by discipline.",
    "author": "Mortimer J. Adler",
    'cat': 'Discipline',
  },
  {
    "quote": "The heart was made to be broken.",
    "author": "Oscar Wilde",
    'cat': 'Broken'
  },
  {
    "quote":
    "The saddest thing about love is that not only that it cannot last forever, but that heartbreak is soon forgotten.",
    "author": "William Faulkner",
    'cat': 'Broken'
  },
  {
    "quote": "Love is unconditional. Relationships are not.",
    "author": "Grant Gudmundson",
    'cat': 'Broken'
  },
  {
    "quote": "It's hard to forget someone who gave you so much to remember.",
    "author": "Unknown",
    'cat': 'Broken'
  },
  {
    "quote":
    "The saddest thing is to be a minute to someone when you've made them your eternity.",
    "author": "Sanober Khan",
    'cat': 'Broken'
  },
  {
    "quote":
    "Sometimes, the only soul that can mend a broken heart is the one that broke it.",
    "author": "Unknown",
    'cat': 'Broken'
  },
  {
    "quote": "You can't buy love, but you can pay heavily for it.",
    "author": "Henny Youngman",
    'cat': 'Broken'
  },
  {
    "quote": "Never love anybody that treats you like you're ordinary.",
    "author": "Oscar Wilde",
    'cat': 'Broken'
  },
  {
    "quote":
    "It hurts to breathe because every breath I take proves I can't live without you.",
    "author": "Unknown",
    'cat': 'Broken'
  },
  {
    "quote":
    "The cure for a broken heart is simple, my lady. A hot bath and a good night's sleep.",
    "author": "Margaret George",
    'cat': 'Broken'
  },
  {
    "quote": "Hearts are made to be broken.",
    "author": "Oscar Wilde",
    'cat': 'Broken'
  },
  {
    "quote":
    "Love is never lost. If not reciprocated, it will flow back and soften and purify the heart.",
    "author": "Washington Irving",
    'cat': 'Broken'
  },
  {
    "quote":
    "The worst feeling is pretending you don't care about something when really it's all you seem to think about.",
    "author": "Unknown",
    'cat': 'Broken'
  },
  {
    "quote":
    "Love never dies a natural death. It dies because we don't know how to replenish its source. It dies of blindness and errors and betrayals. It dies of illness and wounds; it dies of weariness, of witherings, of tarnishings.",
    "author": "Anaïs Nin",
    'cat': 'Broken'
  },
  {
    "quote":
    "One day you're going to remember me and how much I loved you... then you're gonna hate yourself for letting me go.",
    "author": "Aubrey Drake Graham",
    'cat': 'Broken'
  },
  {
    "quote":
    "Success is not final, failure is not fatal: It is the courage to continue that counts.",
    "author": "Winston Churchill",
    'cat': 'Success',
  },
  {
    "quote":
    "Success is not the key to happiness. Happiness is the key to success. If you love what you are doing, you will be successful.",
    "author": "Albert Schweitzer",
    'cat': 'Success',
  },
  {
    "quote":
    "The only place where success comes before work is in the dictionary.",
    "author": "Vidal Sassoon",
    'cat': 'Success',
  },
  {
    "quote":
    "Success is walking from failure to failure with no loss of enthusiasm.",
    "author": "Winston Churchill",
    'cat': 'Success',
  },
  {
    "quote":
    "Success usually comes to those who are too busy to be looking for it.",
    "author": "Henry David Thoreau",
    'cat': 'Success',
  },
  {
    "quote": "Success is not in what you have, but who you are.",
    "author": "Bo Bennett",
    'cat': 'Success',
  },
  {
    "quote":
    "The road to success and the road to failure are almost exactly the same.",
    "author": "Colin R. Davis",
    'cat': 'Success',
  },
  {
    "quote":
    "Success is not how high you have climbed, but how you make a positive difference to the world.",
    "author": "Roy T. Bennett",
    'cat': 'Success',
  },
  {
    "quote":
    "The secret of success is to do the common things uncommonly well.",
    "author": "John D. Rockefeller Jr.",
    'cat': 'Success',
  },
  {
    "quote":
    "Success is not just about making money. It's about making a difference.",
    "author": "Unknown",
    'cat': 'Success',
  },
  {
    "quote":
    "Success is not the destination, but the road that you're on. Being successful means that you're working hard and walking your walk every day. You can only live your dream by working hard towards it. That's living your dream.",
    "author": "Marlon Wayans",
    'cat': 'Success',
  },
  {
    "quote":
    "Success is simple. Do what's right, the right way, at the right time.",
    "author": "Arnold H. Glasow",
    'cat': 'Success',
  },
  {
    "quote":
    "Success is the sum of small efforts, repeated day in and day out.",
    "author": "Robert Collier",
    'cat': 'Success',
  },
  {
    "quote":
    "Success is not the key to happiness. Happiness is the key to success. If you love what you are doing, you will be successful.",
    "author": "Albert Schweitzer",
    'cat': 'Success',
  },
  {
    "quote": "The secret to success is to know something nobody else knows.",
    "author": "Aristotle Onassis",
    'cat': 'Success',
  },
  {
    "quote":
    "Friendship is born at that moment when one person says to another, 'What! You too? I thought I was the only one.'",
    "author": "C.S. Lewis",
    'cat': 'Friendship',
  },
  {
    "quote": "A friend is someone who knows all about you and still loves you.",
    "author": "Elbert Hubbard",
    'cat': 'Friendship',
  },
  {
    "quote":
    "Friendship is the only cement that will ever hold the world together.",
    "author": "Woodrow Wilson",
    'cat': 'Friendship',
  },
  {
    "quote":
    "A real friend is one who walks in when the rest of the world walks out.",
    "author": "Walter Winchell",
    'cat': 'Friendship',
  },
  {
    "quote":
    "Friendship is the hardest thing in the world to explain. It's not something you learn in school. But if you haven't learned the meaning of friendship, you really haven't learned anything.",
    "author": "Muhammad Ali",
    'cat': 'Friendship',
  },
  {
    "quote":
    "There is nothing on this earth more to be prized than true friendship.",
    "author": "Thomas Aquinas",
    'cat': 'Friendship',
  },
  {
    "quote": "The greatest gift of life is friendship, and I have received it.",
    "author": "Hubert H. Humphrey",
    'cat': 'Friendship',
  },
  {
    "quote":
    "A true friend is someone who is there for you when he'd rather be anywhere else.",
    "author": "Len Wein",
    'cat': 'Friendship',
  },
  {
    "quote": "A friend is someone who gives you total freedom to be yourself.",
    "author": "Jim Morrison",
    'cat': 'Friendship',
  },
  {
    "quote":
    "A friend is one that knows you as you are, understands where you have been, accepts what you have become, and still, gently allows you to grow.",
    "author": "William Shakespeare",
    'cat': 'Friendship',
  },
  {
    "quote":
    "Friendship is delicate as a glass, once broken it can be fixed but there will always be cracks.",
    "author": "Waqar Ahmed",
    'cat': 'Friendship',
  },
  {
    "quote":
    "Friendship is unnecessary, like philosophy, like art... It has no survival value; rather it is one of those things that give value to survival.",
    "author": "C.S. Lewis",
    'cat': 'Friendship',
  },
  {
    "quote":
    "A true friend is someone who is there for you when he'd rather be anywhere else.",
    "author": "Len Wein",
    'cat': 'Friendship',
  },
  {
    "quote":
    "Friendship is the only cement that will ever hold the world together.",
    "author": "Woodrow Wilson",
    'cat': 'Friendship',
  },
  {
    "quote":
    "Friendship is unnecessary, like philosophy, like art... It has no survival value; rather it is one of those things that give value to survival.",
    "author": "C.S. Lewis",
    'cat': 'Friendship',
  },
  {
    "quote":
    "Kindness is a language which the deaf can hear and the blind can see.",
    "author": "Mark Twain",
    'cat': 'Kindness',
  },
  {
    "quote": "Kindness is the sunshine in which virtue grows.",
    "author": "Robert Green Ingersoll",
    'cat': 'Kindness',
  },
  {
    "quote": "No act of kindness, no matter how small, is ever wasted.",
    "author": "Aesop",
    'cat': 'Kindness',
  },
  {
    "quote": "Kindness is the golden chain by which society is bound together.",
    "author": "Johann Wolfgang von Goethe",
    'cat': 'Kindness',
  },
  {
    "quote":
    "Kindness in words creates confidence. Kindness in thinking creates profoundness. Kindness in giving creates love.",
    "author": "Lao Tzu",
    'cat': 'Kindness',
  },
  {
    "quote":
    "Constant kindness can accomplish much. As the sun makes ice melt, kindness causes misunderstanding, mistrust, and hostility to evaporate.",
    "author": "Albert Schweitzer",
    'cat': 'Kindness',
  },
  {
    "quote":
    "Kindness is the ability to know what the right thing to do is and having the courage to do it!",
    "author": "R.A. Salvatore",
    'cat': 'Kindness',
  },
  {
    "quote":
    "Kindness is not a business. True kindness expects nothing in return and should never act with conditions.",
    "author": "Roy T. Bennett",
    'cat': 'Kindness',
  },
  {
    "quote":
    "Kindness is the light that dissolves all walls between souls, families, and nations.",
    "author": "Paramahansa Yogananda",
    'cat': 'Kindness',
  },
  {
    "quote":
    "Kindness is the language which the deaf can hear and the blind can see.",
    "author": "Mark Twain",
    'cat': 'Kindness',
  },
  {
    "quote":
    "Kindness is the only service that will stand the storm of life and not wash out. It will wear well and will be remembered long after the prism of politeness or the complexion of courtesy has faded away.",
    "author": "Abraham Lincoln",
    'cat': 'Kindness',
  },
  {
    "quote":
    "Kindness can transform someone's dark moment with a blaze of light. You'll never know how much your caring matters. Make a difference for another today.",
    "author": "Amy Leigh Mercree",
    'cat': 'Kindness',
  },
  {
    "quote": "Kindness is like snow - it beautifies everything it covers.",
    "author": "Kahlil Gibran",
    'cat': 'Kindness',
  },
  {
    "quote":
    "Kindness is seeing the best in others when they cannot see it in themselves.",
    "author": "Raktivist",
    'cat': 'Kindness',
  },
  {
    "quote":
    "Unexpected kindness is the most powerful, least costly, and most underrated agent of human change.",
    "author": "Bob Kerrey",
    'cat': 'Kindness',
  },
  {
    "quote":
    "The best way to cheer yourself up is to try to cheer somebody else up.",
    "author": "Mark Twain",
    'cat': 'Happy',
  },
  {
    "quote":
    "Happiness is not something ready made. It comes from your own actions.",
    "author": "Dalai Lama",
    'cat': 'Happy',
  },
  {
    "quote":
    "The only thing that will make you happy is being happy with who you are.",
    "author": "Goldie Hawn",
    'cat': 'Happy',
  },
  {
    "quote":
    "Count your age by friends, not years. Count your life by smiles, not tears.",
    "author": "John Lennon",
    'cat': 'Happy',
  },
  {
    "quote": "Happiness is a warm puppy.",
    "author": "Charles M. Schulz",
    'cat': 'Happy',
  },
  {
    "quote":
    "The most important thing is to enjoy your life—to be happy—it's all that matters.",
    "author": "Audrey Hepburn",
    'cat': 'Happy',
  },
  {
    "quote":
    "The secret of happiness is not in doing what one likes, but in liking what one does.",
    "author": "James M. Barrie",
    'cat': 'Happy',
  },
  {
    "quote":
    "The happiness of your life depends upon the quality of your thoughts.",
    "author": "Marcus Aurelius",
    'cat': 'Happy',
  },
  {
    "quote":
    "It is not how much we have, but how much we enjoy, that makes happiness.",
    "author": "Charles Spurgeon",
    'cat': 'Happy',
  },
  {
    "quote":
    "Success is not the key to happiness. Happiness is the key to success. If you love what you are doing, you will be successful.",
    "author": "Albert Schweitzer",
    'cat': 'Happy',
  },
  {
    "quote": "The only joy in the world is to begin.",
    "author": "Cesare Pavese",
    'cat': 'Happy',
  },
  {
    "quote": "Happiness is not by chance, but by choice.",
    "author": "Jim Rohn",
    'cat': 'Happy',
  },
  {
    "quote":
    "The happiness of your life depends upon the quality of your thoughts.",
    "author": "Marcus Aurelius",
    'cat': 'Happy',
  },
  {
    "quote": "The best way to predict the future is to create it.",
    "author": "Abraham Lincoln",
    'cat': 'Happy',
  },
  {
    "quote": "Be happy for this moment. This moment is your life.",
    "author": "Omar Khayyam",
    'cat': 'Happy',
  },
  {
    "quote": "Tears come from the heart and not from the brain.",
    "author": "Leonardo da Vinci",
    'cat': 'Sad',
  },
  {
    "quote":
    "The walls we build around us to keep sadness out also keeps out the joy.",
    "author": "Jim Rohn",
    'cat': 'Sad',
  },
  {
    "quote":
    "Behind every sweet smile, there is a bitter sadness that no one can ever see and feel.",
    "author": "Tupac Shakur",
    'cat': 'Sad',
  },
  {
    "quote": "Sadness is but a wall between two gardens.",
    "author": "Khalil Gibran",
    'cat': 'Sad',
  },
  {
    "quote":
    "We gather strength from sadness and from pain. Each time we die we learn to live again.",
    "author": "Unknown",
    'cat': 'Sad',
  },
  {
    "quote":
    "The word 'happiness' would lose its meaning if it were not balanced by sadness.",
    "author": "Carl Jung",
    'cat': 'Sad',
  },
  {
    "quote":
    "The way sadness works is one of the strange riddles of the world. If you are stricken with a great sadness, you may feel as if you have been set aflame, not only because of the enormous pain but also because your sadness may spread over your life, like smoke from an enormous fire.",
    "author": "Lemony Snicket",
    'cat': 'Sad',
  },
  {
    "quote":
    "There are moments when I wish I could roll back the clock and take all the sadness away, but I have the feeling that if I did, the joy would be gone as well.",
    "author": "Nicholas Sparks",
    'cat': 'Sad',
  },
  {
    "quote": "Sadness flies away on the wings of time.",
    "author": "Jean de La Fontaine",
    'cat': 'Sad',
  },
  {
    "quote":
    "Sometimes, when one person is missing, the whole world seems depopulated.",
    "author": "Alphonse de Lamartine",
    'cat': 'Sad',
  },
  {
    "quote":
    "You cannot protect yourself from sadness without protecting yourself from happiness.",
    "author": "Jonathan Safran Foer",
    'cat': 'Sad',
  },
  {
    "quote":
    "Every man has his secret sorrows which the world knows not; and often times we call a man cold when he is only sad.",
    "author": "Henry Wadsworth Longfellow",
    'cat': 'Sad',
  },
  {
    "quote":
    "The tragedy of life is not that it ends so soon, but that we wait so long to begin it.",
    "author": "W. M. Lewis",
    'cat': 'Sad',
  },
  {
    "quote": "Sadness is also a kind of defense.",
    "author": "Ivo Andrić",
    'cat': 'Sad',
  },
  {
    "quote":
    "It is sad not to love, but it is much sadder not to be able to love.",
    "author": "Miguel de Unamuno",
    'cat': 'Sad',
  },
  {
    "quote":
    "Hope is being able to see that there is light despite all of the darkness.",
    "author": "Desmond Tutu",
    'cat': 'Hope',
  },
  {
    "quote":
    "Hope is the thing with feathers that perches in the soul - and sings the tunes without the words - and never stops at all.",
    "author": "Emily Dickinson",
    'cat': 'Hope',
  },
  {
    "quote":
    "Hope is important because it can make the present moment less difficult to bear. If we believe that tomorrow will be better, we can bear a hardship today.",
    "author": "Thich Nhat Hanh",
    'cat': 'Hope',
  },
  {
    "quote": "Hope is the heartbeat of the soul.",
    "author": "Michelle Horst",
    'cat': 'Hope',
  },
  {
    "quote": "Once you choose hope, anything’s possible.",
    "author": "Christopher Reeve",
    'cat': 'Hope',
  },
  {
    "quote":
    "Hope is being able to see that there is light despite all of the darkness.",
    "author": "Desmond Tutu",
    'cat': 'Hope',
  },
  {
    "quote": "There is some good in this world, and it's worth fighting for.",
    "author": "J.R.R. Tolkien",
    'cat': 'Hope',
  },
  {
    "quote": "Hope is a waking dream.",
    "author": "Aristotle",
    'cat': 'Hope',
  },
  {
    "quote": "Hope is the only thing stronger than fear.",
    "author": "Suzanne Collins",
    'cat': 'Hope',
  },
  {
    "quote":
    "Hope is a good thing, maybe the best of things, and no good thing ever dies.",
    "author": "Stephen King",
    'cat': 'Hope',
  },
  {
    "quote":
    "There is always hope, as long as the canvass is empty, the brushes are full of colors and the brushes are in your hands.",
    "author": "Unknown",
    'cat': 'Hope',
  },
  {
    "quote":
    "Hope is important because it can make the present moment less difficult to bear. If we believe that tomorrow will be better, we can bear a hardship today.",
    "author": "Thich Nhat Hanh",
    'cat': 'Hope',
  },
  {
    "quote": "Hope is a force of nature. Don't let anyone tell you different.",
    "author": "Jim Butcher",
    'cat': 'Hope',
  },
  {
    "quote":
    "Hope is the companion of power, and mother of success; for who so hopes strongly has within him the gift of miracles.",
    "author": "Samuel Smiles",
    'cat': 'Hope',
  },
  {
    "quote": "Once you choose hope, anything's possible.",
    "author": "Christopher Reeve",
    'cat': 'Hope',
  },
  {
    "quote": "Creativity is intelligence having fun.",
    "author": "Albert Einstein",
    'cat': 'Creative',
  },
  {
    "quote":
    "Every child is an artist. The problem is how to remain an artist once we grow up.",
    "author": "Pablo Picasso",
    'cat': 'Creative',
  },
  {
    "quote":
    "You can't use up creativity. The more you use, the more you have.",
    "author": "Maya Angelou",
    'cat': 'Creative',
  },
  {
    "quote": "Creativity takes courage.",
    "author": "Henri Matisse",
    'cat': 'Creative',
  },
  {
    "quote": "The chief enemy of creativity is 'good' sense.",
    "author": "Pablo Picasso",
    'cat': 'Creative',
  },
  {
    "quote":
    "Imagination is everything. It is the preview of life's coming attractions.",
    "author": "Albert Einstein",
    'cat': 'Creative',
  },
  {
    "quote": "To live a creative life, we must lose our fear of being wrong.",
    "author": "Joseph Chilton Pearce",
    'cat': 'Creative',
  },
  {
    "quote": "Creativity is the power to connect the seemingly unconnected.",
    "author": "William Plomer",
    'cat': 'Creative',
  },
  {
    "quote": "The true sign of intelligence is not knowledge but imagination.",
    "author": "Albert Einstein",
    'cat': 'Creative',
  },
  {
    "quote": "Creativity is contagious, pass it on.",
    "author": "Albert Einstein",
    'cat': 'Creative',
  },
  {
    "quote":
    "You can't wait for inspiration, you have to go after it with a club.",
    "author": "Jack London",
    'cat': 'Creative',
  },
  {
    "quote":
    "Art, freedom and creativity will change society faster than politics.",
    "author": "Victor Pinchuk",
    'cat': 'Creative',
  },
  {
    "quote": "Creativity is the power to connect the seemingly unconnected.",
    "author": "William Plomer",
    'cat': 'Creative',
  },
  {
    "quote": "The true sign of intelligence is not knowledge but imagination.",
    "author": "Albert Einstein",
    'cat': 'Creative',
  },
  {
    "quote": "Respect yourself and others will respect you.",
    "author": "Confucius",
    'cat': 'Respect',
  },
  {
    "quote": "Knowledge will give you power, but character respect.",
    "author": "Bruce Lee",
    'cat': 'Respect',
  },
  {
    "quote": "Respect is one of the greatest expressions of love.",
    "author": "Miguel Angel Ruiz",
    'cat': 'Respect',
  },
  {
    "quote":
    "Without feelings of respect, what is there to distinguish men from beasts?",
    "author": "Confucius",
    'cat': 'Respect',
  },
  {
    "quote":
    "To the living we owe respect, but to the dead we owe only the truth.",
    "author": "Voltaire",
    'cat': 'Respect',
  },
  {
    "quote": "Respect is what we owe; love, what we give.",
    "author": "Philip James Bailey",
    'cat': 'Respect',
  },
  {
    "quote":
    "This is how you start to get respect, by offering something that you have.",
    "author": "Mitch Albom",
    'cat': 'Respect',
  },
  {
    "quote":
    "Everyone should be respected as an individual, but no one idolized.",
    "author": "Albert Einstein",
    'cat': 'Respect',
  },
  {
    "quote": "Family is not an important thing. It's everything.",
    "author": "Michael J. Fox",
    'cat': 'Family',
  },
  {
    "quote": "The love of a family is life's greatest blessing.",
    "author": "Unknown",
    'cat': 'Family',
  },
  {
    "quote": "Family is where life begins and love never ends.",
    "author": "Unknown",
    'cat': 'Family',
  },
  {
    "quote": "The family is one of nature's masterpieces.",
    "author": "George Santayana",
    'cat': 'Family',
  },
  {
    "quote": "A happy family is but an earlier heaven.",
    "author": "George Bernard Shaw",
    'cat': 'Family',
  },
  {
    "quote": "Rejoice with your family in the beautiful land of life.",
    "author": "Albert Einstein",
    'cat': 'Family',
  },
  {
    "quote":
    "Other things may change us, but we start and end with the family.",
    "author": "Anthony Brandt",
    'cat': 'Family',
  },
  {
    "quote": "Family means no one gets left behind or forgotten.",
    "author": "David Ogden Stiers",
    'cat': 'Family',
  },
  {
    "quote": "Family is the most important thing in the world.",
    "author": "Princess Diana",
    'cat': 'Family',
  },
  {
    "quote": "The memories we make with our family is everything.",
    "author": "Candace Cameron Bure",
    'cat': 'Family',
  },
  {
    "quote":
    "A family is a place where minds come in contact with one another.",
    "author": "Buddha",
    'cat': 'Family',
  },
  {
    "quote": "Focus is more important than genius.",
    "author": "Greg McKeown",
    'cat': 'Focus'
  },
  {
    "quote":
    "The successful warrior is the average man, with laser-like focus.",
    "author": "Bruce Lee",
    'cat': 'Focus'
  },
  {
    "quote":
    "It is during our darkest moments that we must focus to see the light.",
    "author": "Aristotle",
    'cat': 'Focus',
  },
  {
    "quote": "Starve your distractions, feed your focus.",
    "author": "Unknown",
    'cat': 'Focus',
  },
  {
    "quote": "Focus on the solution, not on the problem.",
    "author": "Jim Rohn",
    'cat': 'Focus',
  },
  {
    "quote": "Where focus goes, energy flows.",
    "author": "Tony Robbins",
    'cat': 'Focus',
  },
  {
    "quote":
    "My success, part of it certainly, is that I have focused in on a few things.",
    "author": "Bill Gates",
    'cat': 'Focus',
  },
  {
    "quote": "Focus on the positives and be grateful.",
    "author": "Katrina Bowden",
    'cat': 'Focus',
  },
  {
    "quote": "Always remember, your focus determines your reality.",
    "author": "George Lucas",
    'cat': 'Focus',
  },
  {
    "quote": "Focus on your strengths, not your weaknesses.",
    "author": "Gary Vaynerchuk",
    'cat': 'Focus',
  },
  {
    "quote": "Focus is the hidden driver of excellence.",
    "author": "Daniel Goleman",
    'cat': 'Focus',
  },
  {
    "quote": "The roots of education are bitter, but the fruit is sweet.",
    "author": "Aristotle",
    'cat': 'Education',
  },
  {
    "quote": "An investment in knowledge pays the best interest.",
    "author": "Benjamin Franklin",
    'cat': 'Education',
  },
  {
    "quote":
    "The aim of education is the knowledge, not of facts, but of values.",
    "author": "William S. Burroughs",
    'cat': 'Education',
  },
  {
    "quote": "Education is the key to unlock the golden door of freedom.",
    "author": "George Washington Carver",
    'cat': 'Education',
  },
  {
    "quote":
    "The purpose of education is to replace an empty mind with an open one.",
    "author": "Malcolm Forbes",
    'cat': 'Education',
  },
  {
    "quote":
    "Education is what remains after one has forgotten what one has learned in school.",
    "author": "Albert Einstein",
    'cat': 'Education',
  },
  {
    "quote":
    "Develop a passion for learning. If you do, you will never cease to grow.",
    "author": "Anthony J. D'Angelo",
    'cat': 'Education',
  },
  {
    "quote": "Education is the movement from darkness to light.",
    "author": "Allan Bloom",
    'cat': 'Education',
  },
  {
    "quote": "The whole purpose of education is to turn mirrors into windows.",
    "author": "Sydney J. Harris",
    'cat': 'Education',
  },
  {
    "quote":
    "Education's purpose is to replace an empty mind with an open one.",
    "author": "Malcolm Forbes",
    'cat': 'Education',
  },
  {
    "quote":
    "The only person who is educated is the one who has learned how to learn and change.",
    "author": "Carl Rogers",
    'cat': 'Education',
  },
  {
    "quote": "Education is a better safeguard of liberty than a standing army.",
    "author": "Edward Everett",
    'cat': 'Education',
  },
  {
    "quote": "The great aim of education is not knowledge but action.",
    "author": "Herbert Spencer",
    'cat': 'Education',
  },
  {
    "quote": "Sometimes divorce is the best thing that can happen to marriage.",
    "author": "Nora Ephron",
    'cat': 'Divorce',
  },
  {
    "quote": "Divorce is a declaration of independence with only two signers.",
    "author": "Gerald F. Lieberman",
    'cat': 'Divorce',
  },
  {
    "quote":
    "I don't think anybody whose marriage has ended will ever say it ended well.",
    "author": "Helen Fisher",
    'cat': 'Divorce',
  },
  {
    "quote":
    "Divorce is simply the legal separation of two people who no longer love each other.",
    "author": "Unknown",
    'cat': 'Divorce',
  },
  {
    "quote": "You never really know a man until you have divorced him.",
    "author": "Zsa Zsa Gabor",
    'cat': 'Divorce',
  },
  {
    "quote": "Divorce is a game played by lawyers.",
    "author": "Cary Grant",
    'cat': 'Divorce',
  },
  {
    "quote":
    "A successful marriage requires falling in love many times, always with the same person.",
    "author": "Mignon McLaughlin",
    'cat': 'Divorce',
  },
  {
    "quote":
    "Divorce is the one human tragedy that reduces everything to cash.",
    "author": "Rita Mae Brown",
    'cat': 'Divorce',
  },
  {
    "quote":
    "Half of all marriages end in divorce—and then there are the really unhappy ones.",
    "author": "Joan Rivers",
    'cat': 'Divorce',
  },
  {
    "quote":
    "To get over my divorce, I got a prescription to live at the Playboy Mansion for a while.",
    "author": "James Caan",
    'cat': 'Divorce',
  },
  {
    "quote":
    "The process of divorce is like taking off a Band-Aid, but slowly.",
    "author": "Jayne Meadows",
    'cat': 'Divorce',
  },
  {
    "quote":
    "Divorce is a fire exit. When a house is burning, it's not worth asking who set it on fire.",
    "author": "Amit Kalantri",
    'cat': 'Divorce',
  },
  {
    "quote": "Be the change that you wish to see in the world.",
    "author": "Mahatma Gandhi",
    'cat': 'Change',
  },
  {
    "quote": "Change is the only constant in life.",
    "author": "Heraclitus",
    'cat': 'Change',
  },
  {
    "quote": "Change your thoughts and you change your world.",
    "author": "Norman Vincent Peale",
    'cat': 'Change',
  },
  {
    "quote": "Those who cannot change their minds cannot change anything.",
    "author": "George Bernard Shaw",
    'cat': 'Change',
  },
  {
    "quote": "To improve is to change; to be perfect is to change often.",
    "author": "Winston Churchill",
    'cat': 'Change',
  },
  {
    "quote": "You must be the change you wish to see in the world.",
    "author": "Mahatma Gandhi",
    'cat': 'Change',
  },
  {
    "quote": "Change before you have to.",
    "author": "Jack Welch",
    'cat': 'Change',
  },
  {
    "quote": "Change is inevitable. Growth is optional.",
    "author": "John C. Maxwell",
    'cat': 'Change',
  },
  {
    "quote": "The measure of intelligence is the ability to change.",
    "author": "Albert Einstein",
    'cat': 'Change',
  },
  {
    "quote":
    "Your life does not get better by chance, it gets better by change.",
    "author": "Jim Rohn",
    'cat': 'Change',
  },
  {
    "quote": "The best way to predict the future is to create it.",
    "author": "Peter Drucker",
    'cat': 'Enterpreneur',
  },
  {
    "quote": "Opportunities don't happen. You create them.",
    "author": "Chris Grosser",
    'cat': 'Enterpreneur',
  },
  {
    "quote": "It's not about ideas. It's about making ideas happen.",
    "author": "Scott Belsky",
    'cat': 'Enterpreneur',
  },
  {
    "quote": "I never dreamed about success. I worked for it.",
    "author": "Estée Lauder",
    'cat': 'Enterpreneur',
  },
  {
    "quote": "The secret of getting ahead is getting started.",
    "author": "Mark Twain",
    'cat': 'Enterpreneur',
  },
  {
    "quote": "The biggest risk is not taking any risk.",
    "author": "Mark Zuckerberg",
    'cat': 'Enterpreneur',
  },
  {
    "quote": "I have not failed. I've just found 10,000 ways that won't work.",
    "author": "Thomas Edison",
    'cat': 'Enterpreneur',
  },
  {
    "quote": "The way to get started is to quit talking and begin doing.",
    "author": "Walt Disney",
    'cat': 'Enterpreneur',
  },
  {
    "quote": "Freedom lies in being bold.",
    "author": "Robert Frost",
    'cat': 'Freedom',
  },
  {
    "quote": "Freedom is the oxygen of the soul.",
    "author": "Moshe Dayan",
    'cat': 'Freedom',
  },
  {
    "quote": "Freedom is the power to choose our own chains.",
    "author": "Jean Jacques Rousseau",
    'cat': 'Freedom',
  },
  {
    "quote": "The truth will set you free, but first it will piss you off.",
    "author": "Gloria Steinem",
    'cat': 'Freedom',
  },
  {
    "quote":
    "Freedom is the right to tell people what they do not want to hear.",
    "author": "George Orwell"
  },
  {
    "quote": "Freedom is the will to be responsible to ourselves.",
    "author": "Friedrich Nietzsche",
    'cat': 'Freedom',
  },
  {
    "quote":
    "Freedom means the opportunity to be what we never thought we would be.",
    "author": "Daniel J. Boorstin",
    'cat': 'Freedom',
  },
  {
    "quote":
    "We must be free not because we claim freedom, but because we practice it.",
    "author": "William Faulkner",
    'cat': 'Freedom',
  },
  {
    "quote":
    "Better to die fighting for freedom than be a prisoner all the days of your life.",
    "author": "Bob Marley",
    'cat': 'Freedom',
  },
  {
    "quote":
    "The only real prison is fear, and the only real freedom is freedom from fear.",
    "author": "Aung San Suu Kyi",
    'cat': 'Freedom',
  },
  {
    "quote": "A goal properly set is halfway reached.",
    "author": "Zig Ziglar",
    'cat': 'Goal',
  },
  {
    "quote": "People with goals succeed because they know where they're going.",
    "author": "Earl Nightingale",
    'cat': 'Goal',
  },
  {
    "quote": "Goals are dreams with deadlines.",
    "author": "Diana Scharf",
    'cat': 'Goal',
  },
  {
    "quote":
    "You are never too old to set another goal or to dream a new dream.",
    "author": "C.S. Lewis",
    'cat': 'Goal',
  },
  {
    "quote":
    "A dream becomes a goal when action is taken toward its achievement.",
    "author": "Bo Bennett",
    'cat': 'Goal',
  },
  {
    "quote": "Goals determine what you're going to be.",
    "author": "Julius Erving",
    'cat': 'Goal',
  },
  {
    "quote":
    "Obstacles are those frightful things you see when you take your eyes off your goal.",
    "author": "Henry Ford",
    'cat': 'Goal',
  },
  {
    "quote":
    "Your goals are the roadmaps that guide you and show you what is possible for your life.",
    "author": "Les Brown",
    'cat': 'Goal',
  },
  {
    "quote":
    "The only limit to your impact is your imagination and commitment.",
    "author": "Tony Robbins",
    'cat': 'Goal',
  },
  {
    "quote":
    "If you don't know where you are going, you'll end up someplace else.",
    "author": "Yogi Berra",
    'cat': 'Goal',
  },
  {
    "quote": "Goals are the fuel in the furnace of achievement.",
    "author": "Brian Tracy",
    'cat': 'Goal',
  },
  {
    "quote": "Success is steady progress toward one's personal goals.",
    "author": "Jim Rohn",
    'cat': 'Goal',
  },
  {
    "quote":
    "The only way to achieve the impossible is to believe it is possible.",
    "author": "Charles Kingsleigh",
    'cat': 'Goal',
  },
  {
    "quote": "A goal is a dream with a deadline.",
    "author": "Napoleon Hill",
    'cat': 'Goal',
  },
  {
    "quote":
    "A leader is one who knows the way, goes the way, and shows the way.",
    "author": "John C. Maxwell",
    'cat': 'Leader',
  },
  {
    "quote": "Leadership and learning are indispensable to each other.",
    "author": "John F. Kennedy",
    'cat': 'Leader',
  },
  {
    "quote":
    "Leadership is not about being in charge. It is about taking care of those in your charge.",
    "author": "Simon Sinek",
    'cat': 'Leader',
  },
  {
    "quote":
    "Become the kind of leader that people would follow voluntarily; even if you had no title or position.",
    "author": "Brian Tracy",
    'cat': 'Leader',
  },
  {
    "quote": "Leadership is the capacity to translate vision into reality.",
    "author": "Warren Bennis",
    'cat': 'Leader',
  },
  {
    "quote":
    "The task of the leader is to get their people from where they are to where they have not been.",
    "author": "Henry Kissinger",
    'cat': 'Leader',
  },
  {
    "quote":
    "Leadership is the art of giving people a platform for spreading ideas that work.",
    "author": "Seth Godin",
    'cat': 'Leader',
  },
  {
    "quote":
    "Leadership is not a position or a title, it is action and example.",
    "author": "Cory Booker",
    'cat': 'Leader',
  },
  {
    "quote":
    "The goal in marriage is not to think alike, but to think together.",
    "author": "Robert C. Dodds",
    'cat': 'Marriage',
  },
  {
    "quote":
    "A happy marriage is a long conversation which always seems too short.",
    "author": "Andre Maurois",
    'cat': 'Marriage',
  },
  {
    "quote": "The highest happiness on earth is marriage.",
    "author": "William Lyon Phelps",
    'cat': 'Marriage',
  },
  {
    "quote":
    "Marriage is the golden ring in a chain whose beginning is a glance and whose ending is Eternity.",
    "author": "Kahlil Gibran",
    'cat': 'Marriage',
  },
  {
    "quote":
    "Marriage is not just spiritual communion, it is also remembering to take out the trash.",
    "author": "Joyce Brothers",
    'cat': 'Marriage',
  },
  {
    "quote":
    "A good marriage is where both people feel like they're getting the better end of the deal.",
    "author": "Anne Lamott",
    'cat': 'Marriage',
  },
  {
    "quote": "Money often costs too much.",
    "author": "Ralph Waldo Emerson",
    'cat': 'Money',
  },
  {
    "quote":
    "A wise person should have money in their head, but not in their heart.",
    "author": "Jonathan Swift",
    'cat': 'Money',
  },
  {
    "quote": "The lack of money is the root of all evil.",
    "author": "Mark Twain",
    'cat': 'Money',
  },
  {
    "quote": "Money is like muck—not good unless it be spread.",
    "author": "Francis Bacon",
    'cat': 'Money',
  },
  {
    "quote":
    "A simple fact that is hard to learn is that the time to save money is when you have some.",
    "author": "Joe Moore",
    'cat': 'Money',
  },
  {
    "quote": "The art is not in making money, but in keeping it.",
    "author": "Proverb",
    'cat': 'Money',
  },
  {
    "quote":
    "The best way to teach your kids about taxes is by eating 30% of their ice cream.",
    "author": "Bill Murray",
    'cat': 'Money',
  },
  {
    "quote": "If you would be wealthy, think of saving as well as getting.",
    "author": "Benjamin Franklin",
    'cat': 'Money',
  },
  {
    "quote": "Money often costs too much.",
    "author": "Ralph Waldo Emerson",
    'cat': 'Money',
  },
  {
    "quote":
    "Money can't buy friends, but you can get a better class of enemy.",
    "author": "Spike Milligan",
    'cat': 'Money',
  },
  {
    "quote": "When I had money everyone called me brother.",
    "author": "Polish proverb",
    'cat': 'Money',
  },
  {
    "quote": "Discipline is the bridge between goals and accomplishment.",
    "author": "Jim Rohn",
    'cat': 'Discipline',
  },
  {
    "quote": "With self-discipline, most anything is possible.",
    "author": "Theodore Roosevelt",
    'cat': 'Discipline',
  },
  {
    "quote": "Success doesn’t just find you. You have to go out and get it.",
    "author": "Unknown",
    'cat': 'Discipline',
  },
  {
    "quote": "The distance between dreams and reality is called discipline.",
    "author": "Unknown",
    'cat': 'Discipline',
  },
  {
    "quote": "Without self-discipline, success is impossible, period.",
    "author": "Lou Holtz",
    'cat': 'Discipline',
  },
  {
    "quote":
    "The most powerful control we can ever attain is to be in control of ourselves.",
    "author": "Chris Page",
    'cat': 'Discipline',
  },
  {
    "quote":
    "Discipline is doing what needs to be done, even if you don’t want to do it.",
    "author": "Unknown",
    'cat': 'Discipline',
  },
  {
    "quote": "He who lives without discipline dies without honor.",
    "author": "Icelandic Proverb",
    'cat': 'Discipline',
  },
  {
    "quote": "Discipline is the refining fire by which talent becomes ability.",
    "author": "Roy L. Smith",
    'cat': 'Discipline',
  },
  {
    "quote": "The only discipline that lasts is self-discipline.",
    "author": "Bum Phillips",
    'cat': 'Discipline',
  },
  {
    "quote": "You miss 100% of the shots you don’t take.",
    "author": "Wayne Gretzky",
    'cat': 'Sports',
  },
  {
    "quote":
    "The more difficult the victory, the greater the happiness in winning.",
    "author": "Pele",
    'cat': 'Sports',
  },
  {
    "quote": "The only way to prove that you’re a good sport is to lose.",
    "author": "Ernie Banks",
    'cat': 'Sports',
  },
  {
    "quote": "Success is where preparation and opportunity meet.",
    "author": "Bobby Unser",
    'cat': 'Sports',
  },
  {
    "quote": "It's not whether you get knocked down; it's whether you get up.",
    "author": "Vince Lombardi",
    'cat': 'Sports',
  },
  {
    "quote": "You have to expect things of yourself before you can do them.",
    "author": "Michael Jordan",
    'cat': 'Sports',
  },
  {
    "quote": "Persistence can change failure into extraordinary achievement.",
    "author": "Matt Biondi",
    'cat': 'Sports',
  },
  {
    "quote": "The more I practice, the luckier I get.",
    "author": "Gary Player",
    'cat': 'Sports',
  },
  {
    "quote": "The will to win is important, but the will to prepare is vital.",
    "author": "Joe Paterno",
    'cat': 'Sports',
  },
  {
    "quote": "Hard work beats talent when talent doesn't work hard.",
    "author": "Tim Notke",
    'cat': 'Sports',
  },
  {
    "quote":
    "You can’t let praise or criticism get to you. It’s a weakness to get caught up in either one.",
    "author": "John Wooden",
    'cat': 'Sports',
  },
  {
    "quote":
    "Never give up! Failure and rejection are only the first step to succeeding.",
    "author": "Jim Valvano",
    'cat': 'Sports',
  },
  {
    "quote": "It’s not whether you win or lose, it’s how you play the game.",
    "author": "Grantland Rice",
    'cat': 'Sports',
  },
  {
    "quote": "Trust yourself. You know more than you think you do.",
    "author": "Benjamin Spock",
    'cat': 'Trust',
  },
  {
    "quote":
    "The best way to find out if you can trust somebody is to trust them.",
    "author": "Ernest Hemingway",
    'cat': 'Trust',
  },
  {
    "quote": "Trust is built with consistency.",
    "author": "Lincoln Chafee",
    'cat': 'Trust',
  },
  {
    "quote": "To be trusted is a greater compliment than being loved.",
    "author": "George MacDonald",
    'cat': 'Trust',
  },
  {
    "quote":
    "Trust is the fruit of a relationship in which you know you are loved.",
    "author": "William P. Young",
    'cat': 'Trust',
  },
  {
    "quote": "Trust is the first step to love.",
    "author": "Munshi Premchand",
    'cat': 'Trust',
  },
  {
    "quote": "Trust starts with truth and ends with truth.",
    "author": "Santosh Kalwar",
    'cat': 'Trust',
  },
  {
    "quote": "When mistrust comes in, loves goes out.",
    "author": "Irish Proverb",
    'cat': 'Trust',
  },
  {
    "quote":
    "Trust is built when someone is vulnerable and not taken advantage of.",
    "author": "Bob Vanourek",
    'cat': 'Trust',
  },
  {
    "quote":
    "Strength does not come from physical capacity. It comes from an indomitable will.",
    "author": "Mahatma Gandhi",
    'cat': 'Strong',
  },
  {
    "quote":
    "Life doesn’t get easier or more forgiving, we get stronger and more resilient.",
    "author": "Steve Maraboli",
    'cat': 'Strong',
  },
  {
    "quote":
    "Strength and growth come only through continuous effort and struggle.",
    "author": "Napoleon Hill",
    'cat': 'Strong',
  },
  {
    "quote":
    "You never know how strong you are until being strong is your only choice.",
    "author": "Bob Marley",
    'cat': 'Strong',
  },
  {
    "quote":
    "The world breaks everyone, and afterward, some are strong at the broken places.",
    "author": "Ernest Hemingway",
    'cat': 'Strong',
  },
  {
    "quote": "Strength lies in differences, not in similarities.",
    "author": "Stephen R. Covey",
    'cat': 'Strong',
  },
  {
    "quote":
    "Never bend your head. Always hold it high. Look the world straight in the eye.",
    "author": "Helen Keller",
    'cat': 'Strong',
  },
  {
    "quote":
    "The weak can never forgive. Forgiveness is the attribute of the strong.",
    "author": "Mahatma Gandhi",
    'cat': 'Strong',
  },
  {
    "quote": "Do not pray for easy lives. Pray to be stronger men.",
    "author": "John F. Kennedy",
    'cat': 'Strong',
  },
  {
    "quote":
    "Nothing is more beautiful than the smile that has struggled through tears.",
    "author": "Demi Lovato",
    'cat': 'Strong',
  },
  {
    "quote":
    "Courage isn't having the strength to go on—it is going on when you don't have strength.",
    "author": "Napoleon Bonaparte",
    'cat': 'Strong',
  },
  {
    "quote":
    "Strength and growth come only through continuous effort and struggle.",
    "author": "Napoleon Hill",
    'cat': 'Strong',
  },
];