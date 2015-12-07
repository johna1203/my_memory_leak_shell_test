#!/usr/bin/python
# -*- coding: utf-8 -*-
import RPi.GPIO as GPIO
import time, threading

COUNT = 3
PIN1 = 18
PIN2 = 22
PIN3 = 27
class TestThread(threading.Thread):
    def __init__(self, pin):
        threading.Thread.__init__(self)
        self.pin = pin
    def run(self):
        print "  === start sub thread ==="
        time.sleep(5)
        GPIO.setup(self.pin, GPIO.OUT)
        GPIO.output(self.pin, 1)
        time.sleep(10)
        GPIO.output(self.pin, 0)

def switch_callback(gpio_pin):
    print "switch_callbackしたよ"


def main():
    GPIO.setmode(GPIO.BOARD)
    for pin in [PIN1]:
        GPIO.setup(pin, GPIO.IN)
        GPIO.add_event_detect(pin, GPIO.BOTH, callback=switch_callback)
        t = TestThread(pin)
        t.start()

    while (1):
        time.sleep(0.0001)
        # try :
        #     GPIO.wait_for_edge(pin, GPIO.BOTH)
        # except KeyboardInterrupt:
        #     GPIO.cleanup()       # clean up GPIO on CTRL+C exit

    GPIO.cleanup()


if __name__ == '__main__':
    main()



# GPIO.cleanup()
