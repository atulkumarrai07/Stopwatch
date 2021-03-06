//
//  Stopwatch.swift
//  Stopwatch
//
//  Created by Atul Kumar Rai on 9/9/21.
//

import Foundation

class Stopwatch
{
  private var startTime: NSDate?
  
  func start()
  {
    startTime = NSDate()
  }
  
  func stop()
  {
    startTime = nil
  }
  
  var elapsedTime: TimeInterval {
    if let startTime = self.startTime
    {
      return -1 * startTime.timeIntervalSinceNow
    }
    else
    {
      return 0
    }
  }
  
  var elapsedTimeAsString: String       // to check
  {
    let minutes = Int(elapsedTime) / 60
    let seconds = Int(elapsedTime) % 60
    let secondsFraction = (((elapsedTime)*10).truncatingRemainder(dividingBy: 10))
    return String(format: "%02d:%02d.%d",minutes,Int(seconds),Int(secondsFraction))
    //return String(elapsedTime)
  }
  
  var isRunning:Bool
  {
    if(startTime == nil)
    {
      return false
    }
    else
    {
      return true
    }
  }
}
