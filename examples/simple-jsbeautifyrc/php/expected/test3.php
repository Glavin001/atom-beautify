<?php

class Date
{
const FORMAT_FULL = 'full';
const FORMAT_LONG = 'long';
const FORMAT_MEDIUM = 'medium';
const FORMAT_SHORT = 'short';

public static function formatDate($time, $format)
{
    if(!$time || $time == null)
    {
        return '';
    }

    return $time;
}
}
