%%
%convertThelabel
%x=FrequencyTFIDF1;
%x=FrequencyTFIDF2;
%x=FrequencyTFIDF3;
%x=FrequencyTFIDF4;
%x=FrequencyTFIDF5;
%x=FrequencyTFIDF6;
%x=FrequencyTFIDF7;
%x=FrequencyTFIDF8;
%x=FrequencyTFIDF9;
%x=FrequencyTFIDF10;
%x=FrequencyTFIDF11;
%x=FrequencyTFIDF12;
%x=FrequencyTFIDF13;
%x=FrequencyTFIDF14;
%x=FrequencyTFIDF15;
%x=FrequencyTFIDF21;
%z=readmatrix('FrequencyTFIDF1.txt')
x = z(randperm(size(x, 1)), :);
Data=x(:,2:end);
DataNoCen=x(1:end-2,2:end);
al=x(:,1);
cent=x(end-1:end,2:end);

