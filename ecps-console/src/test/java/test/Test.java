package test;

import java.net.URLClassLoader;
import java.util.Arrays;

import org.apache.log4j.chainsaw.Main;

public class Test {
	public static void main(String[] args) {
		URLClassLoader classLoader = (URLClassLoader) Main.class.getClassLoader();
		System.out.println(Arrays.toString(classLoader.getURLs()));
	}
}
