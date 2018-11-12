function [previous_line] = NameOfPriorAction(myPosition, priorAction)

    pa1 = priorAction(1);
    pa2 = priorAction(2);
    pa3 = priorAction(3);
    pa4 = priorAction(4);
    pa5 = priorAction(5);

    if pa1 == '1'
        pa1 = "posts SB";
    elseif pa1 == '2'
        pa1 = "posts BB";
    elseif pa1 == '3'
        pa1 = "folds";
    elseif pa1 == '4'
        pa1 = "calls";
    elseif pa1 == '5'
        pa1 = "raises";
    elseif pa1 == '6'
        pa1 = "raises (all-in)";
    end    
    if priorAction(2) == '1'
        pa2 = "posts SB";
    elseif priorAction(2) == '2'
        pa2 = "posts BB";
    elseif priorAction(2) == '3'
        pa2 = "folds";
    elseif priorAction(2) == '4'
        pa2 = "calls";
    elseif priorAction(2) == '5'
        pa2 = "raises";
    elseif priorAction(2) == '6'
        pa2 = "raises (all-in)";
    end  
    if priorAction(3) == '1'
        pa3 = "posts SB";
    elseif priorAction(3) == '2'
        pa3 = "posts BB";
    elseif priorAction(3) == '3'
        pa3 = "folds";
    elseif priorAction(3) == '4'
        pa3 = "calls";
    elseif priorAction(3) == '5'
        pa3 = "raises";
    elseif priorAction(3) == '6'
        pa3 = "raises (all-in)";
    end  
    if priorAction(4) == '1'
        pa4 = "posts SB";
    elseif priorAction(4) == '2'
        pa4 = "posts BB";
    elseif priorAction(4) == '3'
        pa4 = "folds";
    elseif priorAction(4) == '4'
        pa4 = "calls";
    elseif priorAction(4) == '5'
        pa4 = "raises";
    elseif priorAction(4) == '6'
        pa4 = "raises (all-in)";
    end  
    if priorAction(5) == '1'
        pa5 = "posts SB";
    elseif priorAction(5) == '2'
        pa5 = "posts BB";
    elseif priorAction(5) == '3'
        pa5 = "folds";
    elseif priorAction(5) == '4'
        pa5 = "calls";
    elseif priorAction(5) == '5'
        pa5 = "raises";
    elseif priorAction(5) == '6'
        pa5 = "raises (all-in)";
    end  
    
    if myPosition == "UTG"
        previous_line = "";
    elseif myPosition == "HJ"
        previous_line = "UTG" + " " + pa5 + '\n';
    elseif myPosition == "CO"
        previous_line = "UTG" + " " + pa4 + '\n' + "HJ" + " " + pa5 + '\n';
    elseif myPosition == "BTN"
        previous_line = "UTG" + " " + pa3 + '\n' + "HJ" + " " + pa4 + '\n' + "CO" + " " + pa5 + '\n';
    elseif myPosition == "SB"
        previous_line = "UTG" + " " + pa2 + '\n' + "HJ" + " " + pa3 + '\n' + "CO" + " " + pa4 + '\n' + "BTN" + " " + pa5 + '\n';
    elseif myPosition == "BB"
        previous_line = "UTG" + " " + pa1 + '\n' + "HJ" + " " + pa2 + '\n' + "CO" + " " + pa3 + '\n' + "BTN" + " " + pa4 + '\n' + "SB" + " " + pa5 + '\n';
    end
    
    fprintf("\n");
    fprintf(previous_line);
    fprintf('\n');
end