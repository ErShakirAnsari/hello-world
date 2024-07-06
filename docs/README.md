# Hello World 🌎

[![Maven Central](https://maven-badges.herokuapp.com/maven-central/com.github.ershakiransari/hello-world/badge.svg)](https://maven-badges.herokuapp.com/maven-central/com.github.ershakiransari/hello-world)  
[![javadoc](https://javadoc.io/badge2/com.github.ershakiransari/hello-java/javadoc.svg)](https://javadoc.io/doc/com.github.ershakiransari/hello-java)  
![GitHub repo size](https://img.shields.io/github/repo-size/ershakiransari/hello-world?color=g&label=Repo%20Size&logo=github)

[![Schedule Build](https://github.com/ErShakirAnsari/hello-world/actions/workflows/schedule-build.yml/badge.svg)](https://github.com/ErShakirAnsari/hello-world/actions/workflows/schedule-build.yml)  
[![Maven Clean Build](https://github.com/ErShakirAnsari/hello-world/actions/workflows/mvn-clean-build.yml/badge.svg)](https://github.com/ErShakirAnsari/hello-world/actions/workflows/mvn-clean-build.yml)

[![Dry Run Maven Central Deployment](https://github.com/ErShakirAnsari/hello-world/actions/workflows/maven-central-deployment-dry-run.yml/badge.svg)](https://github.com/ErShakirAnsari/hello-world/actions/workflows/maven-central-deployment-dry-run.yml)  
[![Maven Central Deployment](https://github.com/ErShakirAnsari/hello-world/actions/workflows/maven-central-deployment.yml/badge.svg)](https://github.com/ErShakirAnsari/hello-world/actions/workflows/maven-central-deployment.yml)

---

### Hello World (Parent pom)

```
<parent>
    <groupId>${project.groupId}</groupId>
    <artifactId>hello-world</artifactId>
    <version>${project.version}</version>
</parent>
```

### Hello Maven (jar)

```
<dependency>
    <groupId>${project.groupId}</groupId>
    <artifactId>hello-maven</artifactId>
    <version>${project.version}</version>
</dependency>
```

### Hello Java (jar)

```
<dependency>
    <groupId>${project.groupId}</groupId>
    <artifactId>hello-java</artifactId>
    <version>${project.version}</version>
</dependency>
```