$levelset = new Guckets::Levelset();
$levelset->{author} = "Various";
$levelset->{name} = "Extra Levelset";

push(@{$levelset->{levels}}, "extra/$_") for (1..2);
