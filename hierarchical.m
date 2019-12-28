
Z = linkage(DataNoCen,'complete','spearman');
pred = cluster(Z,'maxclust',2);
[Accuracy, Precision ,Recall ,F_measure]=confusinMatrixF(pred,al);