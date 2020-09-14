class Meal{
  final String mealTime, name,imagePath,kiloCaloriesBurnt,timeTaken;

  Meal({
      this.mealTime,
      this.name,
      this.imagePath,
      this.kiloCaloriesBurnt,
      this.timeTaken
  });
}
final meals = [
  Meal(
  mealTime:"BREAKFAST",
  name: "Fruit Granola",
  imagePath: "assets/images/img1.jpg",
  kiloCaloriesBurnt: "760.0",
  timeTaken: "10",
),
  Meal(
    mealTime:"Dinner",
    name: "Fruit Amala",
    imagePath: "assets/images/img2.png",
    kiloCaloriesBurnt: "760.0",
    timeTaken: "10",
  ),
  Meal(
    mealTime:"Snack",
    name: "Fruit Banana",
    imagePath: "assets/images/img3.jpg",
    kiloCaloriesBurnt: "760.0",
    timeTaken: "10",
  )
];
