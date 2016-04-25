@import 'lib/MOM/primary.cps';
@import 'lib/metapolator/single-inheritance.cps';
@import 'lib/metapolator/weight.cps';
@import 'lib/metapolator/scale.cps';


/* set up some names */

center {
    penstroke: parent;
}

center > * {
    penstroke: parent:penstroke;
}

glyph {
    glyph: this;
}

p {
    contour: parent;
}

point > center, contour > p {
    /* TODO: Where's xTranslate used? */
    xTranslate: sidebearingLeftSummand;
}

glyph {
    width: baseNode:width * widthFactor + sidebearingLeftSummand + sidebearingRightSummand;
}
