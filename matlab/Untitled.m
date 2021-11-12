h1=zeros(50,1);
h1(1)=1;
h2=zeros(300,1);
h2(1)=0.5;
h3=zeros(300,1);
h3(1)=exp(0.5*1i);
h4=zeros(300,1);
h4(1:9)=0.8.^(1:9);
tx=string2bits('aatttaaa');
N_cp=20;
snr=inf;
sync_err=0 ;
funs=student_sols();
[q,w,e,r]=funs.sim_ofdm_known_channel(tx, h4, N_cp, snr, sync_err);
bits2string(q)