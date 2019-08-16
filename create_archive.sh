#!/bin/sh

PROJECT=scsnowman
TMP=/tmp
PWDF=`pwd`
LATESTRELEASEDATE=`git tag | sort -r | head -n 1`
RELEASEDATE=`git tag --points-at HEAD | sort -r | head -n 1`

if [ -z "$RELEASEDATE" ]; then
    RELEASEDATE="**not tagged**; later than $LATESTRELEASEDATE?"
fi

echo " * Create $PROJECT.zip ($RELEASEDATE)"
git archive --format=tar --prefix=$PROJECT/ HEAD | (cd $TMP && tar xf -)
rm $TMP/$PROJECT/.gitignore
rm $TMP/$PROJECT/create_archive.sh
#perl -pi.bak -e "s/\\\$RELEASEDATE/$RELEASEDATE/g" $TMP/$PROJECT/README.md
perl -pi.bak -0777 -e "s/## Samples.*## Requirements/## Requirements/gs" $TMP/$PROJECT/README.md
perl -pi.bak -0777 -e "s/## Version History.*Copyright/Copyright/gs" $TMP/$PROJECT/README.md
rm -f $TMP/$PROJECT/README.md.bak
ls $TMP/$PROJECT/*.tex | grep -v scsnowman.tex | grep -v scsnowman-sample.tex | xargs rm
ls $TMP/$PROJECT/*.pdf | grep -v scsnowman.pdf | grep -v scsnowman-sample.pdf | xargs rm

cd $TMP && zip -r $PWDF/$PROJECT.zip $PROJECT
rm -rf $TMP/$PROJECT
echo
echo " * Done: $PROJECT.zip ($RELEASEDATE)"
