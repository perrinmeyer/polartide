#!/bin/bash

DATE=`date +"%s"`
sleep 3


cd /Users/perrin/polartide/processing/php2osc_v01/application.macosx/php2osc_v01.app/Contents/MacOS
nohup ./JavaApplicationStub > /Users/perrin/JavaApplicationStub.out 2> /Users/perrin/JavaApplicationStub.err < /dev/null &

#cd /Users/rama/Documents/_code/polartide/processing/php2osc_v01/application.macosx/php2osc_v01.app/Contents/MacOS
#nohup ./JavaApplicationStub > /Users/rama/Documents/_code/JavaApplicationStub.out 2> /Users/rama/Documents/_code/JavaApplicationStub.err < /dev/null &

sleep 10

cd /Users/perrin/polartide/scripts
nohup ./polartide_startup.sh > /Users/perrin/polartide_pd.out 2> /Users/perrin/polartide_pd.err < /dev/null &

#cd /Users/rama/Documents/_code/polartide/scripts
#nohup ./polartide_startup.sh > /Users/rama/Documents/_code/polartide_pd.out 2> /Users/rama/Documents/_code/polartide_pd.err < /dev/null &

sleep 20

