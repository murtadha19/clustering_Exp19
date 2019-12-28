function [Accuracy, Precision ,Recall ,F_measure]=confusinMatrixF(pred,al)
% al(i)==2 is actual postive, and al(i)==1 ia actual negative.
posGone=0;posGtwo=0;negGone=0;negGtwo=0;
for i=1:length( pred)
    if pred(i)==1 && al(i)==2
        
        posGone=posGone+1;
        
    elseif pred(i)==2 && al(i)==2
        
        posGtwo=posGtwo+1;
        
    elseif pred(i)==1 && al(i)==1
        
        negGone=negGone+1;
        
    elseif pred(i)==2 && al(i)==1
    
        negGtwo=negGtwo+1;
    end
end

if ((posGone + negGtwo) >= (posGtwo + negGone))
    Accuracy = round((((posGone + negGtwo) / i))*100,2);
    Precision = round((posGone / (posGone + negGone))*100,2);
    Recall = round((posGone / (posGone + posGtwo))*100,2);
    F_measure = round(((2 * Precision * Recall) / (Precision + Recall))*100,2);
else
    Accuracy =round( (((posGtwo + negGone) / i))*100,2);
    Precision = round((posGtwo / (posGtwo + negGtwo))*100,2);
    Recall = round((posGtwo / (posGtwo + posGone))*100,2);
    F_measure = round(((2 * Precision * Recall) / (Precision + Recall))*100,2);
end

end
