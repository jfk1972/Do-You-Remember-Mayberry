//
//  QuizBrain.swift
//
//  Credits to Angela Yu
//  The App Brewery
//
//

import SwiftUI
import UIKit

struct QuizEngine {

    
    

    var score = 0
    var questionNumber = 0
    
    let quiz =
    [
        Question(q: "How many characters are in the opening scene of 'The Andy Griffith Show?", a: ["2", "3", "1"], correctAnswer: "2"),
        Question(q: "Which of the  'Pyle's' appears in the most episodes'?", a: ["Briscoe Darling/Denver Pyle", "Gomer Pyle", "Goober Pyle"], correctAnswer: "Goober Pyle"),
        Question(q: "Andy as sheriff was first introduced on which show?", a: ["I Love Lucy", "Ozzie and Harriet", "The Danny Thomas Show"], correctAnswer: "The Danny Thomas Show"),
        Question(q: "The Andy Griffith Show ran for how many seasons?", a: ["7", "8", "9"], correctAnswer: "8"),
        Question(q: "How many seasons were in Black and White?", a: ["4", "5", "6"], correctAnswer: "5"),
        Question(q: "Which station aired the original Andy Griffith Show?", a: ["CBS", "NBC", "ABC"], correctAnswer: "CBS"),
        Question(q: "Floyd was played by how many different characters?", a: ["2", "3", "4"], correctAnswer: "2"),
        Question(q: "Barney's middle name was?", a: ["Jackson", "Alfred", "Milton"], correctAnswer: "Milton"),
        Question(q: "Otis Campbell's wife was?", a: ["Michelle", "Sadie", "Rita"], correctAnswer: "Rita"),
        Question(q: "What breakfast cereal was shown in the original episode?", a: ["Quaker Oats", "Post", "Kellogs"], correctAnswer: "Post"),
        //Question 11
        Question(q: "The Mayberry Men's club and fraternal lodge was called?", a: ["Royal Order of Racoons", "Regal Order of the Golden Door", "Leopard Lodge"], correctAnswer: "Regal Order of the Golden Door"),
        Question(q: "Opie's newspaper was called?", a: ["Mayberry Sun", "Mayberry After Midnight", "Mayberry Tribune"], correctAnswer: "Mayberry Sun"),
        Question(q: "Opie's rock and roll band was called?", a: ["The Mayberry Minute Men", "The Mayberry Deputies", "The Sound Committee"], correctAnswer: "The Sound Committee"),
        Question(q: "Which band had a 1989 song titled 'Floyed the Barber'?", a: ["The Dillards", "The Gentrys", "Nirvana"], correctAnswer: "Nirvana"),
        Question(q: "What was the first year of the Andy Griffith Show?", a: ["1958", "1960", "1962"], correctAnswer: "1960"),
        Question(q: "The Elixer that Aunt Bee buys is what percent alcohol?", a: ["80%", "85%", "90%"], correctAnswer: "85%"),
        Question(q: "It takes Andy one hour to drive from Mount Pilot. How long did it take Mrs. Lesch?", a: ["3 hours", "2.5 hours", "2 hours"], correctAnswer: "3 hours"),
        Question(q: "Other kids get this much allowance according to Opie?", a: ["50 cents","75 cents","One whole dollar"], correctAnswer: "75 cents"),
        Question(q: "Gomer and Vertie bet on whether there were trout in Meyer's pond. How much was the bet?", a: ["25 cents",  "35 cents","30 cents"], correctAnswer: "30 cents"),
        Question(q: "In the same episode, what did Gomer use for bait?", a: [ "Banana peel and peanut butter", "Bologna and cheese", "Limburger and onion"], correctAnswer: "Limburger and onion"),
        //Question 21
        Question(q: "If you count the total stars on both Andy and Barney's shirt sleeves and badges, how many total stars are there?", a:["22", "24", "26"], correctAnswer:  "22"),
        Question( q: "When Barney arrests Ernest T Bass in the diner, who is the waitress that he apologizes?", a: ["Juanita", "Betty Jean", "Olive"], correctAnswer: "Olive"),
        Question( q: "Hope Summers went by several different names on the show. Which of these is not one?", a: ["Bertha Johnson", "Bertha Edwards", "Clara Edmonds"], correctAnswer: "Clara Edmonds"),
        Question( q: "According to Ernest T Bass, who came back from the Army with a gold tooth to have the girls swarm around him?", a: ["Joe Bob Keller", "Jelcic Stern", "Jim Kelsey"], correctAnswer: "Jelcic Stern"),
        Question( q: "In the jump rope scene, Otis changes the rhyme to include which of the following?", a: ["Gin", "Moonshine", "Whiskey"], correctAnswer: "Gin"),
        Question( q: "In what order did Opie release the three birds?", a: ["Wynken-Blynken-Nod", "Blynken-Wynken-Nod", "Nod-Wynken-Blynken"], correctAnswer: "Nod-Wynken-Blynken"),
        Question( q: "How many hats full of water does it take to fill the Darlings radiator?", a: ["7", "9", "11"], correctAnswer: "11"),
        Question( q: "What is the name of the couple that left a baby on the courthouse steps?", a:["Garland", "Carson", "Simmons"], correctAnswer: "Garland"),
        Question( q: "Where was Sarah's mother when she injured her hip?", a: ["Bowling Alley", "Walker's Drug Store", "The Diner"], correctAnswer: "Bowling Alley"),
        Question( q: "Who was Goober's first customer after he purchased the station from Wally?", a:["Emmet", "Floyd", "Andy"], correctAnswer: "Andy"),
        //Question 31
        Question( q: "What is the emergency code that Barney decries?", a: ["No 1 Red Alert", "No 1 Amber Alert", "No 2 Amber Alert"], correctAnswer: "No 2 Amber Alert"),
        Question( q: "Which doctor removes Opie's tonsils?", a:["Peterson", "Burnside", "Bennett"], correctAnswer: "Peterson"),
        Question( q: "Which song is on page 14a?", a: ["Love Lifted Me", "Santa Lucia", "Welcome Sweet Springtime"], correctAnswer: "Welcome Sweet Springtime"),
        Question( q: "Where is Warren's home town?", a: [ "Boston",  "Siler City", "Raleigh"], correctAnswer:  "Boston"),
        Question( q: "Howard attended which school?", a: ["Bradley", "Braddock", "Bradberry"], correctAnswer: "Bradberry"),
        Question( q: "What printing company did Aunt Bee work for?", a: ["Patterson's", "Nelson's", "Hanson's"], correctAnswer: "Hanson's"),
        Question( q: "Where did Jim Lindsey buy his guitar picks?", a: [  "Raleigh", "Siler City", "Winston-Salem"], correctAnswer:  "Winston-Salem"),
        Question( q: "Which direction did Barney ride the white horse?", a: ["south to north", "west to east", "east to west"], correctAnswer:  "east to west"),
        Question( q: "Which mayor was always trying to upgrade the courthouse?", a: ["Mayor Cooper", "Mayor Stoner", "Mayor Pike"], correctAnswer: "Mayor Pike"),
        Question( q: "From whom did Andy buy his house?", a: ["Old Man Parmeley", "Old Man Hartley", "Old Man Nelson"], correctAnswer: "Old Man Parmeley"),
        //Question 41
        Question( q: "From whom did Otis but a cow for 2.00?", a: ["Old Man Davis", "Old Man Sloan", "Old Man Walker"], correctAnswer: "Old Man Davis"),
        Question( q: "Which food that Aunt Bee prepared stole Briscoe's heart?", a: ["White beans", "Red beans", "Pearly onions"], correctAnswer: "Pearly onions"),
        Question( q: "Which sandwich did Opie NOT make for George Foley?", a: ["Peanut butter & bologna", "Peanut butter & sardines", "Peanut butter & jelly"], correctAnswer:   "Peanut butter & jelly"),
        Question( q: "Which of these was NOT in Barney's 35 cent breakfast in Raleigh?", a:["grits", "one egg", "3 flapjacks"], correctAnswer: "grits"),
        Question( q: "In addition to pickles, what did Aunt Bee make that tasted like kerosene?", a:[ "Strawberry preserves", "wild berry preserves", "marmalade preserves"], correctAnswer: "marmalade preserves"),
        Question( q: "How many shots did you get at the Fair for 25 cents?", a:["5","6","7"], correctAnswer:  "7"),
        Question( q: "Who told Gomer about the gold shipment?", a: [ "Floyd", "Clara Johnson", "Laura Hobbs"], correctAnswer: "Laura Hobbs"),
        Question( q: "How many pancakes did Goober eat to win the contest at the Fair?", a:["53", "55", "57"], correctAnswer: "57"),
        Question( q: "What street was the courthouse on?", a:[ "Market Street", "Elm Street", "Main Street"], correctAnswer: "Main Street"),
        Question( q: "Who worked in the lingerie shop in the bed jacket episode?", a: ["Mayra Kountze", "Mrs Lukens", "Miss Peterson"], correctAnswer:  "Mrs Lukens"),

    ]
    
    func getQuestionText() -> String
    {
        return quiz[questionNumber].text
    }
    
    //Need a way of fetching the answer choices.
    func getAnswers() -> [String]
    {
        return quiz[questionNumber].answers
    }
    
    func getProgress() -> Float
    {
        return Float(questionNumber) / Float(quiz.count)
    }
    //here
    mutating func getCorrectAnswer() -> String
    {
        return quiz[questionNumber].rightAnswer }
    
    mutating func getScore() -> Int {
        return score
    }
    // add -> Void for gameOver screen
    mutating func nextQuestion() -> Void
    {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            //future placeholder to show the users their scores
            yourScore = score
            totalQuestions = quiz.count

            // show score code goes here
            
            MainViewController.notifyUser(title: "a", message: "b", fromController: MainViewController)
            

            // show score code goes here
            
            
            
            
            questionNumber = 0
            score = 0
        }
    }
    
    mutating func checkAnswer(userAnswer: String) -> Bool {
        //Need to change answer to rightAnswer here. 
        if userAnswer == quiz[questionNumber].rightAnswer {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    
    
    
}

