function [Fxyz] = node_rearangement(Fxyzin)
ind = logical([0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   1   0   1
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   1   0   1
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   1   0   1
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   1   0   1
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   1   0   1
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   1   1
   0   1   1
   0   0   0
   0   1   1
   0   0   0
   0   0   0
   0   0   0
   0   1   1
   0   1   1
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0
   0   0   0]);

ind1 = ind(:,1); ind2 = ind(:,2); indb_extra = ind(:,3);
inds = [60    74
     1    75
    50    76
    29    70
    61    73
    30    71
    20   156
    64    72
    62    69
    21    68
    31    67
    89    65
    63    64
    93    66
    32    63
    65    59
    97    62
    33    58
    51    53
    95    61
    34    52
    91    60
     9   155
    98    57
    59    82
     6    47
    99    51
    96    56
     8   157
   103    46
    28    81
    49    94
    92    55
    88    54
     7    88
     2    50
    58   100
    27    93
   102    45
    84    87
    86    80
    94    49
    56   105
    26    99
    90    48
    78    92
   101    44
    83    86
    85    79
    55   110
    25   104
    77    98
    16   158
    17   109
     3    91
   100    43
    80    85
    76   103
    82    78
    54   114
    75    97
    24   108
    87    42
    73    90
    48   117
    57   113
    74   102
    79    84
    81    77
    71    96
    72   107
    53   116
    23   112
    69    89
    70   101
    66    83
    67    95
    68   106
    52   115
    22   111
   105   162
   106   163
   104   161
    35   146
   113   150
   130   141
   129   130
   128   118
   132   136
   131   124
    36   147
   114   151
   134   142
   133   131
   143     1
   141   119
   136   137
   118   148
   109   152
   135   125
   149     7
    37   143
   137   132
   115   149
   144     2
   138   138
   142   120
   162     8
     5   126
    15   144
    14   160
   139   133
    38   139
   116   145
   147     3
   145   121
   163     9
   140   127
   152    13
   107   164
    39   134
   117   140
   156    14
   148     4
   146   122
   164    10
    40   128
   119   135
     4    15
    11   123
   150    19
   154    20
   110   129
    41     5
   165    11
    12   159
   158    21
   161    16
    10    12
   120     6
   160    22
    13   153
   153    25
    47    17
   157    26
   108   165
   112    18
    46    23
   159    27
   127    24
    45    28
   155    31
   125    29
   151    30
    44    32
    19    33
   124    34
   126    37
    18   154
    43    36
   123    38
    42    35
   111    41
   122    40
   121    39];
ios = inds(:,1); ibs = inds(:,2);
ind5r = [3 4 5 1 2]';
% Fxyzin = [Fxyzin;zeros(5,3)]; % convert from 170x 3 tp 175x 3

% Fx = Fxyzin(:,1); Fy = Fxyzin(:,2); Fz = Fxyzin(:,3);
% Fx5 = Fx(ind1,:) + Fx(ind2,:);
% Fy5 = Fy(ind1,:) + Fy(ind2,:);
% Fz5 = Fz(ind1,:) + Fz(ind2,:);
% Fx(171:175,:) = Fx5(ind5r,:);
% Fy(171:175,:) = Fy5(ind5r,:);
% Fz(171:175,:) = Fz5(ind5r,:);
% Fxt = Fx(~indb_extra,:) ;
% Fyt = Fy(~indb_extra,:);
% Fzt = Fz(~indb_extra,:);

Fxyzin(161:165,:)=Fxyzin(161:165,:)+Fxyzin(166:170,:);
% Fxyzin(166:170,:) = [];
Fxyz = zeros(size(Fxyzin(1:165,:)));
Fxyz(ios,:) = Fxyzin(ibs,:);
