import java.awt.event.KeyEvent; //<>//
import javax.swing.JOptionPane;
import processing.serial.*;
import javax.swing.JFrame;

Serial port = null;

String portname = null;
boolean streaming = false;
float speed = 0.001;
String[] gcode;
int i = 0;

void openSerialPort() {
  if (portname == null) return;
  if (port != null) port.stop();

  port = new Serial(this, portname, 9600);

  port.bufferUntil('\n');
}

void selectSerialPort() {
  JFrame frame = new JFrame();
  String result = (String) JOptionPane.showInputDialog(frame,
    "Select the COM port on the Arduino board",
    "Select serial port",
    JOptionPane.QUESTION_MESSAGE,
    null,
    Serial.list(),
    0);

  if (result != null) {
    portname = result;
    openSerialPort();
  }
}

void setup() {
  size(500, 120);
  openSerialPort();
}

void draw() {
  background(0);
  fill(255);
  int y = 24, dy = 12;

  text("Instructions: ", 12, y);
  y += dy;
  text("1. Press P to select serial port", 12, y);
  y += dy;
  text("2. Press G to select G-code file", 12, y);
  y += dy;
  text("3. Press S to start", 12, y);
  y += dy;
  text("4. Press X to stop and reset the CNC", 12, y);
  y += dy;
  y = height - dy;

  if (portname == null)
  {
    text("You have not selected a serial port yet", 12, y);
  } else {
    text("Currently selected serial port: " + portname, 12, y);
  }
  y -= dy;
}

void keyPressed() {

  if (!streaming) {
    if (key == 'p') {
      selectSerialPort();
    }
  }

  if (!streaming && key == 'g') {
    gcode = null;
    i = 0;
    File file = null;
    println("Loading file...");
    selectInput("Select a file to process:", "fileSelected", file);
  }

  if (streaming != false && key == 's') {
    stream();
  }

  if (key == 'x') {
    returnHome();
    streaming = false;
  }
}

void fileSelected(File selection) {
  println("Selected " + selection.getAbsolutePath());
  gcode = loadStrings(selection.getAbsolutePath());
  if (gcode == null) return;
  streaming = true;
  //stream();
}

void stream() {
  if (!streaming) {
    return;
  }

  while (true) {
    if (i == gcode.length) {
      streaming = false;
      return;
    }

    if (gcode[i].trim().length() == 0) {
      i++;
    } else {
      break;
    }
  }

  println(gcode[i]);
  port.write(gcode[i] + '\n');
  i++;
}

void serialEvent(Serial p) {
  String s = p.readStringUntil('\n');
  println(s.trim());

  if (s.trim().startsWith("ok")) {
    stream();
  }
  if (s.trim().startsWith("error")) {
    stream();
  }
}

void returnHome() {
  //port.write("G21 (metric ftw)" + '\n');
  //port.write("G90 (absolute mode)" + '\n');
  //port.write("(end of print job)" + '\n');
  port.write("M300 S50.00 (pen up)" + '\n');
  port.write("G4 P150 (wait 150ms)" + '\n');
  port.write("M300 S255 (turn off servo)" + '\n');
  port.write("G1 X0 Y0 F3500.00" + '\n');
  port.write("G1 Z0.00 F150.00 (go up to finished level)" + '\n');
  port.write("G1 X0.00 Y0.00 F3500.00 (go home)" + '\n');
  port.write("M18 (drives off)" + '\n');
}
