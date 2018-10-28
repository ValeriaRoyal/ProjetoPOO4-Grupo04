/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.quiz;

import java.util.ArrayList;

/**
 *
 * @author valre
 */
public class Db {
    public static ArrayList<Quiz> getQuiz(){
        ArrayList<Quiz> quiz = new ArrayList<>();
        quiz.add(new Quiz("1+1?", "2", new String[]{"1","2","3"}));
        quiz.add(new Quiz("1+1?", "2", new String[]{"1","2","3"}));
        quiz.add(new Quiz("1+1?", "2", new String[]{"1","2","3"}));
        quiz.add(new Quiz("1+1?", "2", new String[]{"1","2","3"}));
        quiz.add(new Quiz("1+1?", "2", new String[]{"1","2","3"}));
        quiz.add(new Quiz("1+1?", "2", new String[]{"1","2","3"}));
        quiz.add(new Quiz("1+1?", "2", new String[]{"1","2","3"}));
        quiz.add(new Quiz("1+1?", "2", new String[]{"1","2","3"}));
        quiz.add(new Quiz("1+1?", "2", new String[]{"1","2","3"}));
        quiz.add(new Quiz("1+1?", "2", new String[]{"1","2","3"}));
        
        return quiz;
        
    }
}
