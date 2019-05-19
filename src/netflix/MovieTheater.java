package netflix;

public class MovieTheater {
	public static void main(String[] args) {
		Movie shrek = new Movie("Sherk", 100); //OOOOHHHHHHH OOOOOOOOOOOOOOOOOHHHHHHHHHHH that's too hot
		Movie bee = new Movie("Bee Movie", 99); //Thinking bee
		Movie pikachu = new Movie("Detective Pikachu", 13); //Pika pika
		Movie avengers = new Movie("Avengers: Endgame", 11); //You spoil, you die
		Movie fish = new Movie("Finding Nemo", 8); //Fishy Friends, not food
		Movie lego = new Movie("Lego Movie", 8); //It's pretty awesome
		Movie furries = new Movie("Zootopia", 5); //Oh Oh Oh my god, try to run
		Movie emoji = new Movie("Emoji Movie", -5); //That seems like an ad with extra steps
		Movie sonic = new Movie("Live Action Sonic", -123); // Holy SHIIIIIIII-
		Movie cat= new Movie("Cat in the Hat Live Action", -200); //RUN RUN RUN RUN RUN RUN RUN
		Movie twilight= new Movie("Twilight", -500); //:((((((((((
		shrek.getTicketPrice();
		bee.getTicketPrice();
		pikachu.getTicketPrice();
		avengers.getTicketPrice();
		fish.getTicketPrice();
		lego.getTicketPrice();
		furries.getTicketPrice();
		emoji.getTicketPrice();
		sonic.getTicketPrice();
		cat.getTicketPrice();
		twilight.getTicketPrice();
		NetflixQueue scam=new NetflixQueue();
		scam.addMovie(shrek);
		scam.addMovie(bee);
		scam.addMovie(pikachu);
		scam.addMovie(avengers);
		scam.addMovie(fish);
		scam.addMovie(lego);
		scam.addMovie(furries);
		scam.addMovie(emoji);
		scam.addMovie(sonic);
		scam.addMovie(cat);
		scam.addMovie(twilight);
		scam.printMovies();
		System.out.println("The best movie is "+scam.getBestMovie());
		System.out.println("The second best movie is "+scam.getMovie(1));
	}
}
