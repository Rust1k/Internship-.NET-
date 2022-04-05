Create a console application (*.exe) that will check if the instance of the application is already running in OS.
So it should not be possible to run more than one process of your application at one time.

Inside your application create 6 threads, 2 of them should wait for ManualResetEvent of the first thread, another 2 threads should wait for AutoResetEvent of the second thread. Implement the logic which will show the following output in the console:

Thread 1 started
Thread 2 started
Thread 3 is waiting for a manual signal from Thread 1
Thread 4 is waiting for a manual signal from Thread 1
Thread 5 is waiting for an auto signal from Thread 2
Thread 6 is waiting for an auto signal from Thread 2
Thread 2 set signal
Thread 5 received an auto signal, continue working
Thread 1 set signal
Thread 3 received a manual signal, continue working
Thread 4 received a manual signal, continue working
Thread 1 reset signal
Thread 2 set signal
Thread 6 received an auto signal, continue working
