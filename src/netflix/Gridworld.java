package netflix;

import java.util.Random;

import info.gridworld.actor.Bug;
import info.gridworld.grid.Location;
import info.gridworld.world.World;

public class Gridworld {
	public static void main(String[] args) {
		World world=new World();
		Random gen=new Random();
		int num=gen.nextInt(9);
		Random gen2=new Random();
		int num2=gen2.nextInt(9);
		world.show();
		Bug bug=new Bug();
		Location location=new Location(num,num2);
		world.add(location, bug);
	}
}
