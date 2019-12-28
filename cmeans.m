
rng('default');
Asum=0; Amean=0;
h=1.0;
for i=1:20
    rng(i);
    h=h+0.05;
[centers,U] = fcm(DataNoCen,2,[1.02 500 1.5 0]);
maxU = max(U);
for i=1:1499
    if U(1,i) == maxU(i)
        pred(i)=1;
    else
        pred(i)=2;
    end
end
pred=pred';
[Accuracy, Precision ,Recall ,F_measure]=confusinMatrixF(pred,al);
Asum=Asum+Accuracy;
x(i)=Accuracy;
end
Amean=Asum/20;
SD=std(x,1);
