package com.github.ershakiransari;

/*
 * Copyright (c) 2022 ajaxer.org
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

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