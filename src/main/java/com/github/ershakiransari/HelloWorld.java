package com.github.ershakiransari;

/**
 * @author Shakir
 */
public class HelloWorld
{
	public static void main(String[] args)
	{
		// version
		// will on package phase
		// plugin: https://mvnrepository.com/artifact/org.apache.maven.plugins/maven-jar-plugin
		System.out.println("Hello World! v" + HelloWorld.class.getPackage().getImplementationVersion());
	}
}
