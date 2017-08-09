x=zeros(18,4);
%% data given
x(1,1)=0.5;x(1,2)=0.6;x(1,3)=0.65;x(1,4)=0.7;
x(2,1)=0.6316;x(2,2)=0.6842;x(2,3)=0.6842;x(2,4)=0.7368;
x(3,1)=0.6111;x(3,2)=0.6111;x(3,3)=0.7222;x(3,4)=0.7778;
x(4,1)=0.4762;x(4,2)=0.7143;x(4,3)=0.7143;x(4,4)=0.7619;
x(5,1)=0.7895;x(5,2)=0.9474;x(5,3)=0.9474;x(5,4)=1;
x(6,1)=0.2363;x(6,2)=0.2632;x(6,3)=0.2632;x(6,4)=0.4737;
x(7,1)=0.7619;x(7,2)=0.8095;x(7,3)=0.8095;x(7,4)=0.8571;
x(8,1)=0.5;x(8,2)=0.6667;x(8,3)=0.6667;x(8,4)=0.7222;
x(9,1)=0.8947;x(9,2)=0.9474;x(9,3)=0.9474;x(9,4)=1;
x(10,1)=0.7143;x(10,2)=0.8095;x(10,3)=0.8571;x(10,4)=0.9048;
x(11,1)=0.7778;x(11,2)=0.8333;x(11,3)=0.7222;x(11,4)=0.8889;
x(12,1)=0.619;x(12,2)=0.7143;x(12,3)=0.7143;x(12,4)=0.9048;
x(13,1)=0.4348;x(13,2)=0.3913;x(13,3)=0.2609;x(13,4)=0.5217;
x(14,1)=0.381;x(14,2)=0.5238;x(14,3)=0.5238;x(14,4)=0.619;
x(15,1)=0.4737;x(15,2)=0.6316;x(15,3)=0.6316;x(15,4)=0.7895;
x(16,1)=0.5;x(16,2)=0.6;x(16,3)=0.65;x(16,4)=0.7;
x(17,1)=0.619;x(17,2)=0.8095;x(17,3)=0.8571;x(17,4)=0.9048;
x(18,1)=0.9048;x(18,2)=0.9048;x(18,3)=0.7619;x(18,4)=0.9524;

g2 = cell(18,1);
g2{1} = 'airport\_inside'; g2{2} = 'backery'; g2{3}= 'bar'; g2{4} = 'bedroom';
g2{5} = 'casino'; g2{6} = 'deli'; g2{7} = 'dentaloffice'; g2{8} = 'diniing\_room';
g2{9} = 'florist'; g2{10} = 'grocerystore'; g2{11} = 'gym'; g2{12} = 'kitchen';
g2{13} = 'museum'; g2{14} = 'office'; g2{15} = 'operating\_room'; g2{16} = 'restaurant';
g2{17} = 'subway'; g2{18} = 'winecellar';
%figure,
%subplot(211)

bar(x,1); 
xlim([0,19]);

set(gca,'XTickLabel',(g2),'FontSize',8);
%xticklabel_rotate([1:20],45,(g1),'interpreter','none');
xticklabel_rotate([1:18],45,(g2),'FontSize',8);
%set(gca, 'Fontname', 'Times newman', 'Fontsize', 20);
ylim([0.2,1]);
legend('Mean','VLAD','FV','VSAD');
ylabel('Accuracy');
xlabel('Scene67')


subplot(211)


bar(x,1); 
xlim([0,19]);

set(gca,'XTickLabel',(g2),'FontSize',8);
%xticklabel_rotate([1:20],45,(g1),'interpreter','none');
xticklabel_rotate([1:18],45,(g2),'FontSize',8);
%set(gca, 'Fontname', 'Times newman', 'Fontsize', 20);
ylim([0.2,1]);
legend('Average Pooling','VLAD','FV','VSAD');
ylabel('Accuracy');
xlabel('MIT Indoor67')



x=zeros(18,4);
%% data given
x(1,1)=0.34;x(1,2)=0.44;x(1,3)=0.46;x(1,4)=0.56;
x(2,1)=0.56;x(2,2)=0.72;x(2,3)=0.68;x(2,4)=0.74;
x(3,1)=0.2;x(3,2)=0.16;x(3,3)=0.16;x(3,4)=0.22;
x(4,1)=0.66;x(4,2)=0.76;x(4,3)=0.74;x(4,4)=0.8;
x(5,1)=0.2;x(5,2)=0.34;x(5,3)=0.26;x(5,4)=0.46;
x(6,1)=0.68;x(6,2)=0.72;x(6,3)=0.7;x(6,4)=0.76;
x(7,1)=0.64;x(7,2)=0.54;x(7,3)=0.62;x(7,4)=0.66;
x(8,1)=0.4;x(8,2)=0.5;x(8,3)=0.48;x(8,4)=0.6;
x(9,1)=0.54;x(9,2)=0.7;x(9,3)=0.68;x(9,4)=0.74;
x(10,1)=0.58;x(10,2)=0.58;x(10,3)=0.6;x(10,4)=0.68;
x(11,1)=0.52;x(11,2)=0.68;x(11,3)=0.68;x(11,4)=0.82;
x(12,1)=0.76;x(12,2)=0.92;x(12,3)=0.94;x(12,4)=0.98;
x(13,1)=0.28;x(13,2)=0.46;x(13,3)=0.42;x(13,4)=0.5;
x(14,1)=0.38;x(14,2)=0.46;x(14,3)=0.5;x(14,4)=0.56;
x(15,1)=0.58;x(15,2)=0.8;x(15,3)=0.78;x(15,4)=0.84;
x(16,1)=0.36;x(16,2)=0.48;x(16,3)=0.5;x(16,4)=0.62;
x(17,1)=0.68;x(17,2)=0.78;x(17,3)=0.78;x(17,4)=0.84;
x(18,1)=0.4;x(18,2)=0.62;x(18,3)=0.6;x(18,4)=0.66;

g2 = cell(18,1);
g2{1} = 'clothing\_store'; g2{2} = 'computer\_room'; g2{3}= 'construction\_site'; g2{4} = 'courtroom';
g2{5} = 'countryard'; g2{6} = 'cubicle\_office'; g2{7} = 'driveway'; g2{8} = 'driving\_range\_outdoor';
g2{9} = 'excavation'; g2{10} = 'fire\_station'; g2{11} = 'fishpond'; g2{12} = 'florist\_shop\_indoor';
g2{13} = 'food\_court'; g2{14} = 'forest\_broadleaf'; g2{15} = 'fountain'; g2{16} = 'general\_store\_outdoor';
g2{17} = 'greenhouse\_indoor'; g2{18} = 'hangar\_indoor';
%figure,
subplot(212)
bar(x,1); 
xlim([0,19]);

set(gca,'XTickLabel',(g2),'FontSize',8);
%xticklabel_rotate([1:20],45,(g1),'interpreter','none');
xticklabel_rotate([1:18],45,(g2),'FontSize',8);
%set(gca, 'Fontname', 'Times newman', 'Fontsize', 20);
ylim([0.1,1]);
legend('Average Pooling','VLAD','FV','VSAD');
ylabel('Accuracy');
xlabel('SUN397')
