#!/bin/bash
BASEDIR=$PWD
set +x
. .colors.sh
set -e
if [ ! -f Output/random_property.dbf ]; then
    echo -e "$(c R)[error] The model has not generated the output Output/random_property.dbf"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output Output/random_property.dbf"
    mv Output/random_property.dbf ${OUTPUTS1}
fi
if [ ! -f Output/random_property.shp ]; then
    echo -e "$(c R)[error] The model has not generated the output Output/random_property.shp"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output Output/random_property.shp"
    mv Output/random_property.shp ${OUTPUTS2}
fi
if [ ! -f Output/random_property.cpg ]; then
    echo -e "$(c R)[error] The model has not generated the output Output/random_property.cpg"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output Output/random_property.cpg"
    mv Output/random_property.cpg ${OUTPUTS3}
fi
if [ ! -f Output/random_property.prj ]; then
    echo -e "$(c R)[error] The model has not generated the output Output/random_property.prj"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output Output/random_property.prj"
    mv Output/random_property.prj ${OUTPUTS4}
fi
if [ ! -f Output/random_property.shx ]; then
    echo -e "$(c R)[error] The model has not generated the output Output/random_property.shx"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output Output/random_property.shx"
    mv Output/random_property.shx ${OUTPUTS5}
fi
