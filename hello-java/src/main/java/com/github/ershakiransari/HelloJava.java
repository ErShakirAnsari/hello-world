package com.github.ershakiransari;

/**
 * @author Shakir
 * @version 2022-09-23
 */
public class HelloJava
{
	public static void main(String[] args)
	{
		// version: will be available on package phase
		// plugin: https://mvnrepository.com/artifact/org.apache.maven.plugins/maven-jar-plugin
		System.out.println(HelloJava.class.getName());
		System.out.println("v" + HelloJava.class.getPackage().getImplementationVersion());
	}
}