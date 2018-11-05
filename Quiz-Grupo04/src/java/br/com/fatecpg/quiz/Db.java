/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.quiz;

import java.util.Collections;
import java.util.ArrayList;

/**
 *
 * @author valre
 */
public class Db {
    int i;
    private Db db = new Db();
    public static ArrayList<Quiz> getQuiz(){
        ArrayList<Quiz> quiz = new ArrayList<>();
        quiz.add(new Quiz("Qual cavaleiro ajudou Athena a escapar do Santuário há 13 anos?", "Sagitário", new String[]{" Sagitário"," Libra"," Aries"}));
        quiz.add(new Quiz("Qual Cavaleiro de Ouro é o mais belo?", "Afrodite de Peixes", new String[]{" Shura de Capricórnio"," Afrodite de Peixes"," Aldebaran de Touro"}));
        quiz.add(new Quiz("Quem é o Cavaleiro de Ouro da Casa de Leão?", "Aioria", new String[]{" Aioria"," Miro"," Camus"}));
        quiz.add(new Quiz("Cólera do Dragão é um grande golpe de qual Cavaleiro?", " Shiryu", new String[]{" Dohko"," Shion"," Shiryu"}));
        quiz.add(new Quiz("Muralha de Cristal e Extinção são grandes golpes de qual Cavaleiro de Ouro?", "Mu de Áries", new String[]{" Aiolia de Leão"," Máscara da Morte de Câncer"," Mu de Áries"}));
        quiz.add(new Quiz("O Cavaleiro de qual constelação usou um arco para ferir Saori?", "Sagitário", new String[]{" Cancer"," Sagitário"," Libra"}));
        quiz.add(new Quiz("Durante a corrida na batalha das Doze Casas, qual Cavaleiro de Ouro facilitou para Seiya e seus companheiros?", " Mu de Áries", new String[]{" Mu de Áries"," Saga de Gêmeos"," Shaka de Virgem"}));
        quiz.add(new Quiz("Qual o nome do Deus do Sono?", " Hypnos", new String[]{" Hypnos"," Ártemis"," Thanatos"}));
        quiz.add(new Quiz("Onde Hyoga de Cisne obteve a sua Armadura?", " Sibéria Oriental", new String[]{" Colinas Bomi, Libéria"," Montanhas Rochosas, Canadá"," Sibéria Oriental"}));
        quiz.add(new Quiz("A armadura de qual constelação é um arsenal de armas?", " Libra", new String[]{" Libra"," Peixes"," Áries"}));
        
       Collections.shuffle(quiz);
        
        return quiz;
        
    }
    
}
