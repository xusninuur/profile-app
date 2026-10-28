allprojects {
    repositories {
        google()
        mavenCentral()
    }
}

rootProject.layout.buildDirectory.set(
    rootProject.layout.projectDirectory.dir("../../build")
)

subprojects {
    val subprojectBuildDir =
        rootProject.layout.buildDirectory.dir(project.name)

    project.layout.buildDirectory.set(subprojectBuildDir)

}

subprojects {
    project.evaluationDependsOn(":app")
}

tasks.register<Delete>("clean") {
    delete(rootProject.layout.buildDirectory)
}