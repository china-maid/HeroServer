package com.sol.card.server.util;

public interface c {
    
    public String a                                             = "action";
    public String action_description                            = "action_description";
    public int    action_user_ready                             = 1;
    public int    default_player_count                          = 2;
    public int    default_wait_time                             = 10;
    public int    default_draw_count                            = 5;
    public int    default_hero_candidates_count_for_each_player = 1;
    
    public interface action {
        public String none                    = "";
        public String start_game              = "start_game";
        public String free_play               = "free_play";
        public String update_table_info       = "update_table_info";
        public String update_player_property  = "update_player_info";           // update
                                                                                 // player
                                                                                 // property
        public String choosing                = "choosing";
        public String count_down              = "counting_down";
        public String update_player_list_info = "update_player_list_info";
        
        public String chose_hero              = "chose_hero";
        public String init_hand_cards         = "init_player_info_hand_cards";
        public String update_hand_cards       = "update_player_info_hand_cards";
        // public String update_hand_cards_count = "update_hand_cards_count";
        public String choosing_from_hand      = "choosing_from_hand";
        public String choosing_to_evade       = "choosing_to_evade";
        public String cutted                  = "update_table_cutted";
        public String turn_to_player          = "turn_to_player";
        public String normal_attack           = "normal_attack";
        public String decided                 = "decided";
        public String choosing_from_showing   = "choosing_from_showing";
        public String choosing_to_drop        = "choosing_to_drop";
        public String choosing_from_color     = "choosing_from_color";
        public String choosing_from_suits     = "choosing_from_suits";
        public String drop_card_stage         = "drop_card_stage";
        
        public String table_card_to_get       = "table_card_to_get";
        public String choosing_from_another   = "choosing_from_another";
    }
    
    public interface reason {
        
        String normal_attacked  = "normal_attacked";
        // public String normal_attack = "normal_attack";
        String animating        = "animating";
        String chaos_attacked   = "chaos_attacked";
        String flame_attacked   = "flame_attacked";
        String s_LagunaBladed   = "s_LagunaBladed";
        String s_viper_raided   = "s_viper_raided";
        String m_ElunesArrowed  = "m_ElunesArrowed";
        String m_ElunesArrowing = "m_ElunesArrowing";
        String m_Chakraing      = "m_Chakraing";
        String m_greeding       = "m_greeding";
        String m_greeded        = "m_greeded";
        String turn_end         = "turn_end";
        String none             = "";
    }
    
    public interface player_action {
        
        public String use_card       = "player_use_card";
        public String use_hero_skill = "player_use_hero_skill";
        public String choose         = "player_choose";
        public String cancel         = "player_cancel";
    }
    
    public interface param_key {
        
        public String left                = "left";
        String        player_count        = "player_count";
        String        id_list             = "id_list";
        public String hero_candidates     = "hero_candidates";
        public String biggist_card_id     = "biggest_card_id";
        public String clear_showing_cards = "clear_showing";
        String        is_optional_discard = "is_optional_discard";
        String        id                  = "id";
        
        final String
                      kParamUserList      = "player_list",// 所有玩家列表
                kParamRemainingCardCount = "remaining_count",// 牌堆剩余牌数
                player_name = "player_name",// 回合开始/伤害来源/出牌的玩家
                target_player_list = "target_player_list",// 目标玩家列表
                index_list = "index_list",// 选中的哪几张牌
                hand_card_count = "hand_card_count",// 玩家手牌数量/
                hand_card_change_amount = "hand_card_change_amount",
                available_count = "selectable_count",// 可选择的卡牌数量
                // selectable_ids = "selectable_ids",
                kParamExtractedCardCount = "extracted_count",// 可抽取目标的卡牌数量
                kParamSelectedHeroId = "id",// 选中的英雄
                kParamSelectedSkillId = "selected_skill_id",// 选中的英雄技能
                selected_color = "selected_color",// 选中的颜色
                selected_suits = "selected_suits",// 选中的花色
                is_strengthened = "is_strengthened",// 是否被强化
                kParamHeroBloodPoint = "hp",// 血量值
                hp_changed = "hp_changed",
                kParamHeroAngerPoint = "sp", // 怒气值
                sp_changed = "sp_changed",
                
                available_id_list = "available_id_list"
                
                // attach_source_player = "attach_source_player",
                // attach_target_player = "attach_target_player"
                
                ;
        public String single_result       = "single_result";
        // public String hand_card_to_be_change = "hand_card_to_be_change";
        // public String hand_card_after_change = "hand_card_to_be_change";
        public String reason              = "reason";
        public String is_equip            = "is_equip";
        
        interface server_internal {
            String target_player_name = "target_player_name";
            String who                = "who";               // 卡牌列表(英雄牌/摸的牌/获得的牌/使用的牌/弃置的牌)
            String how_many           = "how_many";
        }
    }
    
    interface playercon {
        
        String aiName       = "AI Player ";
        String aiPlayerName = "I'm AI ";
        
        interface property {
            
        }
        
        interface state {
            String unavailable = "unavailable";
            String free_play   = "free_play";
            String idle        = "idle";       // 没进度条, 什么都没做, 比如有人在free_play
            String waiting     = "waiting";    // 有进度条, 比如等待某人的驱散
                                                
            interface choosing {
                String choosing      = "choosing";
                String choosing_hero = "choosing_hero";
            }
            
            interface confirmed {
                String hero = "hero_confirmed";
                String id   = "id";
            }
            
            interface param_key {
                interface general {
                    String choosing_card = "choosing_card";
                    String id_list       = c.param_key.id_list;
                }
                
                interface detail {
                    String hero_candidates = "hero_candidates";
                }
            }
        }
        
    }
    
    public interface game_state {
        
        public int    none    = -1;
        public String waiting = "waiting";
        
        public interface not_started {
            
            int chooing_hero      = 1;
            int cutting           = 5;
            int determing_destiny = 2;
            int can_start_turn    = 6;
        }
        
        public interface started {
            
            int free_playing                 = 3;
            int deciding                     = 4;
            int somebody_is_ending_turn      = 7;
            
            int somebody_attacking           = 10;
            int somebody_s_LagunaingBlade    = 11;
            int somebody_is_s_viper_raiding  = 12;
            int somebody_is_m_ElunesArrowing = 13;
            int somebody_is_m_Chakraing      = 14;
            int somebody_is_m_greeding       = 15;
        }
        
        int ended = 5;
        
        interface waiting_type {
            int none      = -1;
            int everybody = 10;
            int single    = 20;
        }
    }
    
    public interface selectable_count {
        
        int default_value = 1;
        
    }
    
}
