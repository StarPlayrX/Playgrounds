import AppKit

/// Todd Swift Playground: Optionals! (c) Todd Swift 2019
/// Follow me on twitter @iOS_Swift
/// Website: https://starplayrx.com
/// August 14, 2019
/// Github: StarPlayrX/Playgrounds/.

/// Lesson 1
/// All About Optionals
/// Written by Todd Swift
/// Ingredients: 100% Swift
/// In Swift We Trust.

/// You can learn and republish this playground
/// you must not remove the credit or my website.

/// Today we are going to demo optionals

/// Definition:
/// An optional is a weak variable that can have a value or it can be nil.

/// An optional has two basic purposes

/// 1. It can assist with memory management and once an optional is declare nil, it will break any strong references associated with it.

/// 2. Optionals can improve the predictabiltiy of your code. In Objective-C, values can be null and a null value is allowed to continue running, and can lead to problems further down stream. In Swift if nil is force unwrapped, this encounter will crash the app and it will stop right where the error occurred. This allows for better error trapping and lets you fix it at a precise place in your code. This my seem counter intuitive at first, but over time you will learn to manage optionals and use them to your advangtage and not the other way around.

/// This is how to create an optional without a value
var SwiftTodd : String? //nil

/// This can also be done this way
var SwiftTodd2 : Optional<String>

/// This is how to create an optional with a value
var ToddSwift : String? = "Todd Swift" //Todd Swift

/// if you do not force unwrap an optional it will have an Optional Type with a value inside, in this case a string
print(ToddSwift as Any) /// Optional("Todd Swift")
/// Not recommended, but you can force unwrap an optional using !
let Todd = ToddSwift!
print(Todd) //Todd Swift

/// Since our variable did have a value it did not crash. Let's try to do the same thing with SwiftTodd that is nil, uncomment the following lines:

//let CrashSwift = SwiftTodd! // error: Execution was interrupted, reason: EXC_BAD_INSTRUCTION

/// Now let's see what happens if we use a default value for this optional using ?? "StringValue"
/// recomment the previous line if you haven't done so

let CrashSwift = SwiftTodd ?? "I will not crash." //"I will not crash."

/// Here we just avoided having to force unwrap the optional and we gave our new variable default value

/// Let's try it again with the same variable and see if it still works.

SwiftTodd = SwiftTodd ?? "I will not crash." //"I will not crash."

/// Same result!
/// Let's try setting this back to nil

SwiftTodd = nil //nil

//yup that worked!

/// now let use ? to safely access this optional with an utf8 extension.
///We already know it's nill but ? won't crash your app
let utf8Ext = SwiftTodd?.utf8 //nil (but it did not crash.

//uncomment this line, can you predict what will happen?
//let utf8Ext2 = SwiftTodd!.utf8

/// Okay we covered ! ? and setting a default with ??
/// Let's show you some other ways to work with optionals while unwrapping them safely

if let unwrapMe = ToddSwift {
    print(unwrapMe) //Todd Swift
}

if let unwrapMe = SwiftTodd {
    print(unwrapMe) //This does not run because SwiftTodd is nil!
}

/// Now let's try the same with with guard
/// guard usually will return if the optional is nil
func guardToddSwift () -> () {
    
    guard let unguard = ToddSwift else {
        //do nothing
        print("unguard failed.") // does not run if is not nil
        return
    }
    
    print(unguard) //Todd Swift

}

guardToddSwift()


func guardSwiftTodd () -> () {
    
    guard let unguard = SwiftTodd else {
        //do nothing
        print("unguard failed.") // runs because SwiftTodd is nil, then returns
        return
    }
    
    print(unguard) //Todd Swift
    
}

guardSwiftTodd()


/// Okay.. That covers nearly everything possible thing about optionals
/// There is one last method and it's a lazy one and it is similar to Javascript
/// And that is Not nil

if ToddSwift != nil {
    print(ToddSwift! + " is not nil.") //Todd Swift is not nil
} else {
    print("It's nil!") // does not run, ToddSwift has a value
}


if SwiftTodd != nil {
    print(SwiftTodd! + " is not nil.") //Does not run, SwiftTodd is nil
} else {
    print("It's nil!") // It's nil!
}

/// Okay that about wraps it up for Optionals.

/// Oh wait I almost forgot. I had this interview question and I failed
/// So here it is. Write a function and return a value or nil
/// How do you do that? The answer is simple. You return an optional like so

func YouDaMan () -> String? {
    return SwiftTodd // returns nil
}

YouDaMan()

func YouDaManNowDawg () -> String? {
    return ToddSwift //returns Todd Swift
}

YouDaManNowDawg()

/// So there you go. That is about 100% of everything you need to know about Optionals.

/// One more thing, you can use the Optional type to define an optional long hand
print( Optional("Congrat's! You Graduated the first Todd Swift class.") as Any )





