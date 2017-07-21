package com.github.sekruse.scala_detector;

/**
 * The main class of this app.
 */
public class Main {

    public static void main(String[] args) {
        try {
            Class.forName("scala.util.Properties");
        } catch (ClassNotFoundException e) {
            System.err.println("Could not find Scala artifacts.");
            System.exit(1);
        }
        System.out.println(scala.util.Properties.versionNumberString());
    }


}
