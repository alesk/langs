/**
  *  Insert spaces into string composed of words concatenated together without spaces,
  *  with a help of a dictionary.
  * 
  *  Example:
  * 
  *   danesjelepdan -> danes je lep dan
  * 
  *  Just run sbt run in the same dir as the file is.
  **/


object Spaceify {

  val dict = Set("a", "da", "dan", "je", "lep", "danes")

  def spacify(sentence : String, lastChar: Int, dict: Set[String]) : List[String] = {

     if (lastChar > sentence.size)
       return List()
     
     val firstWordCandidate = sentence.substring(0, lastChar)

     if (dict contains firstWordCandidate) {
       if (lastChar == sentence.size) // if sentence complete
         List(firstWordCandidate)
       else {
         val restOfSentence = sentence substring lastChar
         val nextWords = spacify(restOfSentence,  1, dict)
         if (nextWords.isEmpty)
           spacify(sentence, lastChar + 1, dict) // try next longer dict word
         else
           firstWordCandidate :: nextWords
       }
     } else {
       spacify(sentence, lastChar + 1, dict) // try next longer dict word
     }
  }

  def main(args: Array[String]) =
    println(spacify("danesjelepdan", 1, dict))

}
