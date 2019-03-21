/*==================================================
project:       Create and organize all the indicators for the PEB
Author:        Andres Castaneda
Dependencies:  The World Bank
-----------------------------------------------------
Creation Date:    29 May 2018 - 12:05:37
Modification Date:
Do-file version:    01
References:
Output:             xlsx and dta
==================================================*/

/*==================================================
0: Program set up
==================================================*/
program define peb, rclass
version 13

syntax anything(name=indic id="indicator"), [ ///
indir(string)                  ///
outdir(string)                 ///
ttldir(string)                 ///
auxdir(string)                 ///
meeting(string)                ///
year(numlist)                  ///
VCdate(string)                 ///
trace(string)                  ///
load  shpupdate   force        ///
GROUPdata   pause              ///
COUNTry(passthru) povcalnet    ///
purge  update restore          ///
noEXcel                        ///
cpivin(numlist)                ///
]


gtsd check peb
if ("`pause'" == "pause") pause on
else                      pause off
