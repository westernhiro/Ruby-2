def play_janken
    puts "じゃんけん……"
    
    loop{
        puts "0(グー) 1(チョキ) 2(パー)"

        case gets.to_i
        when 0
            my_hand = "[グー]"
        when 1
            my_hand = "[チョキ]"
        when 2
            my_hand = "[パー]"
        else
            puts "入力値が不正です。再入力してください。"
            redo
        end
        
        case rand(3)
        when 0
            opponent_hand = "[グー]"
        when 1
            opponent_hand = "[チョキ]"
        when 2
            opponent_hand = "[パー]"
        end
        
        puts "----------"
        puts "あなた：#{my_hand}"
        puts "相手：#{opponent_hand}"
        puts "----------"
    
        if my_hand == opponent_hand
            puts "あいこになりました。あいこで……"
            redo
        end

        if my_hand == "[グー]" && opponent_hand == "[チョキ]" || my_hand == "[チョキ]" && opponent_hand == "[パー]" || my_hand == "[パー]" && opponent_hand == "[グー]"
            @result = "win"
        end
        
        if my_hand == "[グー]" && opponent_hand == "[パー]" || my_hand == "[チョキ]" && opponent_hand == "[グー]" || my_hand == "[パー]" && opponent_hand == "[チョキ]"
            @result = "lose"
        end
        
        break
    }
end


def play_look_this_way
    loop{
        puts " 0(上) 1 (右) 2(下) 3(左)"

        case gets.to_i
        when 0
            my_direction = "[上]"
        when 1
            my_direction = "[右]"
        when 2
            my_direction = "[下]"
        when 3
            my_direction = "[左]"
        else
            puts "入力値が不正です。再入力してください。"
            redo
        end
        
        case rand(4)
        when 0
            opponent_direction = "[上]"
        when 1
            opponent_direction = "[右]"
        when 2
            opponent_direction = "[下]"
        when 3
                opponent_direction = "[左]"
        end
    
        puts "----------"
        puts "あなた：#{my_direction}"
        puts "相手：#{opponent_direction}"
        puts "----------"

        if my_direction == opponent_direction
            @direction = "match"
        else
            @direction = "mismatch"
        end
        
        break
    }
end


loop{
    play_janken

    if @result == "win"
        puts "じゃんけんに勝ちました。指を指す方向を選択してください。"
        
        play_look_this_way

        if @direction == "match"
            puts "あなたの勝利です"
            break
        else    
            puts "引き分けになりました"
            puts "----------"
        end
    end

    if @result == "lose"
        puts "じゃんけんに負けました。顔を向ける方向を選択してください"
        
        play_look_this_way
        
        if @direction == "match"
            puts "あなたの敗北です"
            break
        else
            puts "引き分けになりました"
            puts "----------"
        end
    end
}


