fun testSingletonEquality(){
    val singletonId = 10
    Singleton.id = singletonId
    val logicalEquivalent = Singleton.equals(Singleton)
    val objectEquivalent = Singleton == Singleton
    val idEquivalent = Singleton.id == singletonId
    if (
        logicalEquivalent &&
        objectEquivalent &&
        idEquivalent
    ) {
        println("Test Singleton: Passed ")
    } else {
        println("Test Singleton: Failed")
    }
}

fun main(args: Array<String>) {
    testSingletonEquality()
}
