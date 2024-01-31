// SimpleJavaApp.java
public class SimpleJavaApp {
    public static void main(String[] args) {
        Thread thread1 = new Thread(() -> {
            while (true) {
                System.out.println("Thread 1 is running...");
                try {
                    Thread.sleep(1000);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        });

        Thread thread2 = new Thread(() -> {
            while (true) {
                System.out.println("Thread 2 is running...");
                try {
                    Thread.sleep(1000);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        });

        thread1.start();
        thread2.start();
    }
}
