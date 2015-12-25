#! usr/bin/python
#! -*-coding: sjis*-
#author@Shoichi Otomo

import sys
reload(sys)
import pandas as pd
sys.setdefaultencoding('sjis')
argv = sys.argv
fname=str(argv[1])

pdata_pth = "../pdata/"
atch_pdata_pth = "../atch_pdata/"

def get_price_sheet(html):
    dfs = pd.read_html(html)
    dfs[0].to_csv(atch_pdata_pth+fname+'.csv',index=None,header=None)
    print dfs

if __name__ == '__main__':
#    html = open(pdata_pth+fname+'.html').read()
    html = open(pdata_pth+fname+'.html').read()
    get_price_sheet(html)
