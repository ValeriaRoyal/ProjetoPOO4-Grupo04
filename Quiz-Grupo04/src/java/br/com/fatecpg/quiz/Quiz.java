/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.quiz;

/**
 *
 * @author valre
 */
public class Quiz {
    
    private String quiz;
    private String answer;
    private String alternatives[];

    public Quiz(String quiz, String answer, String[] alternatives) {
        this.quiz = quiz;
        this.answer = answer;
        this.alternatives = alternatives;
    }

        public String getQuiz() {
            return quiz;
        }

        public void setQuiz(String quiz) {
            this.quiz = quiz;
        }

        public String getAnswer() {
            return answer;
        }

        public void setAnswer(String answer) {
            this.answer = answer;
        }

        public String[] getAlternatives() {
            return alternatives;
        }

        public void setAlternatives(String[] alternatives) {
            this.alternatives = alternatives;
        }
    }
