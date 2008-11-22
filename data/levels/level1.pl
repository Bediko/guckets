$level = new Guckets::Level();
$level->{author} = "Lars Stoltenow";
$level->{name} = "Level 1";

push(@{$level->{buckets}}, new Guckets::Bucket(0, 2));
push(@{$level->{buckets}}, new Guckets::Bucket(0, 3));

push(@{$level->{goals}}, Guckets::Goals::water(2, 1));

$level->auto_spare_bucket();
