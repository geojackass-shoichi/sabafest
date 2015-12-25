#! coding:utf-8
#!/bin/sh

#
# YYYY-MM-DD
#
STARTDATE=20150731
ENDDATE=20151225

CURRENTDATE=$STARTDATE
while [ 1 ] ; do

        # 処理
        #echo $CURRENTDATE
        echo "p"$CURRENTDATE
        python ../py_scripts/get_jafic_price_sheet.py "p"$CURRENTDATE
        if [ $CURRENTDATE = $ENDDATE ] ; then
                break
        fi

        CURRENTDATE=`date -d "$CURRENTDATE 1day" "+%Y%m%d"`
        #dir=`date -d "$CURRENTDATE today" "+%Y%m/L3SGSST_%Y%m%d.npy"`
done
