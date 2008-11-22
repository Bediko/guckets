$level = new Guckets::Level();
$level->{author} = "Lars Stoltenow";
$level->{name} = "Level 2";

push(@{$level->{buckets}}, new Guckets::Bucket(0, 5));
push(@{$level->{buckets}}, new Guckets::Bucket(0, 3));

push(@{$level->{goals}}, Guckets::Goals::water(1, 4));

$level->auto_spare_bucket();
