import UIKit

class ViewController: UIViewController
{
    var seconds:Int = 00
    var minutes:Int = 00
    var hours:Int = 00
    @IBOutlet weak var myLabel: UILabel!
    var timer = Timer()
    var isTimerRunning = false
    func startAction()
    {
        if isTimerRunning
        {
            return
        }
        else
        {
            isTimerRunning = true
            timer = Timer.scheduledTimer(withTimeInterval: 0.001, repeats: true, block: { (timer) in
                self.seconds += 1;
                if(self.seconds == 60)
                {
                    self.seconds = 0;
                    self.minutes += 1;
                }
                if(self.minutes == 60)
                {
                    self.seconds = 0;
                    self.minutes = 0;
                    self.hours += 1;
                }
                let timerValue:String = String(String(self.hours) + " : " + String(self.minutes) + " : " + String(self.seconds));
                self.myLabel.text = timerValue;
            })
        }
    }
    func stopAction()
    {
        if isTimerRunning
        {
            let timerValue:String = String(String(self.hours) + " : " + String(self.minutes) + " : " + String(self.seconds));
            self.myLabel.text = timerValue
            timer.invalidate()
            isTimerRunning = false
        }
    }
    func resetAction()
    {
        if !isTimerRunning
        {
            seconds = 0;
            hours = 0;
            minutes = 0;
            let timerValue:String = String(String(self.hours) + " : " + String(self.minutes) + " : " + String(self.seconds));
            self.myLabel.text = timerValue
            isTimerRunning = false
        }
    }
    @IBAction func startButton(_ sender: UIButton)
    {
        startAction()
    }
    @IBAction func stopButton(_ sender: UIButton)
    {
        stopAction()
    }
    @IBAction func resetButton(_ sender: UIButton)
    {
        resetAction()
    }
    @IBAction func pauseButton(_ sender: UIButton)
    {
        
    }
    override func viewDidLoad()
    {
        let timerValue:String = String(String(hours) + " : " + String(minutes) + " : " + String(seconds));
        myLabel.text = timerValue;
        super.viewDidLoad()
    }
}
