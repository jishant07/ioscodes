import UIKit

class ViewController: UIViewController
{
    var seconds:Int = 00
    var minutes:Int = 00
    var hours:Int = 00
    @IBOutlet weak var myLabel: UILabel!
    var timer = Timer()
    var isTimerRunning = false
    var stopper = false
    func startAction()
    {
        if stopper == true
        {
            resetAction()
        }
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
                let timerValue:String = String(String(format:"%02d", self.hours) + " : " + String(format:"%02d",self.minutes) + " : " + String(format:"%02d",self.seconds));
                self.myLabel.text = timerValue;
            })
        }
    }
    func stopAction()
    {
        if isTimerRunning
        {
            timer.invalidate()
            isTimerRunning = false
            stopper = true
        }
    }
    func resetAction()
    {
        if !isTimerRunning
        {
            seconds = 0;
            hours = 0;
            minutes = 0;
            isTimerRunning = false
            let timerValue:String = String(String(format:"%02d", self.hours) + " : " + String(format:"%02d",self.minutes) + " : " + String(format:"%02d",self.seconds));
            self.myLabel.text = timerValue;
            stopper = false
        }
    }
    func pauseAction()
    {
        if isTimerRunning
        {
            isTimerRunning = false
            timer.invalidate()
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
        pauseAction()
    }
    override func viewDidLoad()
    {
        let timerValue:String = String(String(format:"%02d", self.hours) + " : " + String(format:"%02d",self.minutes) + " : " + String(format:"%02d",self.seconds));
        myLabel.text = timerValue;
        super.viewDidLoad()
        
    }
}
