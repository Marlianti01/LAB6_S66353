/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package lab6.com;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 *
 * @author marli
 */
public class Student {
    private String stuno;
    private String name;
    private String program;
    
    private static final Pattern STUNO_PATTERN = Pattern.compile("[A-Z0-9]*");

    public String getStuno() {
        return stuno;
    }

    public void setStuno(String stuno) {
         Matcher matcher = STUNO_PATTERN.matcher(stuno);
        if (matcher.matches()) {
            this.stuno = stuno;
        } 
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getProgram() {
        return program;
    }

    public void setProgram(String program) {
        this.program = program;
    }
    
    
}
