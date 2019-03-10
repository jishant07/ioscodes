import UIKit

//Emojis

var heart = "💗"
print(heart)

var 🐱 = "CAT"
print (🐱)

var emotion_dict = [String:String]()
emotion_dict = ["Happy":"😁","Sad":"☹️","Angry":"😡"]
func check_emotion (howareyoufeeling emotion : String)
{
    for i in emotion_dict
    {
        if(i.key==emotion)
        {
            print("The emotion is :" , i.value)
        }
    }
}
check_emotion(howareyoufeeling: "Angry")
