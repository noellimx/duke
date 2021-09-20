package duke;


import duke.manager.Ui;

public class Main {
    public static void main(String[] args) throws Exception {
        Ui ui = new Ui(System.out);
        ui.printEntryMessage();
        ui.printTerminateMessage();
    }
}
