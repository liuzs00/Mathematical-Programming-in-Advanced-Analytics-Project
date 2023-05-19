Sets
  i     FareShare Index   /Glasgow, Edinburgh,Dundee, Aberdeen, Alness, Inverness, Portree, Mallaig, Fort_William, Ullapool, Fort_Augustus, Aviemore, Nairn, Dornoch, Wick, Thurso, Culloden, Strone, Lairg, Tain, Cromarty, Dingwall, Black_Isle, North_Uist/

  k     Trussell Trust T index /Broadford, Portree, Fort_William, Oban, Tiree, Barra, Benbecula, Dornoch, Invergordon, Beauly, Inverness, Nairn, Elgin/
  
  s     cases /1*14/


;


Alias(i,i_)
Alias(k,k_)


Parameter prob_const;
prob_const = 1/card(s) 

  table d(k,s) demand at k 
                   1     2     3     4     5     6     7     8     9     10     11    12    13    14
Broadford         103   206   103   103   103   103   103   103   103   103    103   103   103   103
Portree           203   203   406   203   203   203   203   203   203   203    203   203   203   203
Fort_William      492   492   492   984   492   492   492   492   492   492    492   492   492   492
Oban              715   715   715   715   1430  715   715   715   715   715    715   715   715   715
Tiree             178   178   178   178   178   356   178   178   178   178    178   178   178   178
Barra             293   293   293   293   293   293   586   293   293   293    293   293   293   293
Benbecula         340   340   340   340   340   340   340   680   340   340    340   340   340   340
Dornoch           126   126   126   126   126   126   126   126   252   126    126   126   126   126
Invergordon       126   126   126   126   126   126   126   126   126   252    126   126   126   126
Beauly            123   123   123   123   123   123   123   123   123   123    246   123   123   123
Inverness         4120  4120  4120  4120  4120  4120  4120  4120  4120  4120   4120  8240  4120  4120
Nairn             896   896   896   896   896   896   896   896   896   896    896   896   1792  896
Elgin             2201  2201  2201  2201  2201  2201  2201  2201  2201  2201   2201  2201  2201  4401
;


  table d_(k,s) demand at k 
                   1     2     
Broadford         103   103   
Portree           203   203   
Fort_William      492   492   
Oban              715   715   
Tiree             178   178    
Barra             293   293   
Benbecula         340   340   
Dornoch           126   126  
Invergordon       126   126   
Beauly            123   123  
Inverness         4120  8240  
Nairn             896   896   
Elgin             2201  2201  
;
   
   
   

  Parameter p(k) penalty at k
   /
   Broadford        50               
   Portree          50   
   Fort_William     50 
   Oban             50 
   Tiree            50
   Barra            50
   Benbecula        50
   Dornoch          50
   Invergordon      50
   Beauly           50      
   Inverness        50
   Nairn            50     
   Elgin            50   
   /;
   
Parameter p_const;
p_const = 50
   
  Parameter R(i) operation up cost at j
   /
   Glasgow           43526
   Edinburgh         43526
   Dundee            43526
   Aberdeen          43526
   Alness            43526
   Inverness         43526
   Portree           43526
   Mallaig           43526
   Fort_William      43526
   Ullapool          43526
   Fort_Augustus     43526
   Aviemore          43526
   Nairn             43526
   Dornoch           43526
   Wick              43526
   Thurso            43526
   Culloden          43526
   Strone            43526
   Lairg             43526
   Tain              43526
   Cromarty          43526
   Dingwall          43526
   Black_Isle        43526
   North_Uist        43526
   /;
Parameter R_const;
R_const = 43526


 Parameter a(i) supply at i
 /
   Glasgow          1599
   Edinburgh        1599
   Dundee           1599
   Aberdeen         1599
   Alness           1599
   Inverness        1599
   Portree          1599
   Mallaig          1599
   Fort_William     1599
   Ullapool         1599
   Fort_Augustus    1599
   Aviemore         1599
   Nairn            1599
   Dornoch          1599
   Wick             1599
   Thurso           1599
   Culloden         1599
   Strone           1599
   Lairg            1599
   Tain             1599
   Cromarty         1599
   Dingwall         1599
   Black_Isle       1599
   North_Uist       1599
 /;

Parameter a_const;
a_const = 1599

table tilde_dist(i,i_) distence from i to i_
                  Glasgow    Edinburgh      Dundee     Aberdeen       Alness      Inverness      Portree    Mallaig    Fort_William       Ullapool       Fort_Augustus      Aviemore       Nairn       Dornoch      Wick       Thurso     Culloden      Strone     Lairg      Tain      Cromarty      Dingwall      Black_Isle      North_Uist
Glasgow                0           74         121          209           251           222          321        244             102            254                 160           227         209          247       323          385          212         111       238       244            261          234              252            322
Edinburgh             74            0          62          156           231           160          273        204             141            256                 141           186         154          189       273          340          145         135       198       209            203          171              184            291
Dundee               121           62           0           97           186           124          235        167             130            235                 119           105         132          207       292          370          105         121       133       119            130           82               94            233
Aberdeen             209          156          97            0           193           129          307        261             184            197                 131           105          29          176       273          353          157         172       131        60             41           15               40            202
Alness               251          231         186          193             0            35          178        106             119             67                 124           156          81           51       122          206          120          62        32        28             27           23               23            155
Inverness            222          160         124          129            35             0          157         85              75            104                  62            57          34           58       160          240           20          82        29        35             35           18               29            169
Portree              321          273         235          307           178           157            0        100             165            195                 250           226         246          256       143          134          216         175       149       203            205          175              186             73
Mallaig              244          204         167          261           106            85          100          0              47            195                  75           122         187          205       286          343          177         179       188       208            237          147              173            223
Fort_William         102          141         130          184           119            75          165         47               0            115                  42            59         134          152       232          290           75         113        97       113            144           67               91            194
Ullapool             253          274         282          258           104            77          239        168             133              0                 113           155         169           63       163          251          109         107        70       111             69           55               71            147
Fort_Augustus        223          186         153          130           129            59          282        175              37            113                   0            70         129          114       208          288           57         134        63       145            115           96               96            246
Aviemore             224          195         153          133           101            37          266        224              64            155                  70             0          69          176       244          326           63         234       139       198            171          131              129            318
Nairn                210          162         121          106            54            26          233        206              95            169                 129            69           0          128       205          282           60         257       190        92             76           68               58            269
Dornoch              247          223         178          184            42            56          142         70             115             63                 114           176         128            0        99          170          110         141        94        74             73           61               64            153
Wick                 300          291         247          296            94           175          109        206             244            163                 208           244         205           99         0           82          225         262       224       202            168          153              158            273
Thurso               329          319         276          324           127           208           45        281             284            251                 288           326         282          170        82            0          292         396       326       284            251          236              238            358
Culloden             216          168         126          112            18            16          217        166             105            109                  57            63          60          110       225          292            0         176        92        81             84           70               60            301
Strone               140          174         224          239            97           103          264        165             150            107                 134           234         257          141       262          396          176           0       146       115             98           38               11            222
Lairg                227          192         147          135            33            71          201        224             120             70                  63           139         190           94       224          326           92         146         0        65            111           53               92            168
Tain                 261          226         182          172            74            64          231        252             180            111                 145           198          92           74       202          284           81         115        65         0             44           32               52            240
Cromarty             276          239         195          183            78            33          242        274             202             69                 115           171          76           73       168          251           84          98       111        44              0           26               34            234
Dingwall             254          218         174          161            37            20          233        265             178             55                  96           131          68           61       153          236           70          38        53        32             26            0               18            211
Black_Isle           249          212         167          154            54            38          239        266             178             71                  96           129          58           64       158          238           60          11        92        52             34           18                0            217
North_Uist           373          337         287          316            218           298         167        363             392            147                 246           318         269          153       273          358          301         222       168       240            234          211              217              0
;


table dist(i,k) distence from i to i_
                   Broadford       Portree      Fort_William        Oban      Tiree           Barra           Benbecula           Dornoch       Invergordon       Beauly      Inverness         Nairn        Elgin
Glasgow                 228           258               173         148        165             189                 280               231               259          188            223           217          254
Edinburgh               223           252               183         152        190             216                 300               191               220          153            170           108          144
Dundee                  232           261               192         175        184             208                 280               200               226          174            125            88          125
Aberdeen                316           344               254         218        249             273                 279               103                55          146            109            54           82
Alness                  163           193               149         231        194             221                 176                27                20           46             46            57           94
Inverness               114           144                99         137        178             202                 178                48                21           14              9            43           80
Portree                  28             0               149         232        168             109                  64               243               273          206            241           236          273
Mallaig                  64            96                27          84        155             156                 111               265               292          221            223           237          274
Fort_William             57            88                 0          68        112             136                 172               182               207          136            136           169          206
Ullapool                180           168               131         259        223             228                 183               144               146           87             77            88          131
Fort_Augustus           104           109                74         204        144             168                 156                87                79           37             52            58          103
Aviemore                213           229               130         217        174             199                 206                89                77           33             40            15           60
Nairn                   204           220               121         208        194             218                 191                63                42           19             22             0           45
Dornoch                 108           124               76          126        217             244                 199                 9                57           52             31            88          132
Wick                    163           179               131         181        276             303                 258               107                51          107             89           126          170
Thurso                  225           241               193         243        283             310                 265               169               111          169            150           188          232
Culloden                167           175               222         285        181             206                 179               130                23           14             10            46           94
Strone                  216           223               254         154        142             166                 190               195               174          165            162           198          246
Lairg                   211           218               157         215        221             248                 203                42                70           89             86           122          170
Tain                    226           233               187         240        207             234                 189                63                35           54             51            87          135
Cromarty                226           233               187         240        200             229                 184                63                35           54             51            87          135
Dingwall                206           213               157         213        185             221                 166                42                53           72             69           105          153
Black_Isle              205           212               157         213        188             221                 175                41                53           72             69           105          153
North_Uist               78            90               149         243        115              56                  11                20               128          137            134           170          218
;


table tilde_ferry(i,i_) distence from i to i_
                  Glasgow    Edinburgh      Dundee     Aberdeen       Alness     Inverness      Portree    Mallaig    Fort_William       Ullapool       Fort_Augustus      Aviemore       Nairn       Dornoch      Wick       Thurso     Culloden      Strone     Lairg      Tain      Cromarty      Dingwall      Black_Isle      North_Uist
Glasgow                0            0          0           0             0             0            1          0               0              0                   0             0           0            0          0            0            0           0         0         0            0            0              0              1
Edinburgh              0            0          0           0             0             0            1          0               0              0                   0             0           0            0          0            0            0           0         0         0            0            0              0              1
Dundee                 0            0          0           0             0             0            1          0               0              0                   0             0           0            0          0            0            0           0         0         0            0            0              0              1
Aberdeen               0            0          0           0             0             0            1          0               0              0                   0             0           0            0          0            0            0           0         0         0            0            0              0              1
Alness                 0            0          0           0             0             0            1          0               0              0                   0             0           0            0          0            0            0           0         0         0            0            0              0              1
Inverness              0            0          0           0             0             0            1          0               0              0                   0             0           0            0          0            0            0           0         0         0            0            0              0              1
Portree                1            1          1           1             1             1            0          1               1              1                   1             1           1            1          1            1            1           1         1         1            1            1              1              1
Mallaig                0            0          0           0             0             0            1          0               0              0                   0             0           0            0          0            0            0           0         0         0            0            0              0              1
Fort_William           0            0          0           0             0             0            1          0               0              0                   0             0           0            0          0            0            0           0         0         0            0            0              0              1
Ullapool               0            0          0           0             0             0            1          0               0              0                   0             0           0            0          0            0            0           0         0         0            0            0              0              1
Fort_Augustus          0            0          0           0             0             0            1          0               0              0                   0             0           0            0          0            0            0           0         0         0            0            0              0              1
Aviemore               0            0          0           0             0             0            1          0               0              0                   0             0           0            0          0            0            0           0         0         0            0            0              0              1        
Nairn                  0            0          0           0             0             0            1          0               0              0                   0             0           0            0          0            0            0           0         0         0            0            0              0              1
Dornoch                0            0          0           0             0             0            1          0               0              0                   0             0           0            0          0            0            0           0         0         0            0            0              0              1
Wick                   0            0          0           0             0             0            1          0               0              0                   0             0           0            0          0            0            0           0         0         0            0            0              0              1
Thurso                 0            0          0           0             0             0            1          0               0              0                   0             0           0            0          0            0            0           0         0         0            0            0              0              1
Culloden               0            0          0           0             0             0            1          0               0              0                   0             0           0            0          0            0            0           0         0         0            0            0              0              1       
Strone                 0            0          0           0             0             0            1          0               0              0                   0             0           0            0          0            0            0           0         0         0            0            0              0              1
Lairg                  0            0          0           0             0             0            1          0               0              0                   0             0           0            0          0            0            0           0         0         0            0            0              0              1
Tain                   0            0          0           0             0             0            1          0               0              0                   0             0           0            0          0            0            0           0         0         0            0            0              0              1
Cromarty               0            0          0           0             0             0            1          0               0              0                   0             0           0            0          0            0            0           0         0         0            0            0              0              1
Dingwall               0            0          0           0             0             0            1          0               0              0                   0             0           0            0          0            0            0           0         0         0            0            0              0              1
Black_Isle             0            0          0           0             0             0            1          0               0              0                   0             0           0            0          0            0            0           0         0         0            0            0              0              1
North_Uist             1            1          1           1             1             1            1          1               1              1                   1             1           1            1          1            1            1           1         1         1            1            1              1              0
;

table ferry(i,k) distence from i to i_
                   Broadford       Portree      Fort_William        Oban         Tiree        Barra           Benbecula           Dornoch       Invergordon       Beauly          Inverness         Nairn        Elgin
Glasgow                 1               1               0              0           1            1                1                  0                0              0               0                 0          0
Edinburgh               1               1               0              0           1            1                1                  0                0              0               0                 0          0
Dundee                  1               1               0              0           1            1                1                  0                0              0               0                 0          0
Aberdeen                1               1               0              0           1            1                1                  0                0              0               0                 0          0
Alness                  1               1               0              0           1            1                1                  0                0              0               0                 0          0
Inverness               1               1               0              0           1            1                1                  0                0              0               0                 0          0
Portree                 0               0               1              1           1            1                1                  1                1              1               1                 1          1
Mallaig                 1               1               0              0           1            1                1                  0                0              0               0                 0          0
Fort_William            1               1               0              0           1            1                1                  0                0              0               0                 0          0
Ullapool                1               1               0              0           1            1                1                  0                0              0               0                 0          0
Fort_Augustus           1               1               0              0           1            1                1                  0                0              0               0                 0          0
Aviemore                1               1               0              0           1            1                1                  0                0              0               0                 0          0
Nairn                   1               1               0              0           1            1                1                  0                0              0               0                 0          0
Dornoch                 1               1               0              0           1            1                1                  0                0              0               0                 0          0
Wick                    1               1               0              0           1            1                1                  0                0              0               0                 0          0
Thurso                  1               1               0              0           1            1                1                  0                0              0               0                 0          0
Culloden                1               1               0              0           1            1                1                  0                0              0               0                 0          0
Strone                  1               1               0              0           1            1                1                  0                0              0               0                 0          0
Lairg                   1               1               0              0           1            1                1                  0                0              0               0                 0          0
Tain                    1               1               0              0           1            1                1                  0                0              0               0                 0          0
Cromarty                1               1               0              0           1            1                1                  0                0              0               0                 0          0
Dingwall                1               1               0              0           1            1                1                  0                0              0               0                 0          0
Black_Isle              1               1               0              0           1            1                1                  0                0              0               0                 0          0
North_Uist              1               1               1              1           1            1                0                  1                1              1               1                 1          1
;


Parameter alpha alpha;  
alpha= 0.5;

Parameter epsilon    epsilon;          
epsilon=0.1;

Parameter fuel_eff ;
fuel_eff = 0.0737;

Parameter ferry_cost; 
ferry_cost = 73.50*2

Parameter van_hire_cost ;
van_hire_cost = 487.7;


* Calculated parameters

Parameter tilde_C(i,i_)  Cost of sending empty vehicle from FareShare centre i to FareShare centre i_;       
tilde_C(i,i_) =  fuel_eff * tilde_dist(i,i_) + ferry_cost*tilde_ferry(i,i_)+ van_hire_cost;


Parameter tilde_c_a(i,i_)    Additional cost per unit of shipping from centre i to centre i_;          
tilde_c_a(i,i_) = fuel_eff * tilde_dist(i,i_)*0.0025 ;

Parameter C(i,k)    Cost of sending empty vehicle from FareShare centre i to Trussell Trust centre k;          
C(i,k) = fuel_eff*dist(i,k) + ferry_cost*ferry(i,k) + van_hire_cost;

*C('Inverness','Inverness') = 0;
*C('Portree','Portree') = 0;
*C('Fort_William','Fort_William') = 0;


Parameter c_a(i,k)    Additional cost per unit of shipping from centre i to centre k;          
c_a(i,k) = fuel_eff*dist(i,k)*0.0025  ;


Parameter delta(k,s)    delta;          
delta(k,s) = alpha*d(k,s) ;

Parameter M   Big M;          
M=sum(i,a(i))  ;



 Variables
  f1           Total cost
  y(i)         Binary variable taking value 1 if centre is built and 0 otherwise
  tilde_x(i,i_,s)     Number of units shipped from FareShare centre i to FareShare centre i_
  x(i,k,s)      Number of units then shipped from FareShare centre i to Trussell Trust centre k
  tilde_b(i,i_,s)     Auxiliary binary variable for sending a vehicle using the delivery route from i to i_
  b(i,k,s)      Auxiliary binary variable for sending a vehicle using the delivery route from i to k
  u(k,s)         Auxiliary variable modelling unmet demand at Trussell Trust centre k
 

 
 Binary variable y(i),tilde_b(i,i_,s),b(i,k,s);
* integer variable tilde_x(i,i_,s),x(i,k,s), u(k,s);


 Equation
  obj1          m1 objective function
  Predistribution_Origin                   1 Predistribution Origin Constraints 
  Predistribution_Destination              2 Predistribution Destination Constraints
  Predistribution_Journey_Start_Up         3 Predistribution Journey Start Up Cost Constraints
  Supply                                   4 Supply Constraints  
  Total_Demand                             5 Total Demand Constraints
  Journey_Start_Up                         6 Journey Start Up Cost Constraints
  Minimum_Demand                           7 Minimum Demand Constraints
  Equity                                   8 Equity
  Non_Neg1                                 9 Non_Negativity
  Non_Neg2                                 9 Non_Negativity
  Non_Neg3                                 9 Non_Negativity
  Pre_Processing_1                         12 pre_processing
  ss                                             sds
  ;



obj1..         f1 =e= sum((s),(sum((i_,i),(tilde_x(i,i_,s)*tilde_c_a(i,i_) + tilde_b(i,i_,s)*tilde_C(i,i_)))+sum((k,i),(x(i,k,s)*c_a(i,k)+b(i,k,s)*C(i,k)))+sum((k),u(k,s)*p_const) )*prob_const)+ sum(i,y(i)*R_const) ;  
Predistribution_Origin(i,s)..       sum((i_),tilde_x(i,i_,s)) =L= a_const*y(i) ;  
Predistribution_Destination(i,s)..       sum((i_),tilde_x(i_,i,s)) =L= M*y(i)  ; 
Predistribution_Journey_Start_Up(i,i_,s)..  tilde_x(i,i_,s)=L= M*tilde_b(i,i_,s)  ; 
Supply(i,s)..    sum(k,x(i,k,s))+sum(i_,tilde_x(i,i_,s))=L= a_const*y(i)+sum(i_,tilde_x(i_,i,s)) ;  
Total_Demand(k,s)..    sum(i,x(i,k,s))+u(k,s) =e= d(k,s) ; 
Journey_Start_Up(i,k,s)..    x(i,k,s)=L= M*b(i,k,s) ; 
Minimum_Demand(k,s)..  sum(i,x(i,k,s)) =G= delta(k,s) ;  
Equity(k,k_,s)..   (u(k,s)/d(k,s))-(u(k_,s)/d(k_,s)) =L= epsilon;
Non_Neg1(i,i_,s).. tilde_x(i,i_,s) =G= 0;
Non_Neg2(i,k,s).. x(i,k,s) =G= 0;
Non_Neg3(k,s).. u(k,s) =G= 0;
Pre_Processing_1..   sum(i$(ord(i)<=5),y(i)) =e= 5 ;
ss..                 sum(i,y(i)) =e=5 ;
Option optcr = 0.01;                       
Model m1 /all/;
Solve m1 using mip minimizing f1;

Display f1.l, y.l, tilde_x.l, x.l, tilde_b.l, b.l, u.l ;