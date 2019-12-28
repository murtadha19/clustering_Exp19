%%
rng('default');
%%
[pred,C] = kmeans(DataNoCen,2,'Start',cent,'Distance','cosin');

%%
rng('default');
Asum=0; Amean=0;
for i=1:20
    rng(i)
[pred,C] = kmeans(DataNoCen,2,'Start','sample','Distance','cosin');
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
[pred,C] = kmeans(DataNoCen,2,'Start','plus','Distance','cosin');
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
[pred,C] = kmeans(DataNoCen,2,'Start','uniform','Distance','cosin');
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
[pred,C] = kmeans(DataNoCen,2,'Start','cluster','Distance','cosin');
[Accuracy, Precision ,Recall ,F_measure]=confusinMatrixF(pred,al);
Asum=Asum+Accuracy;
x(i)=Accuracy;
end
Amean=Asum/20;
SD=std(x,1);


