// package com.orcmid.llc.pa.pn;

public interface Num
{

    public Num next();

    public Num pred();

    public boolean isOrigin();
}

/* 0.01 (band) sent by band@acm.org on 2004-05-22-1846 -0700
        This version reflects an interesting and very instructive
        misunderstanding of what I had in mind.
   0.02 (orcmid)I have changed the package identification for placement in 
        a tree that I will also place on the web.  I have also changed the
        methods to produce (other) Num interfaces to make clear what I had
        in mind.  I also don't want to use "0" for the origin, so I have
        renamed that method.  The idea is to capture the essence of natural
        numbers for counting and have this be a way of accessing their
        computational manifestations in Java.  There is more to say here,
        but it needs to be in separate notes, with the Java part kept as
        Spartan as possible.  The package declaration is buried in a comment
        because of problems of developing a package before there is one, and
        my own ignorance around getting classpath working properly.
   $Ηeader: /Java2/com/orcmid/llc/pa/pn/Num.java 2     04-05-23 9:50 Orcmid $
   */

/* $Header: /MiserCompagno/astraendo/A040601h.java 2     04-06-04 11:20 Orcmid $
   */