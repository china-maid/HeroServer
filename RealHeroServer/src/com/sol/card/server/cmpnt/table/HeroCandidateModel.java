package com.sol.card.server.cmpnt.table;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import com.sol.card.server.layer.dao.HeroParser;
import com.sol.card.server.util.c;

public class HeroCandidateModel {
    
    List<Integer> allHeroList;
    List<Integer> availableList;
    public HeroCandidateModel candidateModel;
    
    
    public Integer[] getCandidatesForSinglePlayer() {
    
        Candidates result = new Candidates();
        for (int i = 0; i < c.default_hero_candidates_count_for_each_player; i++) {
            result.addCandidate(availableList.get(i));
        }
        
        return result.confirm();
    }
    
    public List<Integer[]> getCandidateForAll(int howManyNeeded) {
    
        List<Integer[]> readyCandidateList = new ArrayList<Integer[]>();
        for (int i = 0; i < howManyNeeded; i++) {
            readyCandidateList.add(getCandidatesForSinglePlayer());
        }
        
        return readyCandidateList;
    }
    
    class Candidates {
        
        private List<Integer> candidateList = new ArrayList<Integer>();
        
        public void addCandidate(int hero) {
        
            candidateList.add(hero);
        }
        
        public Integer[] confirm() {
        
            availableList.removeAll(candidateList);
            return candidateList.toArray(new Integer[candidateList.size()]);
        }
        
        public List<Integer> getCandidateList() {
        
            return candidateList;
        }
        
        public void setCandidateList(List<Integer> candidateList) {
        
            this.candidateList = candidateList;
        }
        
    }
    
    public HeroCandidateModel() {
    
        allHeroList = HeroParser.getParser().getHeroIdList();
        Collections.shuffle(allHeroList);
        availableList = new ArrayList<Integer>();
        availableList.addAll(allHeroList);
        
    }
    
    @Override
    public String toString() {
    
        return "HeroCandidateModel [allHeroList=" + allHeroList + ", availableList=" + availableList + "]";
    }
    
}
