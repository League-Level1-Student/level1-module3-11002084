
import java.awt.Color;
import java.util.Random;

import info.gridworld.actor.Bug;
import info.gridworld.actor.Flower;
import info.gridworld.grid.Location;
import info.gridworld.world.World;

public class Gridworld {
	public static void main(String[] args) {
		int b=0;
		World world = new World();
		Random gen = new Random();
		int num = gen.nextInt(9);
		Random gen2 = new Random();
		int num2 = gen2.nextInt(9);
		world.show();
		Bug bug = new Bug();
		bug.setColor(new Color(0, 0, 255));
		bug.turn();
		bug.turn();
		Flower flower = new Flower();
		flower.setColor(new Color(255,0,0));
		Flower flower2=new Flower();
		flower2.setColor(new Color(255,255,255));
		Location location = new Location(num, num2);
		Location location2 = new Location(num, num2 - 1);
		Location location3 = new Location(num, num2 + 1);
		world.add(location3, flower);
		world.add(location2, flower);
		world.add(location, bug);
		for (int e = 0; e < 10; e++) {
			for (int i = 0; i < 10; i++) {
				Location location4 = new Location(e,i);
				if(e%2==0) {
					world.add(location4, flower);
				} else {
					world.add(location4, flower2);
				}
			}
		}
		for(int a=0; a<10;a++) {
			Location location5=new Location(a,b);
			world.add(location5, bug);
			b++;
		}
		b=0;
		for(int c=9; c>0; c--) {
			Location location6=new Location(c, b);
			world.add(location6, bug);
			b++;
		}
	}
}
