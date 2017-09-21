use Mojolicious::Lite;

get '/date' => sub {
  my $c = shift;
  chomp(my $date = `date`);
  $c->render(json => {date => $date});
};

app->start;
