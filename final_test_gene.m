function y=final_test_gene(one_column)  %把单个声音序列样本转化为主成分坐标，用来作为神经网络输入
ratio_in_pi=1.0;


basis1=[-0.0637000000000000;-0.0766000000000000;-0.0698000000000000;-0.0769000000000000;-0.0933000000000000;-0.0988000000000000;-0.0916000000000000;-0.0924000000000000;-0.0912000000000000;-0.0777000000000000;0.00170000000000000;0.0495000000000000;0.0772000000000000;0.0986000000000000;0.0981000000000000;0.0896000000000000;0.0612000000000000;0.0622000000000000;0.0684000000000000;0.0566000000000000;0.0466000000000000;-0.0241000000000000;-0.0751000000000000;-0.0845000000000000;-0.0527000000000000;-0.0433000000000000;-0.0467000000000000;-0.0403000000000000;-0.0445000000000000;-0.0780000000000000;-0.0798000000000000;-0.0859000000000000;-0.0899000000000000;-0.104100000000000;-0.0886000000000000;-0.0825000000000000;-0.0784000000000000;-0.0734000000000000;-0.0762000000000000;-0.0676000000000000;-0.0610000000000000;-0.0482000000000000;-0.0380000000000000;-0.0359000000000000;-0.0180000000000000;0.00300000000000000;-0.00170000000000000;-0.0289000000000000;-0.0825000000000000;-0.0875000000000000;-0.0753000000000000;-0.0640000000000000;-0.0536000000000000;-0.0614000000000000;-0.0870000000000000;-0.0694000000000000;-0.0544000000000000;-0.0146000000000000;-0.000500000000000000;0.00510000000000000;0.00560000000000000;0.00770000000000000;0.0203000000000000;0.0130000000000000;0.00670000000000000;0.00820000000000000;-0.00960000000000000;-0.0364000000000000;-0.0575000000000000;-0.0653000000000000;-0.0633000000000000;-0.0384000000000000;-0.0264000000000000;-0.0243000000000000;-0.0250000000000000;-0.0254000000000000;-0.0241000000000000;-0.0198000000000000;-0.0105000000000000;-0.00670000000000000;-0.00750000000000000;-0.00830000000000000;-0.0502000000000000;-0.0924000000000000;-0.0969000000000000;-0.0807000000000000;-0.0645000000000000;-0.0739000000000000;-0.0972000000000000;-0.0871000000000000;-0.0868000000000000;-0.0853000000000000;-0.0944000000000000;-0.0959000000000000;-0.0699000000000000;-0.0728000000000000;-0.0949000000000000;-0.102400000000000;-0.106300000000000;-0.0812000000000000;-0.0761000000000000;-0.0964000000000000;-0.103300000000000;-0.100200000000000;-0.0854000000000000;-0.0945000000000000;-0.0979000000000000;-0.102900000000000;-0.103100000000000;-0.0925000000000000;-0.0969000000000000;-0.0957000000000000;-0.100300000000000;-0.102400000000000;-0.0952000000000000;-0.100900000000000;-0.0954000000000000;-0.0995000000000000;-0.101700000000000;-0.0938000000000000;-0.0916000000000000;-0.0996000000000000;-0.103600000000000;-0.100400000000000;-0.0932000000000000;-0.0977000000000000;-0.0987000000000000;-0.100000000000000;-0.0853000000000000;-0.0727000000000000;-0.0904000000000000;-0.103700000000000;-0.0964000000000000;-0.0900000000000000;-0.0843000000000000;-0.102700000000000;-0.0940000000000000;-0.0938000000000000;-0.0816000000000000;-0.0877000000000000;-0.0944000000000000;-0.0988000000000000;-0.0973000000000000;-0.101800000000000;-0.0879000000000000;-0.0935000000000000;-0.0997000000000000;-0.0952000000000000;-0.0922000000000000;-0.0925000000000000;-0.0995000000000000;-0.0966000000000000;-0.0966000000000000;-0.0960000000000000;-0.0961000000000000;-0.0930000000000000;-0.0853000000000000;-0.0886000000000000;-0.0973000000000000;-0.0985000000000000;-0.0895000000000000;-0.0822000000000000;-0.0910000000000000];
basis2=[0.0638000000000000;-0.0387000000000000;-0.0609000000000000;-0.0641000000000000;-0.0470000000000000;-0.0415000000000000;-0.0522000000000000;-0.0578000000000000;-0.0414000000000000;-0.0288000000000000;0.0430000000000000;0.144400000000000;0.112300000000000;0.0401000000000000;0.00490000000000000;-0.0166000000000000;0.0325000000000000;0.0994000000000000;0.0198000000000000;-0.0174000000000000;0.00520000000000000;0.118500000000000;0.00860000000000000;-0.00660000000000000;0.106500000000000;0.139600000000000;0.137100000000000;0.132200000000000;0.105800000000000;0.00180000000000000;-0.00170000000000000;0.0871000000000000;0.0886000000000000;0.00690000000000000;-0.0316000000000000;-0.0110000000000000;0.0519000000000000;0.0669000000000000;0.0525000000000000;0.0107000000000000;0.0136000000000000;0.0533000000000000;0.122800000000000;0.105800000000000;0.0690000000000000;0.146300000000000;0.134600000000000;0.0628000000000000;0.0557000000000000;0.0836000000000000;0.0699000000000000;0.0543000000000000;-0.00680000000000000;-0.0388000000000000;0.0821000000000000;0.0906000000000000;0.134900000000000;0.190500000000000;0.185500000000000;0.181900000000000;0.182200000000000;0.186100000000000;0.175000000000000;0.105200000000000;0.0524000000000000;0.0933000000000000;0.124300000000000;0.0950000000000000;0.0929000000000000;0.0983000000000000;0.113500000000000;0.127400000000000;0.107600000000000;0.0957000000000000;0.0931000000000000;0.0931000000000000;0.0989000000000000;0.124300000000000;0.165600000000000;0.180900000000000;0.167600000000000;0.138700000000000;0.107600000000000;0.0212000000000000;0.00310000000000000;0.102000000000000;0.149600000000000;0.132100000000000;0.0286000000000000;-0.0216000000000000;0.0443000000000000;0.0222000000000000;-0.0123000000000000;0.00310000000000000;0.0848000000000000;0.135200000000000;0.0627000000000000;-0.0231000000000000;-0.0212000000000000;0.0984000000000000;0.125500000000000;0.0482000000000000;-0.0375000000000000;-0.0503000000000000;-0.0172000000000000;-0.00890000000000000;-0.0226000000000000;-0.0179000000000000;0.00890000000000000;0.0173000000000000;-0.0165000000000000;-0.0376000000000000;-0.0389000000000000;-0.0312000000000000;-0.0234000000000000;-0.0363000000000000;-0.0457000000000000;-0.0419000000000000;-0.0285000000000000;-0.0314000000000000;-0.0440000000000000;-0.0388000000000000;-0.0341000000000000;-0.0367000000000000;-0.0416000000000000;-0.0362000000000000;-0.0238000000000000;-0.00630000000000000;0.00520000000000000;-0.00220000000000000;0.00630000000000000;-0.00100000000000000;-0.0260000000000000;-0.0197000000000000;0.0346000000000000;0.0185000000000000;-0.00880000000000000;-0.0305000000000000;-0.0532000000000000;-0.0430000000000000;-0.0290000000000000;-0.0348000000000000;-0.0279000000000000;0.00930000000000000;-0.0146000000000000;-0.0348000000000000;-0.0492000000000000;-0.0571000000000000;-0.0449000000000000;-0.0377000000000000;-0.0494000000000000;-0.0642000000000000;-0.0625000000000000;-0.0297000000000000;-0.0412000000000000;-0.0600000000000000;-0.0656000000000000;-0.0598000000000000;-0.0305000000000000;-0.0322000000000000;-0.0451000000000000;-0.0541000000000000;-0.0638000000000000];


%下面开始做测试数据的主成分坐标

[psd_test(:,1),freq_test]=pwelch(one_column(:,1));
norm_psd_test(:,1)=psd_test(:,1)/max(psd_test(:,1));
cut_num=floor(length(freq_test)*ratio_in_pi/pi);
freq_test=freq_test(1:cut_num,1);
norm_psd_test=norm_psd_test(1:cut_num,1);

norm_psd_test=norm_psd_test';
PCA_coord=norm_psd_test*[basis1,basis2];

%判断的标号
% judge_index1=[zeros(test_num/2,1),ones(test_num/2,1)];
% judge_index2=[ones(test_num/2,1),zeros(test_num/2,1)];
% judge_index=[judge_index1;judge_index2];
% y=[judge_index,PCA_coord];

y=PCA_coord;

end











