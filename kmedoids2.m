%%
rng('default');
Asum=0; Amean=0;
for i=1:20
rng(i)
[pred,C] = kmedoids(DataNoCen,2,'distance','cosin');
[Accuracy, Precision ,Recall ,F_measure]=confusinMatrixF(pred,al);
Asum=Asum+Accuracy;
x(i)=Accuracy;
end
Amean=Asum/20;
SD=std(x,1);
%%
rng('default');
Asum=0; Amean=0;
for i=1:20
 rng(i)
[pred,C] = kmedoids(DataNoCen,2,'Algorithm','clara','distance','cosin');
[Accuracy, Precision ,Recall ,F_measure]=confusinMatrixF(pred,al);
Asum=Asum+Accuracy;
x(i)=Accuracy;
end
Amean=Asum/20;
SD=std(x,1);
             