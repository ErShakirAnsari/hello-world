package com.github.ershakiransari;

/**
 * @author Shakir
 */
public class HelloMaven
{
	public static void main(String[] args)
	{
		// version: will be available on package phase
		// plugin: https://mvnrepository.com/artifact/org.apache.maven.plugins/maven-jar-plugin
		System.out.println("Hello Maven! v" + HelloMaven.class.getPackage().getImplementationVersion());
	}
}
